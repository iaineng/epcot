package team.ape.epcot.controller;

import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.service.GameService;
import team.ape.epcot.service.UserService;
import team.ape.epcot.vo.InventoryVo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "InventoryController", value = "/inventory")
public class InventoryController extends Controller {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserVoEntity user = placeUser(request);
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/account/sign_in");
            return;
        }

        InventoryVo inventoryVo = new InventoryVo();

        try (GameService service = new GameService()) {
            inventoryVo.setGames(service.getAllOwnedGames(user));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.setAttribute("inventoryVo", inventoryVo);

        request.getRequestDispatcher("/app/views/inventory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
