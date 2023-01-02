package team.ape.epcot.dao;

import team.ape.epcot.po.UserTokenPo;

import java.sql.SQLException;

public class UserTokenDao extends Dao<UserTokenPo> {
    public UserTokenDao() {
        super(UserTokenPo.class);
    }

    @Override
    protected String getTableName() {
        return "tb_user_token";
    }

    public UserTokenPo getByToken(String token) throws SQLException {
        return getBy("token", token);
    }
}
