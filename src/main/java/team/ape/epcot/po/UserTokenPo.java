package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class UserTokenPo {
    private long id;
    @Col(name = "fr_user_id")
    private long userId;
    private String token;
    private boolean isDisabled;
    private Date expiredAt;
    private Date createdAt;
    private Date deletedAt;
}
