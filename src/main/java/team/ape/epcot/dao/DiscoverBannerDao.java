package team.ape.epcot.dao;

import team.ape.epcot.po.DiscoverBannerPo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class DiscoverBannerDao extends Dao<DiscoverBannerPo> {
    public DiscoverBannerDao() {
        super(DiscoverBannerPo.class);
    }

    public DiscoverBannerPo getById(long id) throws SQLException {
        String sql = "SELECT * FROM tb_discover_banner WHERE id = ? AND deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setLong(1, id);
            return extractDiscoverBanner(statement);
        }
    }

    public List<DiscoverBannerPo> getAll() throws SQLException {
        String sql = "SELECT * FROM tb_discover_banner WHERE deleted_at IS NULL";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            List<DiscoverBannerPo> discoverBanners = new ArrayList<>();
            while (resultSet.next()) {
                discoverBanners.add(extract(resultSet));
            }
            return discoverBanners;
        }
    }

    public int insert(DiscoverBannerPo discoverBanner) throws SQLException {
        String sql = "INSERT INTO tb_discover_banner (image_url, link, position, title, icon_url, created_at) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyDiscoverBanner(discoverBanner, statement);
            statement.setTimestamp(6, new Timestamp(discoverBanner.getCreatedAt().getTime()));
            return statement.executeUpdate();
        }
    }

    public void update(DiscoverBannerPo discoverBanner) throws SQLException {
        String sql = "UPDATE tb_discover_banner SET image_url = ?, link = ?, position = ?, title = ?, icon_url = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            applyDiscoverBanner(discoverBanner, statement);
            statement.setLong(6, discoverBanner.getId());
            statement.executeUpdate();
        }
    }

    private void applyDiscoverBanner(DiscoverBannerPo discoverBanner, PreparedStatement statement) throws SQLException {
        statement.setString(1, discoverBanner.getImageUrl());
        statement.setString(2, discoverBanner.getLink());
        statement.setInt(3, discoverBanner.getPosition());
        statement.setString(4, discoverBanner.getTitle());
        statement.setString(5, discoverBanner.getIconUrl());
    }

    private DiscoverBannerPo extractDiscoverBanner(PreparedStatement statement) throws SQLException {
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return extract(resultSet);
            }
            return null;
        }
    }
}