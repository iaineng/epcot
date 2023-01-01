package team.ape.epcot.service;

import lombok.SneakyThrows;
import team.ape.epcot.dao.UserDao;
import team.ape.epcot.dto.UserRegisterParameterDto;
import team.ape.epcot.po.UserPo;
import team.ape.epcot.vo.UserSignUpVo;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserService extends Service {
    private final UserDao userDao = new UserDao();

    @SneakyThrows({ParseException.class})
    public UserSignUpVo register(UserRegisterParameterDto param) throws SQLException {
        UserPo user = new UserPo();
        user.setUsername(param.getUsername());
        user.setNickname(param.getNickname());
        user.setPassword(param.getPassword());
        user.setEmail(param.getEmail());
        user.setAvatarUrl(param.getAvatarUrl());
        user.setAddress(param.getAddress());
        user.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(param.getBirthdayYear() + "-" + param.getBirthdayMonth() + "-" + param.getBirthdayDay()));
        user.setCreatedAt(new Date());

        UserSignUpVo vo = new UserSignUpVo();
        vo.setRegistering(true);
        vo.setRegistered(false);

        if (userDao.getByUsername(param.getUsername()) != null) {
            vo.setFailReason("用户名已存在");
            return vo;
        }

        if (userDao.insert(user) <= 0) {
            vo.setFailReason("注册失败");
            return vo;
        }

        vo.setRegistered(true);
        return vo;
    }

    @Override
    public void close() throws SQLException {
        userDao.close();
    }
}
