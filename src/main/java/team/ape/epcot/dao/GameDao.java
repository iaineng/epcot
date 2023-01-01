package team.ape.epcot.dao;

import team.ape.epcot.po.GamePo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class GameDao extends Dao<GamePo> {
    public GameDao() {
        super(GamePo.class);
    }

    public GamePo getById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_game WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractGame(statement);
        }
    }

    public GamePo getByTitle(String title) throws SQLException {
        String sql = "SELECT * FROM tb_game WHERE title = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, title);
            return extractGame(statement);
        }
    }

    public List<GamePo> searchByTitle(String title) throws SQLException {
        String sql = "SELECT * FROM tb_game WHERE title LIKE ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, "%" + title + "%");
            return extractGames(statement.executeQuery());
        }
    }

    public List<GamePo> getAll() throws SQLException {
        String sql = "SELECT * FROM tb_game WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            List<GamePo> games = new ArrayList<>();
            while (resultSet.next()) {
                games.add(extract(resultSet));
            }
            return games;
        }
    }

    public int insert(GamePo game) throws SQLException {
        String sql = "INSERT INTO tb_game (title, description, cover_urls, download_link, price, created_at, tags, platforms, reviews, marks, developer, publisher) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyGame(game, statement);
            statement.setTimestamp(6, new Timestamp(game.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void update(GamePo game) throws SQLException {
        String sql = "UPDATE tb_game SET title = ?, description = ?, cover_urls = ?, download_link = ?, price = ?, tags = ?, platforms = ?, reviews = ?, marks = ?, developer = ?, publisher = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyGame(game, statement);
            statement.setLong(12, game.getId());
            statement.executeUpdate();
        }
    }

    public void delete(long id) throws SQLException {
        String sql = "UPDATE tb_game SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            statement.setLong(2, id);
            statement.executeUpdate();
        }
    }

    private void applyGame(GamePo game, PreparedStatement statement) throws SQLException {
        statement.setString(1, game.getTitle());
        statement.setString(2, game.getDescription());
        statement.setString(3, game.getCoverUrls());
        statement.setString(4, game.getDownloadLink());
        statement.setBigDecimal(5, game.getPrice());
        statement.setString(6, game.getTags());
        statement.setString(7, game.getPlatforms());
        statement.setString(8, game.getReviews());
        statement.setString(9, game.getMarks());
        statement.setString(10, game.getDeveloper());
        statement.setString(11, game.getPublisher());
    }

    private GamePo extractGame(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return extract(resultSet);
            }
            return null;
        }
    }

    private List<GamePo> extractGames(ResultSet resultSet) throws SQLException {
        List<GamePo> games = new ArrayList<>();
        while (resultSet.next()) {
            games.add(extract(resultSet));
        }
        return games;
    }
}