package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;

@NoArgsConstructor
@Data
public class DiscountingGamePo {
    private long id;
    @Col(name = "fr_game_id")
    private long gameId;
    private int discountPercentage;
    private Date startedAt;
    private Date finishedAt;
    private Date createdAt;
    private Date deletedAt;
}
