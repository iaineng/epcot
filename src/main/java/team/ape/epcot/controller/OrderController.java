package team.ape.epcot.controller;

import org.apache.commons.codec.digest.DigestUtils;
import team.ape.epcot.dto.OrderCreateParameterDto;
import team.ape.epcot.dto.OrderPayParameterDto;
import team.ape.epcot.dto.ParameterDtoFactory;
import team.ape.epcot.entity.UserVoEntity;
import team.ape.epcot.service.OrderService;
import team.ape.epcot.util.DecoderUtils;
import team.ape.epcot.vo.OrderCreateVo;
import team.ape.epcot.vo.OrderPayResultVo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "OrderController", value = {"/order/create", "/order/pay"})
public class OrderController extends Controller {
    private void actionCreate(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        OrderCreateParameterDto param = ParameterDtoFactory.createByHttpRequest(OrderCreateParameterDto.class, request);
        if (param.getTitles() != null) {
            param.setTitles(DecoderUtils.base64(param.getTitles()));
        }
        if (param.getDlcTitles() != null) {
            param.setDlcTitles(DecoderUtils.base64(param.getDlcTitles()));
        }

        OrderCreateVo orderCreateVo;
        try (OrderService service = new OrderService()) {
            orderCreateVo = service.createOrder(user, param);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        String payUrl = request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort()
                + request.getContextPath() + "/order/pay";

        String sign = DigestUtils.md5Hex("money=" + orderCreateVo.getPrice().toString()
                + "&name=" + orderCreateVo.getSn()
                + "&notify_url=" + payUrl
                + "&out_trade_no=" + orderCreateVo.getSn()
                + "&pid=138031623&return_url=" + payUrl
                + "&sitename=EPCOT&type=alipay5eqgSegSS6s");

        response.sendRedirect("https://codepay.ymxin.top/submit.php?pid=138031623&type=alipay&out_trade_no="
                + orderCreateVo.getSn()
                + "&notify_url=" + payUrl
                + "&return_url=" + payUrl
                + "&name=" + orderCreateVo.getSn()
                + "&money=" + orderCreateVo.getPrice().toString()
                + "&sitename=EPCOT&sign="
                + sign + "&sign_type=MD5");
    }

    private void actionPay(HttpServletRequest request, HttpServletResponse response, UserVoEntity user) throws ServletException, IOException {
        OrderPayParameterDto param = ParameterDtoFactory.createByHttpRequest(OrderPayParameterDto.class, request);

        OrderPayResultVo orderPayResultVo;
        try (OrderService service = new OrderService()) {
            orderPayResultVo = service.payOrder(user, param.getSn());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.setAttribute("orderPayResultVo", orderPayResultVo);

        request.getRequestDispatcher("/app/views/order_pay_result.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserVoEntity user = placeUser(request);
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/account/sign_in");
            return;
        }

        switch (request.getServletPath()) {
            case "/order/create":
                actionCreate(request, response, user);
                break;
            case "/order/pay":
                actionPay(request, response, user);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
