package team.ape.epcot.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class OrderCreateParameterDto {
    private String titles;
    private String dlcTitles;
}
