package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserSignUpVo {
    private boolean registering;
    private boolean isRegistered;
    private String failReason;
}
