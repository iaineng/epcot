package team.ape.epcot.controller;

import team.ape.epcot.dto.BrowseParameterDto;
import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.entity.GameVoEntity;
import team.ape.epcot.service.GameService;
import team.ape.epcot.vo.BrowseVo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.*;

@WebServlet(name = "BrowseController", value = "/browse")
public class BrowseController extends Controller {
    private static List<GameVoEntity> filterGames(BrowseParameterDto param, BrowseVo browseVo) {
        List<GameVoEntity> games = browseVo.getGames();

        String keyword = param.getKeyword();
        if (keyword != null) {
            games.removeIf(game -> !game.getTitle().contains(keyword));
        }

        String tagsStr = param.getTags();
        if (tagsStr != null) {
            List<String> tags = Arrays.asList(tagsStr.split(","));
            games.removeIf(game -> !new HashSet<>(game.getTags()).containsAll(tags));
        }

        String price = param.getPrice();
        if (price != null) {
            switch (price) {
                case "free":
                    games.removeIf(game -> game.getPrice().compareTo(BigDecimal.ZERO) != 0);
                    break;
                case "discounting":
                    games.removeIf(game -> game.getDiscounting() == null);
                    break;
                case "lowerThan70":
                    games.removeIf(game -> game.getActualPrice().compareTo(new BigDecimal(70)) >= 0);
                    break;
                case "lowerThan140":
                    games.removeIf(game -> game.getActualPrice().compareTo(new BigDecimal(140)) >= 0);
                    break;
                case "lowerThan210":
                    games.removeIf(game -> game.getActualPrice().compareTo(new BigDecimal(210)) >= 0);
                    break;
            }
        }

        String sort = param.getSort();
        if (sort != null) {
            switch (sort) {
                case "priceAsc":
                    games.sort(Comparator.comparing(GameVoEntity::getActualPrice));
                    break;
                case "priceDesc":
                    games.sort((g1, g2) -> g2.getActualPrice().compareTo(g1.getActualPrice()));
                    break;
                case "releasedAtAsc":
                    games.sort(Comparator.comparing(GameVoEntity::getReleasedAt));
                    break;
                case "releasedAtDesc":
                    games.sort((g1, g2) -> g2.getReleasedAt().compareTo(g1.getReleasedAt()));
                    break;
                case "titleAsc":
                    games.sort(Comparator.comparing(GameVoEntity::getTitle));
                    break;
                case "titleDesc":
                    games.sort((g1, g2) -> g2.getTitle().compareTo(g1.getTitle()));
                    break;
            }
        }

        return games;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        placeUser(request);

        BrowseParameterDto param = ParameterDtoFactory.createByHttpRequest(BrowseParameterDto.class, request);

        BrowseVo browseVo = new BrowseVo();
        try (GameService service = new GameService()) {
            browseVo.setGames(service.getAllGames());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if ("1".equals(param.getFilter())) {
            browseVo.setGames(filterGames(param, browseVo));
        }

        request.setAttribute("browseVo", browseVo);

        request.getRequestDispatcher("/app/views/browse.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
