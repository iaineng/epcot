package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class UserGameDlcAssetPo {
    private long id;
    @Col(name = "fr_user_id")
    private long userId;
    @Col(name = "fr_game_dlc_id")
    private long gameDlcId;
    private Date createdAt;
    private Date deletedAt;
}
