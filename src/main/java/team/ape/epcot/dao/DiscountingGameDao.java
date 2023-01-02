package team.ape.epcot.dao;

import team.ape.epcot.po.DiscountingGamePo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DiscountingGameDao extends Dao<DiscountingGamePo> {
    public DiscountingGameDao() {
        super(DiscountingGamePo.class);
    }

    public DiscountingGamePo getByGameId(long gameId) throws SQLException {
        String sql = "SELECT * FROM tb_discounting_game WHERE fr_game_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, gameId);
            return extract(statement);
        }
    }

    @Override
    protected String getTableName() {
        return "tb_discounting_game";
    }
}