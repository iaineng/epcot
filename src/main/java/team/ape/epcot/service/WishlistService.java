package team.ape.epcot.service;

import team.ape.epcot.dao.GameDao;
import team.ape.epcot.dao.UserDao;
import team.ape.epcot.dao.UserWishListDao;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.po.GamePo;
import team.ape.epcot.po.UserPo;
import team.ape.epcot.po.UserWishListPo;
import team.ape.epcot.vo.WishlistModifyVo;

import java.sql.SQLException;

public class WishlistService extends Service {
    private final GameDao gameDao = new GameDao();
    private final UserDao userDao = new UserDao();
    private final UserWishListDao userWishListDao = new UserWishListDao();

    public WishlistModifyVo modifyWishlist(UserVoEntity user, String title, boolean add) throws SQLException {
        UserPo userPo = userDao.getByEmail(user.getEmail());
        GamePo gamePo = gameDao.getByTitle(title);

        WishlistModifyVo vo = new WishlistModifyVo();
        vo.setSucceeded(false);

        if (userPo == null) {
            vo.setFailReason("用户不存在");
            return vo;
        }

        if (gamePo == null) {
            vo.setFailReason("游戏不存在");
            return vo;
        }

        if (add) {
            UserWishListPo userWishListPo = new UserWishListPo();
            userWishListPo.setUserId(userPo.getId());
            userWishListPo.setGameId(gamePo.getId());
            userWishListDao.insert(userWishListPo);
        } else {
            if (userWishListDao.deleteByUserIdAndGameId(userPo.getId(), gamePo.getId()) == 0) {
                vo.setFailReason("用户未收藏该游戏");
                return vo;
            }
        }
        
        vo.setSucceeded(true);
        return vo;
    }

    @Override
    public void close() throws SQLException {
        gameDao.close();
        userDao.close();
        userWishListDao.close();
    }
}
