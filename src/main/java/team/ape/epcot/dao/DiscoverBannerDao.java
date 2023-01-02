package team.ape.epcot.dao;

import team.ape.epcot.po.DiscoverBannerPo;

public class DiscoverBannerDao extends Dao<DiscoverBannerPo> {
    public DiscoverBannerDao() {
        super(DiscoverBannerPo.class);
    }

    @Override
    protected String getTableName() {
        return "tb_discover_banner";
    }
}