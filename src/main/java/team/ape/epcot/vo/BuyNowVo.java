package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BuyNowVo {
    private boolean isSucceeded;
    private String failReason;
}
