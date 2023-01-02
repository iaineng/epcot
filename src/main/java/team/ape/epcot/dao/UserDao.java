package team.ape.epcot.dao;

import team.ape.epcot.po.UserPo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao extends Dao<UserPo> {
    public UserDao() {
        super(UserPo.class);
    }

    @Override
    protected String getTableName() {
        return "tb_user";
    }

    public UserPo getByUsername(String username) throws SQLException {
        return getBy("username", username);
    }

    public UserPo getByEmail(String email) throws SQLException {
        return getBy("email", email);
    }
}
