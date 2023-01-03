package team.ape.epcot.service;

import lombok.SneakyThrows;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.RandomStringUtils;
import team.ape.epcot.dao.UserDao;
import team.ape.epcot.dao.UserGameAssetDao;
import team.ape.epcot.dao.UserGameDlcAssetDao;
import team.ape.epcot.dao.UserTokenDao;
import team.ape.epcot.dto.UserSignUpParameterDto;
import team.ape.epcot.po.UserGameAssetPo;
import team.ape.epcot.po.UserGameDlcAssetPo;
import team.ape.epcot.po.UserPo;
import team.ape.epcot.po.UserTokenPo;
import team.ape.epcot.vo.UserSignInResultVo;
import team.ape.epcot.vo.UserSignUpResultVo;
import team.ape.epcot.entity.UserVoEntity;

import javax.servlet.http.Cookie;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class UserService extends Service {
    private final UserDao userDao = new UserDao();
    private final UserTokenDao userTokenDao = new UserTokenDao();
    private final UserGameAssetDao userGameAssetDao = new UserGameAssetDao();
    private final UserGameDlcAssetDao userGameDlcAssetDao = new UserGameDlcAssetDao();

    @SneakyThrows({ParseException.class})
    public UserSignUpResultVo signUp(UserSignUpParameterDto param) throws SQLException {
        UserPo user = new UserPo();
        user.setUsername(param.getUsername());
        user.setNickname(param.getNickname());
        user.setPassword(param.getPassword());
        user.setEmail(param.getEmail());
        user.setAvatarUrl(param.getAvatarUrl());
        user.setAddress(param.getAddress());
        user.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(param.getBirthdayYear() + "-" + param.getBirthdayMonth() + "-" + param.getBirthdayDay()));
        user.setCreatedAt(new Date());

        UserSignUpResultVo vo = new UserSignUpResultVo();
        vo.setSucceeded(false);

        if (userDao.getByUsername(param.getUsername()) != null) {
            vo.setFailReason("用户名已存在");
            return vo;
        }

        if (userDao.getByEmail(param.getEmail()) != null) {
            vo.setFailReason("邮箱已存在");
            return vo;
        }

        if (userDao.insert(user) <= 0) {
            vo.setFailReason("注册失败");
            return vo;
        }

        vo.setSucceeded(true);
        return vo;
    }

    public UserSignInResultVo signIn(String email, String password) throws SQLException {
        UserSignInResultVo vo = new UserSignInResultVo();
        vo.setSucceeded(false);

        UserPo user = userDao.getByEmail(email);
        if (user == null) {
            vo.setFailReason("邮箱不存在");
            return vo;
        }

        if (!user.getPassword().equals(password)) {
            vo.setFailReason("密码错误");
            return vo;
        }

        vo.setSucceeded(true);

        String token;
        do {
            token = DigestUtils.sha512Hex(
                    user.getId() +
                            user.getEmail() +
                            user.getUsername() +
                            user.getPassword() +
                            System.currentTimeMillis() +
                            RandomStringUtils.randomAscii(32));
        } while (userTokenDao.getByToken(token) != null);

        UserTokenPo userToken = new UserTokenPo();
        userToken.setUserId(user.getId());
        userToken.setExpiredAt(new Date(System.currentTimeMillis() + 1000 * 60 * 60 * 24));
        userToken.setToken(token);

        userTokenDao.insert(userToken);

        vo.setToken(token);
        return vo;
    }

    public UserVoEntity getUser(String token) throws SQLException {
        UserTokenPo userTokenPo = userTokenDao.getByToken(token);
        if (userTokenPo == null) {
            return null;
        }
        if (userTokenPo.getExpiredAt().before(new Date())) {
            return null;
        }
        if (userTokenPo.isDisabled()) {
            return null;
        }

        UserPo userPo = userDao.getById(userTokenPo.getUserId());
        if (userPo == null) {
            return null;
        }

        List<UserGameAssetPo> userGameAssetPos = userGameAssetDao.getsByUserId(userPo.getId());
        List<Long> ownedGameIds = userGameAssetPos.stream().map(UserGameAssetPo::getGameId).collect(Collectors.toList());

        List<UserGameDlcAssetPo> userGameDlcAssetPos = userGameDlcAssetDao.getsByUserId(userPo.getId());
        List<Long> ownedGameDlcIds = userGameDlcAssetPos.stream().map(UserGameDlcAssetPo::getGameDlcId).collect(Collectors.toList());

        UserVoEntity vo = new UserVoEntity();
        vo.setUsername(userPo.getUsername());
        vo.setNickname(userPo.getNickname());
        vo.setEmail(userPo.getEmail());
        vo.setAddress(userPo.getAddress());
        vo.setOwnedDlcIds(ownedGameIds);
        vo.setOwnedGameIds(ownedGameDlcIds);

        return vo;
    }

    public UserVoEntity getUser(Cookie[] cookies) throws SQLException {
        if (cookies == null) {
            return null;
        }

        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("token")) {
                return getUser(cookie.getValue());
            }
        }

        return null;
    }

    @Override
    public void close() throws SQLException {
        userDao.close();
        userTokenDao.close();
        userGameAssetDao.close();
        userGameDlcAssetDao.close();
    }
}
