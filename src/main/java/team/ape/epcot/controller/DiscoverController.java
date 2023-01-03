package team.ape.epcot.controller;

import team.ape.epcot.service.DiscoverService;
import team.ape.epcot.vo.DiscoverVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DiscoverController", value = "/discover")
public class DiscoverController extends Controller {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        placeUser(request);

        DiscoverVo discoverVo = new DiscoverVo();

        try (DiscoverService service = new DiscoverService()) {
            discoverVo.setBanners(service.getBanners());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.setAttribute("discoverVo", discoverVo);

        request.getRequestDispatcher("/app/views/discover.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
