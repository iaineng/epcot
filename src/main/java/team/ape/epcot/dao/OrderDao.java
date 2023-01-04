package team.ape.epcot.dao;

import team.ape.epcot.po.OrderPo;

import java.sql.SQLException;

public class OrderDao extends Dao<OrderPo> {
    public OrderDao() {
        super(OrderPo.class);
    }

    public OrderPo getBySn(String sn) throws SQLException {
        return getBy("sn", sn);
    }

    @Override
    protected String getTableName() {
        return "tb_order";
    }
}
