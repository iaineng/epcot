package team.ape.epcot.dao;

import team.ape.epcot.po.PreorderingGamePo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PreorderingGameDao extends Dao<PreorderingGamePo> {
    public PreorderingGameDao() {
        super(PreorderingGamePo.class);
    }

    public PreorderingGamePo getById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_preordering_game WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractPreorderingGame(statement);
        }
    }

    public PreorderingGamePo getByGameId(long gameId) throws SQLException {
        String sql = "SELECT * FROM tb_preordering_game WHERE fr_game_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, gameId);
            return extractPreorderingGame(statement);
        }
    }

    public List<PreorderingGamePo> getAll() throws SQLException {
        String sql = "SELECT * FROM tb_preordering_game WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            List<PreorderingGamePo> preorderingGames = new ArrayList<>();
            while (resultSet.next()) {
                preorderingGames.add(extract(resultSet));
            }
            return preorderingGames;
        }
    }

    public int insert(PreorderingGamePo preorderingGame) throws SQLException {
        String sql = "INSERT INTO tb_preordering_game (fr_game_id, started_at, finished_at, created_at) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyPreorderingGame(preorderingGame, statement);
            statement.setTimestamp(4, new Timestamp(preorderingGame.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void update(PreorderingGamePo preorderingGame) throws SQLException {
        String sql = "UPDATE tb_preordering_game SET fr_game_id = ?, started_at = ?, finished_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyPreorderingGame(preorderingGame, statement);
            statement.setLong(4, preorderingGame.getId());
            statement.executeUpdate();
        }
    }

    public void delete(long id) throws SQLException {
        String sql = "UPDATE tb_preordering_game SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            statement.setLong(2, id);
            statement.executeUpdate();
        }
    }

    private void applyPreorderingGame(PreorderingGamePo preorderingGame, PreparedStatement statement) throws SQLException {
        statement.setLong(1, preorderingGame.getGameId());
        statement.setTimestamp(2, new Timestamp(preorderingGame.getStartedAt().getTime()));
        statement.setTimestamp(3, new Timestamp(preorderingGame.getFinishedAt().getTime()));
    }

    private PreorderingGamePo extractPreorderingGame(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return extract(resultSet);
            }
            return null;
        }
    }
}