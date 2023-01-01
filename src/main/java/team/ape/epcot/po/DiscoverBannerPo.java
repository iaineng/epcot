package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class DiscoverBannerPo {
    private long id;
    private String imageUrl;
    private String link;
    private int position;
    private String title;
    private String iconUrl;
    private Date createdAt;
    private Date deletedAt;
}
