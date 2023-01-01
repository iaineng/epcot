package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class UserCartPo {
    private long id;
    private long userId;
    private long goodsId;
    private int type;
    private Date createdAt;
    private Date deletedAt;
}
