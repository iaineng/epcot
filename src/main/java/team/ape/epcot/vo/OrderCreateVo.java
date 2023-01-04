package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
public class OrderCreateVo {
    private boolean isSucceeded;
    private String failReason;
    private String sn;
    private BigDecimal price;
}
