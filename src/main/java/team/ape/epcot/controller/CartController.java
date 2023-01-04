package team.ape.epcot.controller;

import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.dto.UserCartModifyParameterDto;
import team.ape.epcot.entity.GameVoEntity;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.service.CartService;
import team.ape.epcot.service.GameService;
import team.ape.epcot.util.DecoderUtils;
import team.ape.epcot.vo.CartVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;

@WebServlet(name = "CartController", value = {"/cart", "/cart/add", "/cart/remove"})
public class CartController extends Controller {
    private void actionRemove(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        UserCartModifyParameterDto param = ParameterDtoFactory.createByHttpRequest(UserCartModifyParameterDto.class, request);
        param.setTitle(DecoderUtils.base64(param.getTitle()));
        param.setBackUrl(DecoderUtils.base64(param.getBackUrl()));

        try (CartService service = new CartService()) {
            service.modifyCart(user, param.getTitle(), false);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect(param.getBackUrl());
    }

    private void actionAdd(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        UserCartModifyParameterDto param = ParameterDtoFactory.createByHttpRequest(UserCartModifyParameterDto.class, request);
        param.setTitle(DecoderUtils.base64(param.getTitle()));
        param.setBackUrl(DecoderUtils.base64(param.getBackUrl()));

        try (CartService service = new CartService()) {
            service.modifyCart(user, param.getTitle(), true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect(param.getBackUrl());
    }

    private void actionShow(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        CartVo cartVo = new CartVo();

        try (GameService service = new GameService()) {
            cartVo.setGames(service.getCart(user));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        cartVo.setGameTitles(cartVo.getGames().stream().map(GameVoEntity::getTitle).reduce((a, b) -> a + "," + b).orElse(""));

        BigDecimal actualTotal = new BigDecimal(0);
        BigDecimal discountTotal = new BigDecimal(0);
        BigDecimal priceTotal = new BigDecimal(0);
        for (GameVoEntity game : cartVo.getGames()) {
            actualTotal = actualTotal.add(game.getActualPrice());
            discountTotal = discountTotal.add(game.getPrice().subtract(game.getActualPrice()));
            priceTotal = priceTotal.add(game.getPrice());
        }

        cartVo.setActualTotal(actualTotal);
        cartVo.setDiscountTotal(discountTotal);
        cartVo.setPriceTotal(priceTotal);

        request.setAttribute("cartVo", cartVo);

        request.getRequestDispatcher("/app/views/cart.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserVoEntity user = placeUser(request);
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/account/sign_in");
            return;
        }

        switch (request.getServletPath()) {
            case "/cart":
                actionShow(request, response, user);
                break;
            case "/cart/add":
                actionAdd(request, response, user);
                break;
            case "/cart/remove":
                actionRemove(request, response, user);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
