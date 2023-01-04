package team.ape.epcot.dao;

import team.ape.epcot.po.GameDlcPo;
import team.ape.epcot.po.GamePo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GameDlcDao extends Dao<GameDlcPo> {
    public GameDlcDao() {
        super(GameDlcPo.class);
    }

    public GameDlcPo getByTitle(String title) throws SQLException {
        return getBy("title", title);
    }

    public List<GameDlcPo> getsByTitles(List<String> titles) throws SQLException {
        List<GameDlcPo> dlcPos = new ArrayList<>();
        for (String title : titles) {
            dlcPos.add(getByTitle(title));
        }
        return dlcPos;
    }

    public List<GameDlcPo> getsByGameId(long gameId) throws SQLException {
        return getsBy("fr_game_id", gameId);
    }

    @Override
    protected String getTableName() {
        return "tb_game_dlc";
    }
}