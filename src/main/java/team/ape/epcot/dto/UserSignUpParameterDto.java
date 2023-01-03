package team.ape.epcot.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class UserSignUpParameterDto {
    private String username;
    private String nickname;
    private String password;
    private String email;
    private String avatarUrl;
    private String address;
    private String birthdayYear;
    private String birthdayMonth;
    private String birthdayDay;

    public boolean validate() {
        return this.username != null && this.nickname != null && this.password != null && this.email != null;
    }
}
