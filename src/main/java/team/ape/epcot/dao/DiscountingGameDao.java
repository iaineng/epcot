package team.ape.epcot.dao;

import team.ape.epcot.po.DiscountingGamePo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class DiscountingGameDao extends Dao<DiscountingGamePo> {
    public DiscountingGameDao() {
        super(DiscountingGamePo.class);
    }

    public DiscountingGamePo getById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_discounting_game WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractDiscountingGame(statement);
        }
    }

    public DiscountingGamePo getByGameId(long gameId) throws SQLException {
        String sql = "SELECT * FROM tb_discounting_game WHERE fr_game_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, gameId);
            return extractDiscountingGame(statement);
        }
    }

    public List<DiscountingGamePo> getAll() throws SQLException {
        String sql = "SELECT * FROM tb_discounting_game WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            return extractDiscountingGames(statement);
        }
    }

    public int insert(DiscountingGamePo discountingGame) throws SQLException {
        String sql = "INSERT INTO tb_discounting_game (fr_game_id, discount_percentage, discounted_price, started_at, finished_at, created_at) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyDiscountingGame(discountingGame, statement);
            return statement.executeUpdate();
        }
    }

    public void update(DiscountingGamePo discountingGame) throws SQLException {
        String sql = "UPDATE tb_discounting_game SET fr_game_id = ?, discount_percentage = ?, discounted_price = ?, started_at = ?, finished_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyDiscountingGame(discountingGame, statement);
            statement.setLong(6, discountingGame.getId());
            statement.executeUpdate();
        }
    }

    public void delete(long id) throws SQLException {
        String sql = "UPDATE tb_discounting_game SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            statement.setLong(2, id);
            statement.executeUpdate();
        }
    }

    private void applyDiscountingGame(DiscountingGamePo discountingGame, PreparedStatement statement) throws SQLException {
        statement.setLong(1, discountingGame.getGameId());
        statement.setInt(2, discountingGame.getDiscountPercentage());
        statement.setBigDecimal(3, discountingGame.getDiscountedPrice());
        statement.setTimestamp(4, new Timestamp(discountingGame.getStartedAt().getTime()));
        statement.setTimestamp(5, new Timestamp(discountingGame.getFinishedAt().getTime()));
        statement.setTimestamp(6, new Timestamp(discountingGame.getCreatedAt().getTime()));
    }

    private DiscountingGamePo extractDiscountingGame(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return extract(resultSet);
            }
            return null;
        }
    }

    private List<DiscountingGamePo> extractDiscountingGames(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            List<DiscountingGamePo> discountingGames = new ArrayList<>();
            while (resultSet.next()) {
                discountingGames.add(extract(resultSet));
            }
            return discountingGames;
        }
    }
}