package team.ape.epcot.controller;

import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.service.UserService;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public abstract class Controller extends HttpServlet {
    protected UserVoEntity placeUser(HttpServletRequest request) {
        UserVoEntity user;
        try (UserService service = new UserService()) {
            user = service.getUser(request.getCookies());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.setAttribute("userVoEntity", user);

        return user;
    }
}
