package team.ape.epcot.controller;

import team.ape.epcot.dto.UserRegisterParameterDto;
import team.ape.epcot.service.UserService;
import team.ape.epcot.vo.UserRegisterVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RegisterController", value = "/account/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserRegisterVo vo = new UserRegisterVo();
        vo.setRegistering(false);
        vo.setRegistered(false);
        request.setAttribute("register", vo);

        request.getRequestDispatcher("/app/views/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserRegisterParameterDto param = new UserRegisterParameterDto();
        param.apply(request);
        if (!param.validate()) {
            UserRegisterVo vo = new UserRegisterVo();
            vo.setRegistering(true);
            vo.setRegistered(false);
            vo.setFailReason("参数错误");
            request.setAttribute("register", vo);
            request.getRequestDispatcher("/app/views/register.jsp").forward(request, response);
            return;
        }

        try (UserService service = new UserService()) {
            request.setAttribute("register", service.register(param));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("/app/views/register.jsp").forward(request, response);
    }
}
