package team.ape.epcot.dao;

import team.ape.epcot.po.UserGameDlcAssetPo;

import java.sql.SQLException;
import java.util.List;

public class UserGameDlcAssetDao extends Dao<UserGameDlcAssetPo> {
    public UserGameDlcAssetDao() {
        super(UserGameDlcAssetPo.class);
    }

    public List<UserGameDlcAssetPo> getsByUserId(long userId) throws SQLException {
        return getsBy("fr_user_id", userId);
    }

    @Override
    protected String getTableName() {
        return "tb_user_game_dlc_asset";
    }
}
