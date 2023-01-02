package team.ape.epcot.controller;

import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.dto.UserSignInParameterDto;
import team.ape.epcot.dto.UserSignUpParameterDto;
import team.ape.epcot.service.UserService;
import team.ape.epcot.vo.UserSignInResultVo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SignInController", value = {"/account/sign_in", "/account/sign_in_result"})
public class SignInController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/app/views/sign_in.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getServletPath().equals("/account/sign_in")) {
            request.getRequestDispatcher("/app/views/sign_in.jsp").forward(request, response);
            return;
        }

        UserSignInParameterDto param = ParameterDtoFactory.createByHttpRequest(UserSignInParameterDto.class, request);
        if (!param.validate()) {
            UserSignInResultVo vo = new UserSignInResultVo();
            vo.setSucceeded(false);
            vo.setFailReason("参数错误");
            request.setAttribute("userSignInResultVo", vo);
            request.getRequestDispatcher("/app/views/sign_in_result.jsp").forward(request, response);
            return;
        }

        try (UserService service = new UserService()) {
            request.setAttribute("userSignInResultVo", service.signIn(param.getEmail(), param.getPassword()));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("/app/views/sign_in_result.jsp").forward(request, response);
    }
}
