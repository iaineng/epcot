package team.ape.epcot.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class BrowseParameterDto {
    private String filter;
    private String keyword;
    private String tags;
    private String sort;
    private String price;
    private String platforms;
}
