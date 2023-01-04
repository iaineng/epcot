package team.ape.epcot.service;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.RandomStringUtils;
import team.ape.epcot.dao.*;
import team.ape.epcot.dto.OrderCreateParameterDto;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.po.*;
import team.ape.epcot.vo.OrderCreateVo;
import team.ape.epcot.vo.OrderPayResultVo;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class OrderService extends Service {
    private final OrderDao orderDao = new OrderDao();
    private final GameDao gameDao = new GameDao();
    private final DiscountingGameDao discountingGameDao = new DiscountingGameDao();
    private final GameDlcDao gameDlcDao = new GameDlcDao();
    private final UserDao userDao = new UserDao();
    private final UserGameAssetDao userGameAssetDao = new UserGameAssetDao();
    private final UserGameDlcAssetDao userGameDlcAssetDao = new UserGameDlcAssetDao();
    private final UserCartDao userCartDao = new UserCartDao();
    private final UserWishListDao userWishListDao = new UserWishListDao();

    private List<String> split(String titles) {
        if (titles == null) {
            return new ArrayList<>();
        }

        return new ArrayList<>(Arrays.asList(titles.split(",")));
    }

    public OrderCreateVo createOrder(UserVoEntity user, OrderCreateParameterDto param) throws SQLException {
        OrderCreateVo orderCreateVo = new OrderCreateVo();
        orderCreateVo.setSucceeded(false);

        List<String> gameTitles = split(param.getTitles());
        List<String> gameDlcTitles = split(param.getDlcTitles());

        UserPo userPo = userDao.getByEmail(user.getEmail());

        List<GamePo> gamePos = gameDao.getsByTitles(gameTitles);
        List<GameDlcPo> gameDlcPos = gameDlcDao.getsByTitles(gameDlcTitles);

        String gameIds = gamePos.stream().map(gamePo -> String.valueOf(gamePo.getId())).reduce((a, b) -> a + "," + b).orElse(null);
        String gameDlcIds = gameDlcPos.stream().map(gameDlcPo -> String.valueOf(gameDlcPo.getId())).reduce((a, b) -> a + "," + b).orElse(null);

        OrderPo orderPo = new OrderPo();
        orderPo.setSn(System.currentTimeMillis() + DigestUtils.md5Hex(userPo.getId() + RandomStringUtils.randomAscii(8)));
        orderPo.setUserId(userPo.getId());
        orderPo.setGameIds(gameIds);
        orderPo.setGameDlcIds(gameDlcIds);
        orderPo.setStatus(0);

        BigDecimal price = new BigDecimal(0);
        for (GamePo gamePo : gamePos) {
            DiscountingGamePo discountingGamePo = discountingGameDao.getByGameId(gamePo.getId());
            if (discountingGamePo != null) {
                price = price.add(gamePo.getPrice().subtract(gamePo.getPrice().multiply(new BigDecimal(discountingGamePo.getDiscountPercentage()).divide(new BigDecimal(100), 2, RoundingMode.HALF_UP))));
            } else {
                price = price.add(gamePo.getPrice());
            }
        }
        orderPo.setPrice(price);

        orderDao.insert(orderPo);

        orderCreateVo.setSucceeded(true);
        orderCreateVo.setSn(orderPo.getSn());
        orderCreateVo.setPrice(orderPo.getPrice());

        return orderCreateVo;
    }

    public OrderPayResultVo payOrder(UserVoEntity user, String sn) throws SQLException {
        OrderPayResultVo orderPayResultVo = new OrderPayResultVo();
        orderPayResultVo.setSucceeded(false);

        OrderPo orderPo = orderDao.getBySn(sn);
        if (orderPo == null) {
            orderPayResultVo.setFailReason("未找到订单");
            return orderPayResultVo;
        }

        UserPo userPo = userDao.getByEmail(user.getEmail());
        if (userPo == null) {
            orderPayResultVo.setFailReason("未找到用户");
            return orderPayResultVo;
        }

        String gameIdsStr = orderPo.getGameIds();
        if (gameIdsStr != null) {
            String[] gameIds = gameIdsStr.split(",");
            for (String gameId : gameIds) {
                UserGameAssetPo userGameAssetPo = new UserGameAssetPo();
                userGameAssetPo.setUserId(userPo.getId());
                userGameAssetPo.setGameId(Long.parseLong(gameId));
                userGameAssetDao.insert(userGameAssetPo);

                userCartDao.deleteByUserIdAndGameId(userPo.getId(), Long.parseLong(gameId));
                userWishListDao.deleteByUserIdAndGameId(userPo.getId(), Long.parseLong(gameId));
            }
        }

        String dlcIdsStr = orderPo.getGameDlcIds();
        if (dlcIdsStr != null) {
            String[] dlcIds = dlcIdsStr.split(",");
            for (String dlcId : dlcIds) {
                UserGameDlcAssetPo userGameDlcAssetPo = new UserGameDlcAssetPo();
                userGameDlcAssetPo.setUserId(userPo.getId());
                userGameDlcAssetPo.setGameDlcId(Long.parseLong(dlcId));
                userGameDlcAssetDao.insert(userGameDlcAssetPo);
            }
        }

        orderPo.setStatus(1);
        orderDao.update(orderPo);

        orderPayResultVo.setSucceeded(true);

        return orderPayResultVo;
    }

    @Override
    public void close() throws SQLException {
        orderDao.close();
        gameDao.close();
        discountingGameDao.close();
        gameDlcDao.close();
        userDao.close();
        userGameAssetDao.close();
        userGameDlcAssetDao.close();
        userCartDao.close();
        userWishListDao.close();
    }
}
