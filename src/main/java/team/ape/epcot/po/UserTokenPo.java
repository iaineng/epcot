package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class UserTokenPo {
    private long id;
    private long userId;
    private String token;
    private Date expiredAt;
    private Date createdAt;
    private Date deletedAt;
}
