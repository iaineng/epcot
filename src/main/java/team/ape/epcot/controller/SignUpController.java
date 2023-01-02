package team.ape.epcot.controller;

import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.dto.UserSignUpParameterDto;
import team.ape.epcot.service.UserService;
import team.ape.epcot.vo.UserSignUpResultVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SignUpController", value = {"/account/sign_up", "/account/sign_up_result"})
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/app/views/sign_up.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getServletPath().equals("/account/sign_up")) {
            request.getRequestDispatcher("/app/views/sign_up.jsp").forward(request, response);
            return;
        }

        UserSignUpParameterDto param = ParameterDtoFactory.createByHttpRequest(UserSignUpParameterDto.class, request);
        if (!param.validate()) {
            UserSignUpResultVo vo = new UserSignUpResultVo();
            vo.setSucceeded(false);
            vo.setFailReason("参数错误");
            request.setAttribute("userSignUpResultVo", vo);
            request.getRequestDispatcher("/app/views/sign_up_result.jsp").forward(request, response);
            return;
        }

        try (UserService service = new UserService()) {
            request.setAttribute("userSignUpResultVo", service.signUp(param));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("/app/views/sign_up_result.jsp").forward(request, response);
    }
}
