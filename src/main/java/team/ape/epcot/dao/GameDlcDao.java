package team.ape.epcot.dao;

import team.ape.epcot.po.GameDlcPo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class GameDlcDao extends Dao<GameDlcPo> {
    public GameDlcDao() {
        super(GameDlcPo.class);
    }

    public GameDlcPo getByTitle(String title) throws SQLException {
        String sql = "SELECT * FROM tb_game_dlc WHERE title = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, title);
            return extract(statement);
        }
    }

    @Override
    protected String getTableName() {
        return "tb_game_dlc";
    }
}