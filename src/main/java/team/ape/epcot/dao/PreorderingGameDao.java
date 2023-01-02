package team.ape.epcot.dao;

import team.ape.epcot.po.PreorderingGamePo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PreorderingGameDao extends Dao<PreorderingGamePo> {
    public PreorderingGameDao() {
        super(PreorderingGamePo.class);
    }

    public PreorderingGamePo getByGameId(long gameId) throws SQLException {
        String sql = "SELECT * FROM tb_preordering_game WHERE fr_game_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, gameId);
            return extract(statement);
        }
    }

    @Override
    protected String getTableName() {
        return "tb_preordering_game";
    }
}