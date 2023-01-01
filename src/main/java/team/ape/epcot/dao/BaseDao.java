package team.ape.epcot.dao;

import team.ape.epcot.dbc.ConnectionPool;

import java.sql.Connection;
import java.sql.SQLException;

public abstract class BaseDao implements AutoCloseable {
    protected Connection connection;

    public BaseDao() {
        connection = ConnectionPool.getConnection();
    }

    @Override
    public void close() throws SQLException {
        connection.close();
    }
}
