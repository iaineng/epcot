package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserRegisterVo {
    private boolean registering;
    private boolean isRegistered;
    private String failReason;
}
