package team.ape.epcot.dao;

import team.ape.epcot.po.UserCartPo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class UserCartDao extends Dao<UserCartPo> {
    public UserCartDao() {
        super(UserCartPo.class);
    }

    public UserCartPo getById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractUserCart(statement);
        }
    }

    public List<UserCartPo> getByUserId(long userId) throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE fr_user_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, userId);
            return extractUserCarts(statement);
        }
    }

    public List<UserCartPo> getByGoodsId(long goodsId) throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE fr_goods_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement=connection.prepareStatement(sql)){
            statement.setLong(1, goodsId);
            return extractUserCarts(statement);
        }
    }

    public List<UserCartPo> getAll() throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            List<UserCartPo> userCarts = new ArrayList<>();
            while (resultSet.next()) {
                userCarts.add(extract(resultSet));
            }
            return userCarts;
        }
    }

    public int insert(UserCartPo userCart) throws SQLException {
        String sql = "INSERT INTO tb_user_cart (fr_user_id, fr_goods_id, type, created_at) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyUserCart(userCart, statement);
            statement.setTimestamp(4, new Timestamp(userCart.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void update(UserCartPo userCart) throws SQLException {
        String sql = "UPDATE tb_user_cart SET fr_user_id = ?, fr_goods_id = ?, type = ? WHERE id = ?";
        try (PreparedStatement statement=connection.prepareStatement(sql)){
            applyUserCart(userCart, statement);
            statement.setLong(4, userCart.getId());
            statement.executeUpdate();
        }
    }

    public void delete(long id) throws SQLException {
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
                return extract(resultSet);
            }
            return null;
        }
    }

    private List<UserCartPo> extractUserCarts(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            List<UserCartPo> userCarts = new ArrayList<>();
            while (resultSet.next()) {
                userCarts.add(extract(resultSet));
            }
            return userCarts;
        }
    }
}