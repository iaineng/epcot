package team.ape.epcot.controller;

import team.ape.epcot.dto.DetailParameterDto;
import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.service.GameService;
import team.ape.epcot.util.DecoderUtils;
import team.ape.epcot.vo.DetailVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DetailController", value = "/game/detail")
public class DetailController extends Controller {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserVoEntity user = placeUser(request);

        DetailParameterDto param = ParameterDtoFactory.createByHttpRequest(DetailParameterDto.class, request);
        param.setTitle(DecoderUtils.base64(param.getTitle()));

        DetailVo detailVo = new DetailVo();

        try (GameService service = new GameService()) {
            detailVo.setGame(service.getGameByTitle(param.getTitle(), user));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if (detailVo.getGame() == null) {
            response.sendRedirect(request.getContextPath() + "/browse");
            return;
        }

        if (param.getDlcTitle() != null) {
            param.setDlcTitle(DecoderUtils.base64(param.getDlcTitle()));
            try (GameService service = new GameService()) {
                detailVo.setDlc(service.getGameDlcByGameTitleAndDlcTitle(param.getTitle(), param.getDlcTitle(), user));
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
