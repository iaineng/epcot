package team.ape.epcot.vo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserVoEntity {
    private String username;
    private String nickname;
    private String email;
}
