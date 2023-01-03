package team.ape.epcot.dao;

import team.ape.epcot.po.PreorderingGamePo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PreorderingGameDao extends Dao<PreorderingGamePo> {
    public PreorderingGameDao() {
        super(PreorderingGamePo.class);
    }

    public PreorderingGamePo getByGameId(long gameId) throws SQLException {
        return getBy("fr_game_id", gameId);
    }

    @Override
    protected String getTableName() {
        return "tb_preordering_game";
    }
}