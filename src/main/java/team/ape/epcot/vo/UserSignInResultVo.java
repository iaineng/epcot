package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserSignInResultVo {
    private boolean isSucceeded;
    private String failReason;
    private String token;
}
