package team.ape.epcot.dao;

import team.ape.epcot.po.DiscountingGamePo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DiscountingGameDao extends Dao<DiscountingGamePo> {
    public DiscountingGameDao() {
        super(DiscountingGamePo.class);
    }

    public DiscountingGamePo getByGameId(long gameId) throws SQLException {
        return getBy("fr_game_id", gameId);
    }

    @Override
    protected String getTableName() {
        return "tb_discounting_game";
    }
}