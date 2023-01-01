package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class UserWishListPo {
    private long id;
    private long userId;
    private long gameId;
    private Date createdAt;
    private Date deletedAt;
}
