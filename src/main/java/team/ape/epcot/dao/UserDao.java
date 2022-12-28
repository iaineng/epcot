package team.ape.epcot.dao;

import team.ape.epcot.po.UserPo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends BaseDao {
    public UserPo getUserById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_user WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractUser(statement);
        }
    }

    public UserPo getUserByUsername(String username) throws SQLException {
        String sql = "SELECT * FROM tb_user WHERE username = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            return extractUser(statement);
        }
    }

    public List<UserPo> getAllUsers() throws SQLException {
        String sql = "SELECT * FROM tb_user WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            List<UserPo> users = new ArrayList<>();
            while (resultSet.next()) {
                users.add(extractUser(resultSet));
            }
            return users;
        }
    }

    public int insertUser(UserPo user) throws SQLException {
        String sql = "INSERT INTO tb_user (username, nickname, password, email, avatar_url, address, birthday, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getNickname());
            statement.setString(3, user.getPassword());
            statement.setString(4, user.getEmail());
            statement.setString(5, user.getAvatarUrl());
            statement.setString(6, user.getAddress());
            statement.setTimestamp(7, new Timestamp(user.getBirthday().getTime()));
            statement.setTimestamp(8, new Timestamp(user.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void updateUser(UserPo user) throws SQLException {
        String sql = "UPDATE tb_user SET nickname = ?, password = ?, email = ?, avatar_url = ?, address = ?, birthday = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getNickname());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getAvatarUrl());
            statement.setString(5, user.getAddress());
            statement.setTimestamp(6, new Timestamp(user.getBirthday().getTime()));
            statement.setLong(7, user.getId());
            statement.executeUpdate();
        }
    }

    public void deleteUser(long id) throws SQLException {
        String sql = "UPDATE tb_user SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            statement.setLong(2, id);
            statement.executeUpdate();
        }
    }

    private UserPo extractUser(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return extractUser(resultSet);
            }
            return null;
        }
    }

    private UserPo extractUser(ResultSet resultSet) throws SQLException {
        UserPo user = new UserPo();
        user.setId(resultSet.getLong("id"));
        user.setUsername(resultSet.getString("username"));
        user.setNickname(resultSet.getString("nickname"));
        user.setPassword(resultSet.getString("password"));
        user.setEmail(resultSet.getString("email"));
        user.setAvatarUrl(resultSet.getString("avatar_url"));
        user.setAddress(resultSet.getString("address"));
        user.setBirthday(resultSet.getTimestamp("birthday"));
        user.setCreatedAt(resultSet.getTimestamp("created_at"));
        user.setDeletedAt(resultSet.getTimestamp("deleted_at"));
        return user;
    }
}
