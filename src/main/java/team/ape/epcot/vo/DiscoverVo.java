package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import team.ape.epcot.entity.DiscoverBannerVoEntity;

import java.util.List;

@Data
@NoArgsConstructor
public class DiscoverVo {
    List<DiscoverBannerVoEntity> banners;
}
