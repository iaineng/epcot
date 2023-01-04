package team.ape.epcot.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class UserSetPasswordParameterDto {
    private String oldPassword;
    private String newPassword;
}
