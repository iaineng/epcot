package team.ape.epcot.dao;

import team.ape.epcot.po.GamePo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GameDao extends Dao<GamePo> {
    public GameDao() {
        super(GamePo.class);
    }

    @Override
    protected String getTableName() {
        return "tb_game";
    }

    public GamePo getByTitle(String title) throws SQLException {
        return getBy("title", title);
    }

    public List<GamePo> getsByTitles(List<String> titles) throws SQLException {
        List<GamePo> gamePos = new ArrayList<>();
        for (String title : titles) {
            gamePos.add(getByTitle(title));
        }
        return gamePos;
    }
}