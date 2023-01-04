package team.ape.epcot.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class OrderPayParameterDto {
    @Param(name = "out_trade_no")
    private String sn;
}
