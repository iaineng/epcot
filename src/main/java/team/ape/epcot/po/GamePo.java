package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;

@NoArgsConstructor
@Data
public class GamePo {
    private long id;
    private String title;
    private String description;
    private String cover_urls;
    private String download_link;
    private BigDecimal price;
    private String developer;
    private String publisher;
    private String tags;
    private String platforms;
    private String reviews;
    private String marks;
    private Date createdAt;
    private Date deletedAt;
}
