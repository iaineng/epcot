package team.ape.epcot.dao;

import team.ape.epcot.po.GameDlcPo;

import java.sql.SQLException;
import java.util.List;

public class GameDlcDao extends Dao<GameDlcPo> {
    public GameDlcDao() {
        super(GameDlcPo.class);
    }

    public GameDlcPo getByTitle(String title) throws SQLException {
        return getBy("title", title);
    }

    public List<GameDlcPo> getsByGameId(long gameId) throws SQLException {
        return getsBy("fr_game_id", gameId);
    }

    @Override
    protected String getTableName() {
        return "tb_game_dlc";
    }
}