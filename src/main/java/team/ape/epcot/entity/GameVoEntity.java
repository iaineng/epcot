package team.ape.epcot.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Data
@NoArgsConstructor
public class GameVoEntity {
    @Data
    @NoArgsConstructor
    public static class Discounting {
        private int discountPercentage;
        private BigDecimal discountedPrice;
        private Date startedAt;
        private Date finishedAt;
    }

    @Data
    @NoArgsConstructor
    public static class Preordering {
        private Date startedAt;
        private Date finishedAt;
    }

    @Data
    @NoArgsConstructor
    public static class Dlc {
        private String title;
        private String description;
        private BigDecimal price;
        private List<String> coverUrls;
        private String downloadLink;
        private Date releasedAt;
        private boolean isOwned;
    }

    private String title;
    private String description;
    private List<String> coverUrls;
    private String downloadLink;
    private BigDecimal price;
    private List<String> tags;
    private List<String> platforms;
    private List<String> reviews;
    private List<String> marks;
    private String developer;
    private String publisher;
    private Date releasedAt;
    private boolean isOwned;

    private Discounting discounting;

    private Preordering preordering;

    private List<Dlc> dlcs;
}
