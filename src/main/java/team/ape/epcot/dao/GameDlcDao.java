package team.ape.epcot.dao;

import team.ape.epcot.po.GameDlcPo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class GameDlcDao extends Dao<GameDlcPo> {
    public GameDlcDao() {
        super(GameDlcPo.class);
    }

    public GameDlcPo getById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_game_dlc WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractGameDlc(statement);
        }
    }

    public GameDlcPo getByTitle(String title) throws SQLException {
        String sql = "SELECT * FROM tb_game_dlc WHERE title = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, title);
            return extractGameDlc(statement);
        }
    }

    public List<GameDlcPo> getAll() throws SQLException {
        String sql = "SELECT * FROM tb_game_dlc WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery()) {
            List<GameDlcPo> gameDlcs = new ArrayList<>();
            while (resultSet.next()) {
                gameDlcs.add(extract(resultSet));
            }
            return gameDlcs;
        }
    }

    public int insert(GameDlcPo gameDlc) throws SQLException {
        String sql = "INSERT INTO tb_game_dlc (fr_game_id, title, description, price, created_at) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyGameDlc(gameDlc, statement);
            statement.setTimestamp(5, new Timestamp(gameDlc.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void update(GameDlcPo gameDlc) throws SQLException {
        String sql = "UPDATE tb_game_dlc SET fr_game_id = ?, title = ?, description = ?, price = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyGameDlc(gameDlc, statement);
            statement.setLong(5, gameDlc.getId());
            statement.executeUpdate();
        }
    }

    public void delete(long id) throws SQLException {
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
                return extract(resultSet);
            }
            return null;
        }
    }
}