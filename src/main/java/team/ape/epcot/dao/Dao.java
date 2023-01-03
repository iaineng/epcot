package team.ape.epcot.dao;

import com.google.common.base.CaseFormat;
import lombok.SneakyThrows;
import team.ape.epcot.dbc.ConnectionPool;
import team.ape.epcot.po.Col;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public abstract class Dao<T> implements AutoCloseable {
    protected Connection connection;
    private final Class<T> poClass;
    private static final ConcurrentHashMap<Class<?>, Field[]> fieldsCache = new ConcurrentHashMap<>();

    public Dao(Class<T> poClass) {
        connection = ConnectionPool.getConnection();
        this.poClass = poClass;
    }

    @Override
    public void close() throws SQLException {
        ConnectionPool.releaseConnection(connection);
    }

    protected abstract String getTableName();

    public T getById(long id) throws SQLException {
        String sql = "SELECT * FROM " + getTableName() + " WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extract(statement);
        }
    }

    protected T getBy(String colName, Object value) throws SQLException {
        String sql = "SELECT * FROM " + getTableName() + " WHERE " + colName + " = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setObject(1, value);
            return extract(statement);
        }
    }

    protected List<T> getBy(String colName, Object value, int limit, int offset) throws SQLException {
        String sql = "SELECT * FROM " + getTableName() + " WHERE " + colName + " = ? AND deleted_at IS NULL LIMIT ? OFFSET ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setObject(1, value);
            statement.setInt(2, limit);
            statement.setInt(3, offset);
            return extractAll(statement);
        }
    }

    protected List<T> searchBy(String colName, Object value) throws SQLException {
        String sql = "SELECT * FROM " + getTableName() + " WHERE " + colName + " LIKE ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setObject(1, "%" + value + "%");
            return extractAll(statement);
        }
    }

    public List<T> getAll() throws SQLException {
        String sql = "SELECT * FROM " + getTableName() + " WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet rs = statement.executeQuery()) {
            List<T> result = new ArrayList<>();
            while (rs.next()) {
                result.add(extract(rs));
            }
            return result;
        }
    }

    @SneakyThrows
    private long getId(T po) {
        Method getId = poClass.getMethod("getId");
        return (long) getId.invoke(po);
    }

    private Field[] getFields() {
        return fieldsCache.computeIfAbsent(poClass, k -> {
            Field[] fields = poClass.getDeclaredFields();
            for (Field field : fields) {
                field.setAccessible(true);
            }
            return fields;
        });
    }

    private List<String> getDbFieldNames() {
        List<String> dbFieldNames = new ArrayList<>();
        for (Field field : getFields()) {
            if (field.isAnnotationPresent(Col.class)) {
                dbFieldNames.add(field.getAnnotation(Col.class).name());
            } else {
                dbFieldNames.add(CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName()));
            }
        }
        dbFieldNames.remove("id");
        dbFieldNames.remove("created_at");
        dbFieldNames.remove("deleted_at");
        return dbFieldNames;
    }

    public int update(T po) throws SQLException {
        StringBuilder sql = new StringBuilder("UPDATE " + getTableName() + " SET ");
        List<String> dbFieldNames = getDbFieldNames();
        for (String name : dbFieldNames) {
            sql.append(name).append(" = ?, ");
        }
        sql.delete(sql.length() - 2, sql.length());
        sql.append(" WHERE id = ?");
        try (PreparedStatement statement = connection.prepareStatement(sql.toString())) {
            apply(po, statement);
            statement.setLong(dbFieldNames.size() + 1, getId(po));
            return statement.executeUpdate();
        }
    }

    public int insert(T po) throws SQLException {
        StringBuilder sql = new StringBuilder("INSERT INTO " + getTableName() + " (");
        List<String> dbFieldNames = getDbFieldNames();
        for (String name : dbFieldNames) {
            sql.append(name).append(", ");
        }
        sql.append("created_at) VALUES (");
        for (int i = 0; i < dbFieldNames.size(); i++) {
            sql.append("?, ");
        }
        sql.append("?)");
        try (PreparedStatement statement = connection.prepareStatement(sql.toString())) {
            apply(po, statement);
            statement.setTimestamp(dbFieldNames.size() + 1, new Timestamp(new Date().getTime()));
            return statement.executeUpdate();
        }
    }

    public int deleteById(long id) throws SQLException {
        String sql = "UPDATE " + getTableName() + " SET deleted_at = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setTimestamp(1, new Timestamp(new Date().getTime()));
            statement.setLong(2, id);
            return statement.executeUpdate();
        }
    }

    protected T extract(ResultSet rs) throws SQLException {
        if (rs.isBeforeFirst() || rs.isAfterLast()) {
            return null;
        }
        T po;
        try {
            po = poClass.newInstance();
        } catch (IllegalAccessException | InstantiationException e) {
            throw new RuntimeException(e);
        }
        for (Field field : getFields()) {
            String dbFieldName;
            Col col = field.getAnnotation(Col.class);
            if (col != null) {
                dbFieldName = col.name();
            } else {
                dbFieldName = CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName());
            }
            try {
                Method method = po.getClass().getMethod("set" + CaseFormat.LOWER_CAMEL.to(CaseFormat.UPPER_CAMEL, field.getName().replaceFirst("^is", "")), field.getType());
                method.invoke(po, rs.getObject(dbFieldName));
            } catch (NoSuchMethodException | InvocationTargetException | IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        }
        return po;
    }

    protected T extract(PreparedStatement statement) throws SQLException {
        try (ResultSet rs = statement.executeQuery()) {
            if (rs.next()) {
                return extract(rs);
            }
            return null;
        }
    }

    protected List<T> extractAll(PreparedStatement statement) throws SQLException {
        try (ResultSet rs = statement.executeQuery()) {
            List<T> result = new ArrayList<>();
            while (rs.next()) {
                result.add(extract(rs));
            }
            return result;
        }
    }

    protected void apply(T po, PreparedStatement statement) throws SQLException {
        Field[] fields = po.getClass().getDeclaredFields();
        for (int i = 0, paramterIndex = 1; i < fields.length; i++) {
            fields[i].setAccessible(true);
            String fieldName = fields[i].getName();
            if (fieldName.equals("id") || fieldName.equals("createdAt") || fieldName.equals("deletedAt")) {
                continue;
            }
            Object value;
            try {
                value = fields[i].get(po);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
            if (fields[i].getType() == Date.class) {
                statement.setTimestamp(paramterIndex, new Timestamp(((Date) value).getTime()));
            } else {
                statement.setObject(paramterIndex, value);
            }
            paramterIndex++;
        }
    }
}
