package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import team.ape.epcot.entity.GameVoEntity;

@Data
@NoArgsConstructor
public class DetailVo {
    private GameVoEntity game;
    private GameVoEntity.Dlc dlc;
    private boolean isDlcDetail;
}
