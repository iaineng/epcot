package team.ape.epcot.controller;

import team.ape.epcot.dto.DtoFactory;
import team.ape.epcot.dto.UserRegisterParameterDto;
import team.ape.epcot.service.UserService;
import team.ape.epcot.vo.UserSignUpVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RegisterController", value = "/account/sign_up")
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserSignUpVo vo = new UserSignUpVo();
        vo.setRegistering(false);
        vo.setRegistered(false);
        request.setAttribute("signUpVo", vo);

        request.getRequestDispatcher("/app/views/sign_up.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserRegisterParameterDto param = DtoFactory.createByHttpRequest(UserRegisterParameterDto.class, request);
        if (!param.validate()) {
            UserSignUpVo vo = new UserSignUpVo();
            vo.setRegistering(true);
            vo.setRegistered(false);
            vo.setFailReason("参数错误");
            request.setAttribute("signUpVo", vo);
            request.getRequestDispatcher("/app/views/sign_up.jsp").forward(request, response);
            return;
        }

        try (UserService service = new UserService()) {
            request.setAttribute("signUpVo", service.register(param));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("/app/views/sign_up.jsp").forward(request, response);
    }
}
