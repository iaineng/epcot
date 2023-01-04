package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;

@NoArgsConstructor
@Data
public class OrderPo {
    private long id;
    private String sn;
    @Col(name = "fr_game_ids")
    private String gameIds;
    @Col(name = "fr_game_dlc_ids")
    private String gameDlcIds;
    private BigDecimal price;
    private int status;
    private Date createdAt;
    private Date deletedAt;
    @Col(name = "fr_user_id")
    private long userId;
}
