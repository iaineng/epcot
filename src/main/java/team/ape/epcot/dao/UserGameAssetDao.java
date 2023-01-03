package team.ape.epcot.dao;

import team.ape.epcot.po.UserGameAssetPo;

import java.sql.SQLException;
import java.util.List;

public class UserGameAssetDao extends Dao<UserGameAssetPo> {
    public UserGameAssetDao() {
        super(UserGameAssetPo.class);
    }

    public List<UserGameAssetPo> getsByUserId(long userId) throws SQLException {
        return getsBy("fr_user_id", userId);
    }

    @Override
    protected String getTableName() {
        return "tb_user_game_asset";
    }
}