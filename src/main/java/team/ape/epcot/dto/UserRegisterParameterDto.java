package team.ape.epcot.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;
import java.time.Instant;
import java.util.Date;

@NoArgsConstructor
@Data
public class UserRegisterParameterDto {
    private String username;
    private String nickname;
    private String password;
    private String email;
    private String avatarUrl;
    private String address;
    private Date birthday;

    public void apply(HttpServletRequest request) {
        request.getParameterMap().forEach((k, v) -> {
            switch (k) {
                case "username":
                    this.setUsername(v[0]);
                    break;
                case "nickname":
                    this.setNickname(v[0]);
                    break;
                case "password":
                    this.setPassword(v[0]);
                    break;
                case "email":
                    this.setEmail(v[0]);
                    break;
                case "avatarUrl":
                    this.setAvatarUrl(v[0]);
                    break;
                case "address":
                    this.setAddress(v[0]);
                    break;
                case "birthday":
                    this.setBirthday(Date.from(Instant.parse(v[0])));
                    break;
            }
        });
    }

    public boolean validate() {
        return this.username != null && this.nickname != null && this.password != null && this.email != null;
    }
}
