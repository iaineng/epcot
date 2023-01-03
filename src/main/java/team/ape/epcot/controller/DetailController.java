package team.ape.epcot.controller;

import org.apache.commons.codec.binary.Base64;
import team.ape.epcot.dto.DetailParameterDto;
import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.service.GameService;
import team.ape.epcot.vo.DetailVo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;

@WebServlet(name = "DetailController", value = "/game/detail")
public class DetailController extends Controller {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        placeUser(request);

        DetailParameterDto param = ParameterDtoFactory.createByHttpRequest(DetailParameterDto.class, request);
        param.setTitle(new String(Base64.decodeBase64(URLDecoder.decode(param.getTitle(), StandardCharsets.UTF_8.name())), StandardCharsets.UTF_8));

        DetailVo detailVo = new DetailVo();

        try (GameService service = new GameService()) {
            detailVo.setGame(service.getGameByTitle(param.getTitle()));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if (detailVo.getGame() == null) {
            response.sendRedirect(request.getContextPath() + "/browse");
            return;
        }

        if (param.getDlcTitle() != null) {
            try (GameService service = new GameService()) {
                detailVo.setDlc(service.getGameDlcByGameTitleAndDlcTitle(param.getTitle(), param.getDlcTitle()));
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            detailVo.setDlcDetail(true);
        }

        request.setAttribute("detailVo", detailVo);

        request.getRequestDispatcher("/app/views/detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
