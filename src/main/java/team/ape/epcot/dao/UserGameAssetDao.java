package team.ape.epcot.dao;

import team.ape.epcot.po.UserGameAssetPo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class UserGameAssetDao extends Dao<UserGameAssetPo> {
    public UserGameAssetDao() {
        super(UserGameAssetPo.class);
    }

    public List<UserGameAssetPo> getByUserId(long userId) throws SQLException {
        String sql = "SELECT * FROM tb_user_game_asset WHERE fr_user_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, userId);
            return extractAll(statement);
        }
    }

    public List<UserGameAssetPo> getByGameId(long gameId) throws SQLException {
        String sql = "SELECT * FROM tb_user_game_asset WHERE fr_game_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, gameId);
            return extractAll(statement);
        }
    }

    @Override
    protected String getTableName() {
        return "tb_user_game_asset";
    }
}