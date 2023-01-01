package team.ape.epcot.dao;

import com.google.common.base.CaseFormat;
import team.ape.epcot.dbc.ConnectionPool;
import team.ape.epcot.po.Col;
import team.ape.epcot.po.UserPo;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.*;
import java.util.Date;

public abstract class Dao<T> implements AutoCloseable {
    protected Connection connection;
    private final Class<T> poClass;

    public Dao(Class<T> poClass) {
        connection = ConnectionPool.getConnection();
        this.poClass = poClass;
    }

    @Override
    public void close() throws SQLException {
        connection.close();
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
        Field[] fields = po.getClass().getDeclaredFields();
        for (Field field : fields) {
            field.setAccessible(true);
            String dbFieldName;
            Col col = field.getAnnotation(Col.class);
            if (col != null) {
                dbFieldName = col.name();
            } else {
                dbFieldName = CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, field.getName());
            }
            try {
                Method method = po.getClass().getMethod("set" + CaseFormat.LOWER_CAMEL.to(CaseFormat.UPPER_CAMEL, field.getName()), field.getType());
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
