package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;

@NoArgsConstructor
@Data
public class GameDlcPo {
    private long id;
    private long gameId;
    private String title;
    private String description;
    private BigDecimal price;
    private Date createdAt;
    private Date deletedAt;
}
