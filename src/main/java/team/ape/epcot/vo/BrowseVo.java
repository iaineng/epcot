package team.ape.epcot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import team.ape.epcot.entity.GameVoEntity;

import java.util.List;

@Data
@NoArgsConstructor
public class BrowseVo {
    private List<GameVoEntity> games;
}
