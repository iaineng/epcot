package team.ape.epcot.controller;

import org.apache.commons.codec.binary.Base64;
import team.ape.epcot.dto.DetailDlcParameterDto;
import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.service.GameService;
import team.ape.epcot.vo.DetailDlcVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;

@WebServlet(name = "DetailDlcController", value = "/game/detail/dlc")
public class DetailDlcController extends Controller {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        placeUser(request);

        DetailDlcParameterDto param = ParameterDtoFactory.createByHttpRequest(DetailDlcParameterDto.class, request);
        param.setTitle(new String(Base64.decodeBase64(URLDecoder.decode(param.getTitle(), StandardCharsets.UTF_8.name())), StandardCharsets.UTF_8));

        DetailDlcVo detailDlcVo = new DetailDlcVo();

        try (GameService service = new GameService()) {
            detailDlcVo.setGame(service.getGameByTitle(param.getTitle()));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if (detailDlcVo.getGame() == null) {
            response.sendRedirect(request.getContextPath() + "/browse");
            return;
        }

        request.setAttribute("detailDlcVo", detailDlcVo);

        request.getRequestDispatcher("/app/views/detail_dlc.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
