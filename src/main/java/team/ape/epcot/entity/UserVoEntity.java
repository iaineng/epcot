package team.ape.epcot.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class UserVoEntity {
    private String username;
    private String nickname;
    private String email;
    private String firstName;
    private String lastName;
    private String address;
    private List<Long> ownedGameIds;
    private List<Long> ownedDlcIds;
    private List<Long> wishlistGameIds;
    private List<Long> cartGameIds;
}
