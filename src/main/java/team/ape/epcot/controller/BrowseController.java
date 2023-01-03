package team.ape.epcot.controller;

import team.ape.epcot.service.GameService;
import team.ape.epcot.vo.BrowseVo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "BrowseController", value = "/browse")
public class BrowseController extends Controller {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        placeUser(request);

        BrowseVo browseVo = new BrowseVo();

        try (GameService service = new GameService()) {
            browseVo.setGames(service.getAllGames());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.setAttribute("browseVo", browseVo);

        request.getRequestDispatcher("/app/views/browse.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
