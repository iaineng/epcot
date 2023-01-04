package team.ape.epcot.controller;

import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.dto.UserAccountSetParameterDto;
import team.ape.epcot.dto.UserSetPasswordParameterDto;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AccountController", value = {"/account", "/account/set", "/account/set_password"})
public class AccountController extends Controller {
    private void actionShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/app/views/account.jsp").forward(request, response);
    }

    private void actionSetPassword(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        UserSetPasswordParameterDto param = ParameterDtoFactory.createByHttpRequest(UserSetPasswordParameterDto.class, request);
        try (UserService service = new UserService()) {
            service.setUserPassword(user, param);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect(request.getContextPath() + "/account");
    }

    private void actionSet(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        UserAccountSetParameterDto param = ParameterDtoFactory.createByHttpRequest(UserAccountSetParameterDto.class, request);
        try (UserService service = new UserService()) {
            service.setUserAccount(user, param);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect(request.getContextPath() + "/account");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (placeUser(request) == null) {
            response.sendRedirect(request.getContextPath() + "/account/sign_in");
            return;
        }

        actionShow(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserVoEntity user = placeUser(request);
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/account/sign_in");
            return;
        }

        switch (request.getServletPath()) {
            case "/account/set":
                actionSet(request, response, user);
                break;
            case "/account/set_password":
                actionSetPassword(request, response, user);
                break;
        }
    }
}
