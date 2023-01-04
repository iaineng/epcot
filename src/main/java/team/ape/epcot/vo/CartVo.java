package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import team.ape.epcot.entity.GameVoEntity;

import java.math.BigDecimal;
import java.util.List;

@Data
@NoArgsConstructor
public class CartVo {
    private BigDecimal actualTotal;
    private BigDecimal discountTotal;
    private BigDecimal priceTotal;

    private List<GameVoEntity> games;
    private String gameTitles;
}
