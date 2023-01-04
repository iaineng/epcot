package team.ape.epcot.dao;

import team.ape.epcot.po.UserWishListPo;

import java.sql.SQLException;
import java.util.List;

public class UserWishListDao extends Dao<UserWishListPo> {
    public UserWishListDao() {
        super(UserWishListPo.class);
    }

    public List<UserWishListPo> getsByUserId(long userId) throws SQLException {
        return getsBy("fr_user_id", userId);
    }

    public int deleteByUserIdAndGameId(long userId, long gameId) throws SQLException {
        return deleteBy(new String[]{"fr_user_id", "fr_game_id"}, new Long[]{userId, gameId});
    }

    @Override
    protected String getTableName() {
        return "tb_user_wish_list";
    }
}
