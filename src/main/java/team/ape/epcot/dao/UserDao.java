package team.ape.epcot.dao;

import team.ape.epcot.po.UserPo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends Dao<UserPo> {
    public UserDao() {
        super(UserPo.class);
    }

    public UserPo getById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_user WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extract(statement);
        }
    }

    public UserPo getByUsername(String username) throws SQLException {
        String sql = "SELECT * FROM tb_user WHERE username = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            return extract(statement);
        }
    }

    public List<UserPo> getAll() throws SQLException {
        String sql = "SELECT * FROM tb_user WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            List<UserPo> users = new ArrayList<>();
            while (resultSet.next()) {
                users.add(extract(resultSet));
            }
            return users;
        }
    }

    public int insert(UserPo user) throws SQLException {
        String sql = "INSERT INTO tb_user (username, nickname, password, email, avatar_url, address, birthday, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            apply(user, statement);
            statement.setTimestamp(8, new Timestamp(user.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void update(UserPo user) throws SQLException {
        String sql = "UPDATE tb_user SET username = ?, nickname = ?, password = ?, email = ?, avatar_url = ?, address = ?, birthday = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            apply(user, statement);
            statement.setLong(8, user.getId());
            statement.executeUpdate();
        }
    }

    public void delete(long id) throws SQLException {
        String sql = "UPDATE tb_user SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            statement.setLong(2, id);
            statement.executeUpdate();
        }
    }
}
