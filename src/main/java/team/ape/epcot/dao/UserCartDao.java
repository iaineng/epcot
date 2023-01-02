package team.ape.epcot.dao;

import team.ape.epcot.po.UserCartPo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class UserCartDao extends Dao<UserCartPo> {
    public UserCartDao() {
        super(UserCartPo.class);
    }

    public List<UserCartPo> getByUserId(long userId) throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE fr_user_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, userId);
            return extractAll(statement);
        }
    }

    public List<UserCartPo> getByGoodsId(long goodsId) throws SQLException {
        String sql = "SELECT * FROM tb_user_cart WHERE fr_goods_id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, goodsId);
            return extractAll(statement);
        }
    }

    @Override
    protected String getTableName() {
        return "tb_user_cart";
    }
}