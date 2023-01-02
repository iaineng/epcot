package team.ape.epcot.dao;

import team.ape.epcot.po.GamePo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
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
        String sql = "SELECT * FROM tb_game WHERE title = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, title);
            return extract(statement);
        }
    }

    public List<GamePo> searchByTitle(String title) throws SQLException {
        String sql = "SELECT * FROM tb_game WHERE title LIKE ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, "%" + title + "%");
            return extractAll(statement);
        }
    }
}