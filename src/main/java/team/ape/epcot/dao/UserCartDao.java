package team.ape.epcot.dao;

import team.ape.epcot.po.UserCartPo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class UserCartDao extends BaseDao {
    public UserCartPo getUserCartById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractUserCart(statement);
        }
    }

    public List<UserCartPo> getUserCartsByUserId(long userId) throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE fr_user_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, userId);
            return extractUserCarts(statement);
        }
    }

    public List<UserCartPo> getUserCartsByGoodsId(long goodsId) throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE fr_goods_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement=connection.prepareStatement(sql)){
            statement.setLong(1, goodsId);
            return extractUserCarts(statement);
        }
    }

    public List<UserCartPo> getAllUserCarts() throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            List<UserCartPo> userCarts = new ArrayList<>();
            while (resultSet.next()) {
                userCarts.add(extractUserCart(resultSet));
            }
            return userCarts;
        }
    }

    public int insertUserCart(UserCartPo userCart) throws SQLException {
        String sql = "INSERT INTO tb_user_cart (fr_user_id, fr_goods_id, type, created_at) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyUserCart(userCart, statement);
            statement.setTimestamp(4, new Timestamp(userCart.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void updateUserCart(UserCartPo userCart) throws SQLException {
        String sql = "UPDATE tb_user_cart SET fr_user_id = ?, fr_goods_id = ?, type = ? WHERE id = ?";
        try (PreparedStatement statement=connection.prepareStatement(sql)){
            applyUserCart(userCart, statement);
            statement.setLong(4, userCart.getId());
            statement.executeUpdate();
        }
    }

    public void deleteUserCart(long id) throws SQLException {
        String sql = "UPDATE tb_user_cart SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement=connection.prepareStatement(sql)){
            statement.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            statement.setLong(2, id);
            statement.executeUpdate();
        }
    }

    private void applyUserCart(UserCartPo userCart, PreparedStatement statement) throws SQLException {
        statement.setLong(1, userCart.getUserId());
        statement.setLong(2, userCart.getGoodsId());
        statement.setInt(3, userCart.getType());
    }

    private UserCartPo extractUserCart(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return extractUserCart(resultSet);
            }
            return null;
        }
    }

    private List<UserCartPo> extractUserCarts(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            List<UserCartPo> userCarts = new ArrayList<>();
            while (resultSet.next()) {
                userCarts.add(extractUserCart(resultSet));
            }
            return userCarts;
        }
    }

    private UserCartPo extractUserCart(ResultSet resultSet) throws SQLException {
        UserCartPo userCart = new UserCartPo();
        userCart.setId(resultSet.getLong("id"));
        userCart.setUserId(resultSet.getLong("fr_user_id"));
        userCart.setGoodsId(resultSet.getLong("fr_goods_id"));
        userCart.setType(resultSet.getInt("type"));
        userCart.setCreatedAt(resultSet.getTimestamp("created_at"));
        userCart.setDeletedAt(resultSet.getTimestamp("deleted_at"));
        return userCart;
    }
}