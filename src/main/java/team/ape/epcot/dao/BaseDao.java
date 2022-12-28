package team.ape.epcot.dao;

import team.ape.epcot.dbc.ConnectionPool;

import java.sql.Connection;

public abstract class BaseDao implements AutoCloseable {
    protected Connection connection;

    public BaseDao() {
        connection = ConnectionPool.getConnection();
    }

    @Override
    public void close() throws Exception {
        connection.close();
    }
}
