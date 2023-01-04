package team.ape.epcot.dao;

import team.ape.epcot.po.UserCartPo;

import java.sql.SQLException;
import java.util.List;

public class UserCartDao extends Dao<UserCartPo> {
    public UserCartDao() {
        super(UserCartPo.class);
    }

    public List<UserCartPo> getsByUserId(long userId) throws SQLException {
        return getsBy("fr_user_id", userId);
    }

    public int deleteByUserIdAndGameId(long userId, long gameId) throws SQLException {
        return deleteBy(new String[]{"fr_user_id", "fr_game_id"}, new Long[]{userId, gameId});
    }

    @Override
    protected String getTableName() {
        return "tb_user_cart";
    }
}