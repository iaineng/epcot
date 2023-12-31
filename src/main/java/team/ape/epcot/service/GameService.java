package team.ape.epcot.service;

import team.ape.epcot.dao.DiscountingGameDao;
import team.ape.epcot.dao.GameDao;
import team.ape.epcot.dao.GameDlcDao;
import team.ape.epcot.dao.PreorderingGameDao;
import team.ape.epcot.entity.GameVoEntity;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.po.DiscountingGamePo;
import team.ape.epcot.po.GameDlcPo;
import team.ape.epcot.po.GamePo;
import team.ape.epcot.po.PreorderingGamePo;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class GameService extends Service {
    private final GameDao gameDao = new GameDao();
    private final DiscountingGameDao discountingGameDao = new DiscountingGameDao();
    private final PreorderingGameDao preorderingGameDao = new PreorderingGameDao();
    private final GameDlcDao gameDlcDao = new GameDlcDao();

    private GameVoEntity.Dlc gameDlcPo2Dlc(GameDlcPo gameDlcPo, UserVoEntity user) {
        GameVoEntity.Dlc dlc = new GameVoEntity.Dlc();
        dlc.setTitle(gameDlcPo.getTitle());
        dlc.setDescription(gameDlcPo.getDescription());
        dlc.setPrice(gameDlcPo.getPrice());
        dlc.setCoverUrls(new ArrayList<>(Arrays.asList(gameDlcPo.getCoverUrls().split(","))));
        dlc.setDownloadLink(gameDlcPo.getDownloadLink());
        dlc.setReleasedAt(gameDlcPo.getReleasedAt());
        if (user != null) {
            dlc.setOwned(user.getOwnedDlcIds().contains(gameDlcPo.getId()));
        }
        return dlc;
    }

    private GameVoEntity.Dlc gameDlcPo2Dlc(GameDlcPo gameDlcPo) {
        return gameDlcPo2Dlc(gameDlcPo, null);
    }

    private GameVoEntity gamePo2GameVoEntity(GamePo gamePo, UserVoEntity user) throws SQLException {
        GameVoEntity game = new GameVoEntity();
        game.setTitle(gamePo.getTitle());
        game.setDescription(gamePo.getDescription());
        game.setCoverUrls(new ArrayList<>(Arrays.asList(gamePo.getCoverUrls().split(","))));
        game.setDownloadLink(gamePo.getDownloadLink());
        game.setPrice(gamePo.getPrice());
        game.setTags(new ArrayList<>(Arrays.asList(gamePo.getTags().split(","))));
        game.setPlatforms(new ArrayList<>(Arrays.asList(gamePo.getPlatforms().split(","))));
        if (gamePo.getReviews() != null) {
            game.setReviews(new ArrayList<>(Arrays.asList(gamePo.getReviews().split(","))));
        }
        if (gamePo.getMarks() != null) {
            game.setMarks(new ArrayList<>(Arrays.asList(gamePo.getMarks().split(","))));
        }
        game.setDeveloper(gamePo.getDeveloper());
        game.setPublisher(gamePo.getPublisher());
        game.setReleasedAt(gamePo.getReleasedAt());
        if (user != null) {
            game.setOwned(user.getOwnedGameIds().contains(gamePo.getId()));
            game.setInWishlist(user.getWishlistGameIds().contains(gamePo.getId()));
            game.setInCart(user.getCartGameIds().contains(gamePo.getId()));
        }

        DiscountingGamePo discountingGamePo = discountingGameDao.getByGameId(gamePo.getId());
        if (discountingGamePo != null) {
            GameVoEntity.Discounting discounting = new GameVoEntity.Discounting();
            discounting.setDiscountPercentage(discountingGamePo.getDiscountPercentage());
            discounting.setDiscountedPrice(gamePo.getPrice().multiply(new BigDecimal(100 - discountingGamePo.getDiscountPercentage())).divide(new BigDecimal(100), 2, RoundingMode.HALF_UP));
            discounting.setStartedAt(discountingGamePo.getStartedAt());
            discounting.setFinishedAt(discountingGamePo.getFinishedAt());
            game.setDiscounting(discounting);
        } else {
            game.setDiscounting(null);
        }

        PreorderingGamePo preorderingGamePo = preorderingGameDao.getByGameId(gamePo.getId());
        if (preorderingGamePo != null) {
            GameVoEntity.Preordering preordering = new GameVoEntity.Preordering();
            preordering.setStartedAt(preorderingGamePo.getStartedAt());
            preordering.setFinishedAt(preorderingGamePo.getFinishedAt());
            game.setPreordering(preordering);
        } else {
            game.setPreordering(null);
        }

        List<GameDlcPo> gameDlcPos = gameDlcDao.getsByGameId(gamePo.getId());
        List<GameVoEntity.Dlc> dlcs = new ArrayList<>();
        for (GameDlcPo gameDlcPo : gameDlcPos) {
            dlcs.add(gameDlcPo2Dlc(gameDlcPo, user));
        }
        game.setDlcs(dlcs);

        return game;
    }

    private GameVoEntity gamePo2GameVoEntity(GamePo gamePo) throws SQLException {
        return gamePo2GameVoEntity(gamePo, null);
    }

    public List<GameVoEntity> getAllGames() throws SQLException {
        List<GamePo> gamePos = gameDao.getAll();

        List<GameVoEntity> games = new ArrayList<>();
        for (GamePo gamePo : gamePos) {
            games.add(gamePo2GameVoEntity(gamePo));
        }

        return games;
    }

    public GameVoEntity getGameByTitle(String title, UserVoEntity user) throws SQLException {
        GamePo gamePo = gameDao.getByTitle(title);
        if (gamePo == null) {
            return null;
        }

        return gamePo2GameVoEntity(gamePo, user);
    }

    public GameVoEntity getGameByTitle(String title) throws SQLException {
        return getGameByTitle(title, null);
    }

    public GameVoEntity.Dlc getGameDlcByGameTitleAndDlcTitle(String gameTitle, String dlcTitle, UserVoEntity user) throws SQLException {
        GamePo gamePo = gameDao.getByTitle(gameTitle);
        if (gamePo == null) {
            return null;
        }

        List<GameDlcPo> gameDlcPos = gameDlcDao.getsByGameId(gamePo.getId());
        for (GameDlcPo gameDlcPo : gameDlcPos) {
            if (gameDlcPo.getTitle().equals(dlcTitle)) {
                return gameDlcPo2Dlc(gameDlcPo, user);
            }
        }
        return null;
    }

    public GameVoEntity.Dlc getGameDlcByGameTitleAndDlcTitle(String gameTitle, String dlcTitle) throws SQLException {
        return getGameDlcByGameTitleAndDlcTitle(gameTitle, dlcTitle, null);
    }

    public List<GameVoEntity> getAllOwnedGames(UserVoEntity user) throws SQLException {
        List<GamePo> gamePos = gameDao.getAll();

        List<GameVoEntity> games = new ArrayList<>();
        for (GamePo gamePo : gamePos) {
            if (user.getOwnedGameIds().contains(gamePo.getId())) {
                games.add(gamePo2GameVoEntity(gamePo, user));
            }
        }

        return games;
    }

    public List<GameVoEntity> getWishlist(UserVoEntity user) throws SQLException {
        List<GamePo> gamePos = gameDao.getAll();

        List<GameVoEntity> games = new ArrayList<>();
        for (GamePo gamePo : gamePos) {
            if (user.getWishlistGameIds().contains(gamePo.getId())) {
                games.add(gamePo2GameVoEntity(gamePo, user));
            }
        }

        return games;
    }

    public List<GameVoEntity> getCart(UserVoEntity user) throws SQLException {
        List<GamePo> gamePos = gameDao.getAll();

        List<GameVoEntity> games = new ArrayList<>();
        for (GamePo gamePo : gamePos) {
            if (user.getCartGameIds().contains(gamePo.getId())) {
                games.add(gamePo2GameVoEntity(gamePo, user));
            }
        }

        return games;
    }

    @Override
    public void close() throws SQLException {
        gameDao.close();
        discountingGameDao.close();
        preorderingGameDao.close();
        gameDlcDao.close();
    }
}
