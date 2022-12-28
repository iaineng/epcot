package team.ape.epcot.po;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Data
public class UserPo {
    private long id;
    private String username;
    private String nickname;
    private String password;
    private String email;
    private String avatarUrl;
    private String address;
    private Date birthday;
    private Date createdAt;
    private Date deletedAt;
}
