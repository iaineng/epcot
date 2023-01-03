package team.ape.epcot.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class DiscoverBannerVoEntity {
    private String imageUrl;
    private String link;
    private int position;
}
