package team.ape.epcot.service;

import team.ape.epcot.dao.GameDao;
import team.ape.epcot.dao.UserCartDao;
import team.ape.epcot.dao.UserDao;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.po.GamePo;
import team.ape.epcot.po.UserCartPo;
import team.ape.epcot.po.UserPo;
import team.ape.epcot.vo.CartModifyVo;

import java.sql.SQLException;

public class CartService extends Service {
    private final GameDao gameDao = new GameDao();
    private final UserDao userDao = new UserDao();
    private final UserCartDao userCartDao = new UserCartDao();

    public CartModifyVo modifyCart(UserVoEntity user, String title, boolean add) throws SQLException {
        UserPo userPo = userDao.getByEmail(user.getEmail());
        GamePo gamePo = gameDao.getByTitle(title);

        CartModifyVo vo = new CartModifyVo();
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
            UserCartPo userCartPo = new UserCartPo();
            userCartPo.setUserId(userPo.getId());
            userCartPo.setGameId(gamePo.getId());
            userCartDao.insert(userCartPo);
        } else {
            if (userCartDao.deleteByUserIdAndGameId(userPo.getId(), gamePo.getId()) == 0) {
                vo.setFailReason("用户未添加该游戏");
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
        userCartDao.close();
    }
}
