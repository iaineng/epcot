package team.ape.epcot.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class UserAccountSetParameterDto {
    private String nickname;
    private String email;
}
