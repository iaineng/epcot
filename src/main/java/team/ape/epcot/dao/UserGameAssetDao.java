package team.ape.epcot.dao;

import team.ape.epcot.po.UserGameAssetPo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class UserGameAssetDao extends Dao<UserGameAssetPo> {
    public UserGameAssetDao() {
        super(UserGameAssetPo.class);
    }

    public UserGameAssetPo getById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_user_game_asset WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractUserGameAsset(statement);
        }
    }

    public List<UserGameAssetPo> getByUserId(long userId) throws SQLException {
        String sql = "SELECT * FROM tb_user_game_asset WHERE fr_user_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, userId);
            return extractUserGameAssets(statement);
        }
    }

    public List<UserGameAssetPo> getByGameId(long gameId) throws SQLException {
        String sql = "SELECT * FROM tb_user_game_asset WHERE fr_game_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, gameId);
            return extractUserGameAssets(statement);
        }
    }

    public int insert(UserGameAssetPo userGameAsset) throws SQLException {
        String sql = "INSERT INTO tb_user_game_asset (fr_user_id, fr_game_id, created_at) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyUserGameAsset(userGameAsset, statement);
            statement.setTimestamp(3, new Timestamp(userGameAsset.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void delete(long id) throws SQLException {
        String sql = "UPDATE tb_user_game_asset SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            statement.setLong(2, id);
            statement.executeUpdate();
        }
    }

    private void applyUserGameAsset(UserGameAssetPo userGameAsset, PreparedStatement statement) throws SQLException {
        statement.setLong(1, userGameAsset.getUserId());
        statement.setLong(2, userGameAsset.getGameId());
    }

    private UserGameAssetPo extractUserGameAsset(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return extract(resultSet);
            }
            return null;
        }
    }

    private List<UserGameAssetPo> extractUserGameAssets(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            List<UserGameAssetPo> userGameAssets = new ArrayList<>();
            while (resultSet.next()) {
                userGameAssets.add(extract(resultSet));
            }
            return userGameAssets;
        }
    }
}