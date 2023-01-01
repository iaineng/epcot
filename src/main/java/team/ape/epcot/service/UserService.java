package team.ape.epcot.service;

import team.ape.epcot.dao.UserDao;
import team.ape.epcot.dto.UserRegisterParameterDto;
import team.ape.epcot.po.UserPo;
import team.ape.epcot.vo.UserRegisterVo;

import java.sql.SQLException;

public class UserService extends Service {
    private final UserDao userDao = new UserDao();

    public UserRegisterVo register(UserRegisterParameterDto param) throws SQLException {
        UserPo user = new UserPo();
        user.setUsername(param.getUsername());
        user.setNickname(param.getNickname());
        user.setPassword(param.getPassword());
        user.setEmail(param.getEmail());
        user.setAvatarUrl(param.getAvatarUrl());
        user.setAddress(param.getAddress());
        user.setBirthday(param.getBirthday());

        UserRegisterVo vo = new UserRegisterVo();
        vo.setRegistering(true);
        vo.setRegistered(false);

        if (userDao.getUserByUsername(param.getUsername()) != null) {
            vo.setFailReason("用户名已存在");
            return vo;
        }

        if (userDao.insertUser(user) <= 0) {
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
