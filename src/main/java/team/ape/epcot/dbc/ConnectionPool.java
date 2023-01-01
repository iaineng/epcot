package team.ape.epcot.dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConnectionPool {
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/db_epcot";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "postgres";
    private static final int INITIAL_POOL_SIZE = 1;
    private static final int MAX_POOL_SIZE = 10;

    private static final List<Connection> connectionPool = new ArrayList<>();
    private static int usedConnections = 0;

    static {
        initPool();
    }

    private ConnectionPool() {
    }

    private static void initPool() {
        try {
             Class.forName(JDBC_DRIVER);
            for (int i = 0; i < INITIAL_POOL_SIZE; i++) {
                connectionPool.add(DriverManager.getConnection(DB_URL, USERNAME, PASSWORD));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static synchronized Connection getConnection() {
        if (connectionPool.size() > 0) {
            usedConnections++;
            return connectionPool.remove(connectionPool.size() - 1);
        }
        if (usedConnections < MAX_POOL_SIZE) {
            usedConnections++;
            try {
                return DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }
        while (connectionPool.size() == 0) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return getConnection();
    }

    public static synchronized void releaseConnection(Connection connection) {
        connectionPool.add(connection);
        usedConnections--;
    }

    public static void shutdown() {
        for (Connection connection : connectionPool) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        connectionPool.clear();
    }
}
