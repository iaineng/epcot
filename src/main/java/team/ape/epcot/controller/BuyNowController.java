package team.ape.epcot.controller;

import org.apache.commons.codec.binary.Base64;
import team.ape.epcot.dto.BuyNowParameterDto;
import team.ape.epcot.dto.DetailParameterDto;
import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.service.BuyService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "BuyNowController", value = "/buy_now")
public class BuyNowController extends Controller {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserVoEntity user = placeUser(request);
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/account/sign_in");
            return;
        }

        BuyNowParameterDto param = ParameterDtoFactory.createByHttpRequest(BuyNowParameterDto.class, request);
        param.setTitle(new String(Base64.decodeBase64(URLDecoder.decode(param.getTitle(), StandardCharsets.UTF_8.name())), StandardCharsets.UTF_8));
        if (param.getDlcTitle() != null) {
            param.setDlcTitle(new String(Base64.decodeBase64(URLDecoder.decode(param.getDlcTitle(), StandardCharsets.UTF_8.name())), StandardCharsets.UTF_8));
        }

        try (BuyService service = new BuyService()) {
            request.setAttribute("buyNowVo", service.buyNow(user, param.getTitle(), param.getDlcTitle()));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("/app/views/buy_now.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
