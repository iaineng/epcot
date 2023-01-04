package team.ape.epcot.controller;

import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.dto.UserWishlistModifyParameterDto;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.service.GameService;
import team.ape.epcot.service.WishlistService;
import team.ape.epcot.util.DecoderUtils;
import team.ape.epcot.vo.WishlistVo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "WishlistController", value = {"/wishlist", "/wishlist/add", "/wishlist/remove"})
public class WishlistController extends Controller {
    private void actionRemove(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        UserWishlistModifyParameterDto param = ParameterDtoFactory.createByHttpRequest(UserWishlistModifyParameterDto.class, request);
        param.setTitle(DecoderUtils.base64(param.getTitle()));
        param.setBackUrl(DecoderUtils.base64(param.getBackUrl()));

        try (WishlistService service = new WishlistService()) {
            service.modifyWishlist(user, param.getTitle(), false);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect(param.getBackUrl());
    }

    private void actionAdd(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        UserWishlistModifyParameterDto param = ParameterDtoFactory.createByHttpRequest(UserWishlistModifyParameterDto.class, request);
        param.setTitle(DecoderUtils.base64(param.getTitle()));
        param.setBackUrl(DecoderUtils.base64(param.getBackUrl()));

        try (WishlistService service = new WishlistService()) {
            service.modifyWishlist(user, param.getTitle(), true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect(param.getBackUrl());
    }

    private void actionShow(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        WishlistVo wishlistVo = new WishlistVo();

        try (GameService service = new GameService()) {
            wishlistVo.setGames(service.getWishlist(user));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.setAttribute("wishlistVo", wishlistVo);

        request.getRequestDispatcher("/app/views/wishlist.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserVoEntity user = placeUser(request);
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/account/sign_in");
            return;
        }

        switch (request.getServletPath()) {
            case "/wishlist":
                actionShow(request, response, user);
                break;
            case "/wishlist/add":
                actionAdd(request, response, user);
                break;
            case "/wishlist/remove":
                actionRemove(request, response, user);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
