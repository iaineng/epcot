package team.ape.epcot.dao;

import team.ape.epcot.po.GameDlcPo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class GameDlcDao extends BaseDao {
    public GameDlcPo getGameDlcById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_game_dlc WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractGameDlc(statement);
        }
    }

    public GameDlcPo getGameDlcByTitle(String title) throws SQLException {
        String sql = "SELECT * FROM tb_game_dlc WHERE title = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, title);
            return extractGameDlc(statement);
        }
    }

    public List<GameDlcPo> getAllGameDlcs() throws SQLException {
        String sql = "SELECT * FROM tb_game_dlc WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery()) {
            List<GameDlcPo> gameDlcs = new ArrayList<>();
            while (resultSet.next()) {
                gameDlcs.add(extractGameDlc(resultSet));
            }
            return gameDlcs;
        }
    }

    public int insertGameDlc(GameDlcPo gameDlc) throws SQLException {
        String sql = "INSERT INTO tb_game_dlc (fr_game_id, title, description, price, created_at) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyGameDlc(gameDlc, statement);
            statement.setTimestamp(5, new Timestamp(gameDlc.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void updateGameDlc(GameDlcPo gameDlc) throws SQLException {
        String sql = "UPDATE tb_game_dlc SET fr_game_id = ?, title = ?, description = ?, price = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyGameDlc(gameDlc, statement);
            statement.setLong(5, gameDlc.getId());
            statement.executeUpdate();
        }
    }

    public void deleteGameDlc(long id) throws SQLException {
        String sql = "UPDATE tb_game_dlc SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            statement.setLong(2, id);
            statement.executeUpdate();
        }
    }

    private void applyGameDlc(GameDlcPo gameDlc, PreparedStatement statement) throws SQLException {
        statement.setLong(1, gameDlc.getGameId());
        statement.setString(2, gameDlc.getTitle());
        statement.setString(3, gameDlc.getDescription());
        statement.setBigDecimal(4, gameDlc.getPrice());
    }

    private GameDlcPo extractGameDlc(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return extractGameDlc(resultSet);
            }
            return null;
        }
    }

    private GameDlcPo extractGameDlc(ResultSet resultSet) throws SQLException {
        GameDlcPo gameDlc = new GameDlcPo();
        gameDlc.setId(resultSet.getLong("id"));
        gameDlc.setGameId(resultSet.getLong("fr_game_id"));
        gameDlc.setTitle(resultSet.getString("title"));
        gameDlc.setDescription(resultSet.getString("description"));
        gameDlc.setPrice(resultSet.getBigDecimal("price"));
        gameDlc.setCreatedAt(resultSet.getTimestamp("created_at"));
        gameDlc.setDeletedAt(resultSet.getTimestamp("deleted_at"));
        return gameDlc;
    }
}