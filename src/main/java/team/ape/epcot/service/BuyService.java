package team.ape.epcot.service;

import team.ape.epcot.dao.*;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.po.*;
import team.ape.epcot.vo.BuyNowVo;

import java.sql.SQLException;

public class BuyService extends Service {
    private final GameDao gameDao = new GameDao();
    private final GameDlcDao gameDlcDao = new GameDlcDao();
    private final UserGameAssetDao userGameAssetDao = new UserGameAssetDao();
    private final UserGameDlcAssetDao userGameDlcAssetDao = new UserGameDlcAssetDao();
    private final UserDao userDao = new UserDao();

    public BuyNowVo buyNow(UserVoEntity user, String title, String dlcTitle) throws SQLException {
        UserPo userPo = userDao.getByEmail(user.getEmail());
        GamePo gamePo = gameDao.getByTitle(title);

        BuyNowVo vo = new BuyNowVo();
        vo.setSucceeded(false);

        if (userPo == null) {
            vo.setFailReason("用户不存在");
            return vo;
        }

        if (gamePo == null) {
            vo.setFailReason("游戏不存在");
            return vo;
        }

        if (dlcTitle == null) {
            UserGameAssetPo userGameAssetPo = new UserGameAssetPo();
            userGameAssetPo.setUserId(userPo.getId());
            userGameAssetPo.setGameId(gamePo.getId());
            userGameAssetDao.insert(userGameAssetPo);
        } else {
            GameDlcPo gameDlcPo = gameDlcDao.getByTitle(dlcTitle);

            UserGameDlcAssetPo userGameDlcAssetPo = new UserGameDlcAssetPo();
            userGameDlcAssetPo.setUserId(userPo.getId());
            userGameDlcAssetPo.setGameDlcId(gameDlcPo.getId());
            userGameDlcAssetDao.insert(userGameDlcAssetPo);
        }

        vo.setSucceeded(true);
        return vo;
    }

    @Override
    public void close() throws SQLException {
        gameDao.close();
        gameDlcDao.close();
        userGameAssetDao.close();
        userGameDlcAssetDao.close();
        userDao.close();
    }
}
