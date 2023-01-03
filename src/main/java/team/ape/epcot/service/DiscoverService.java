package team.ape.epcot.service;

import team.ape.epcot.dao.DiscoverBannerDao;
import team.ape.epcot.entity.DiscoverBannerVoEntity;
import team.ape.epcot.po.DiscoverBannerPo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class DiscoverService extends Service {
    DiscoverBannerDao discoverBannerDao = new DiscoverBannerDao();

    public List<DiscoverBannerVoEntity> getBanners() throws SQLException {
        List<DiscoverBannerPo> discoverBannerPos = discoverBannerDao.getAll();
        ArrayList<DiscoverBannerVoEntity> discoverBannerVoEntities = new ArrayList<>();

        for (DiscoverBannerPo discoverBannerPo : discoverBannerPos) {
            DiscoverBannerVoEntity discoverBannerVoEntity = new DiscoverBannerVoEntity();
            discoverBannerVoEntity.setImageUrl(discoverBannerPo.getImageUrl());
            discoverBannerVoEntity.setLink(discoverBannerPo.getLink());
            discoverBannerVoEntity.setPosition(discoverBannerPo.getPosition());
            discoverBannerVoEntities.add(discoverBannerVoEntity);
        }
        discoverBannerVoEntities.sort(Comparator.comparingInt(DiscoverBannerVoEntity::getPosition));

        return discoverBannerVoEntities;
    }

    @Override
    public void close() throws SQLException {
        discoverBannerDao.close();
    }
}
