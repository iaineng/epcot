package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class UserGameDlcAssetPo {
    private long id;
    private long userId;
    private long gameDlcId;
    private Date createdAt;
    private Date deletedAt;
}
