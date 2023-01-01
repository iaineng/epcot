package team.ape.epcot.dao;

import team.ape.epcot.po.PreorderingGamePo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PreorderingGameDao extends BaseDao {
    public PreorderingGamePo getPreorderingGameById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_preordering_game WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractPreorderingGame(statement);
        }
    }

    public PreorderingGamePo getPreorderingGameByGameId(long gameId) throws SQLException {
        String sql = "SELECT * FROM tb_preordering_game WHERE fr_game_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, gameId);
            return extractPreorderingGame(statement);
        }
    }

    public List<PreorderingGamePo> getAllPreorderingGames() throws SQLException {
        String sql = "SELECT * FROM tb_preordering_game WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            List<PreorderingGamePo> preorderingGames = new ArrayList<>();
            while (resultSet.next()) {
                preorderingGames.add(extractPreorderingGame(resultSet));
            }
            return preorderingGames;
        }
    }

    public int insertPreorderingGame(PreorderingGamePo preorderingGame) throws SQLException {
        String sql = "INSERT INTO tb_preordering_game (fr_game_id, started_at, finished_at, created_at) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyPreorderingGame(preorderingGame, statement);
            statement.setTimestamp(4, new Timestamp(preorderingGame.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void updatePreorderingGame(PreorderingGamePo preorderingGame) throws SQLException {
        String sql = "UPDATE tb_preordering_game SET fr_game_id = ?, started_at = ?, finished_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyPreorderingGame(preorderingGame, statement);
            statement.setLong(4, preorderingGame.getId());
            statement.executeUpdate();
        }
    }

    public void deletePreorderingGame(long id) throws SQLException {
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
                return extractPreorderingGame(resultSet);
            }
            return null;
        }
    }

    private PreorderingGamePo extractPreorderingGame(ResultSet resultSet) throws SQLException {
        PreorderingGamePo preorderingGame = new PreorderingGamePo();
        preorderingGame.setId(resultSet.getLong("id"));
        preorderingGame.setGameId(resultSet.getLong("fr_game_id"));
        preorderingGame.setStartedAt(resultSet.getTimestamp("started_at"));
        preorderingGame.setFinishedAt(resultSet.getTimestamp("finished_at"));
        preorderingGame.setCreatedAt(resultSet.getTimestamp("created_at"));
        preorderingGame.setDeletedAt(resultSet.getTimestamp("deleted_at"));
        return preorderingGame;
    }
}