package team.ape.epcot.dto;

import lombok.Data;

@Data
public class UserSignInParameterDto {
    private String email;
    private String password;

    public boolean validate() {
        return this.email != null && this.password != null;
    }
}
