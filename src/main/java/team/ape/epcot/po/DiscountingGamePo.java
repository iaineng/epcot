package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class DiscountingGamePo {
    private long id;
    private long gameId;
    private int discountPercentage;
    private Date startedAt;
    private Date finishedAt;
    private Date createdAt;
    private Date deletedAt;
}
