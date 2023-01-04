<%@ page import="team.ape.epcot.vo.OrderPayResultVo" %>
<%@ page import="team.ape.epcot.vo.OrderPayResultVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    OrderPayResultVo orderPayResultVo = (OrderPayResultVo) request.getAttribute("orderPayResultVo");
%>
<html>
<head>
    <title>订单支付结果</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_256x256.png"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/sign_up_result/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/app/assets/js/sign_up_result/bootstrap.bundle.min.js"></script>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/sign_up_result/sign_up_result.css"/>
</head>
<body>
<div id="signUpResultDialog">
    <div class="row">
        <div class="col-5">
            <img src="${pageContext.request.contextPath}/app/assets/images/icon_4096x4096.png"
                 class="w-100 h-100 d-block"/>
        </div>
        <div class="col-7 text-white">
            <div class="text-center fs-5 mb-3">订单支付结果</div>
            <div>
                <div class="mb-4 text-center">
                    <span style="opacity: .65;"><%
                        if (orderPayResultVo.isSucceeded()) {
                            out.write("购买成功");
                        } else {
                            out.write("购买失败：" + orderPayResultVo.getFailReason());
                        }
                    %></span>
                </div>
                <div class="mb-4">
                    <div>5秒后自动返回上次浏览页面</div>
                    <div class="mt-2">
                        <button class="btn btn-outline-light" onclick="redirect()">立即返回</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function redirect() {
        const historyStr = localStorage.getItem('history')
        const histories = historyStr ? JSON.parse(historyStr) : []

        if (histories.length === 0) {
            return
        }

        window.location.href = histories[histories.length - 1].url
    }

    setTimeout(redirect, 5000)
</script>
</body>
</html>
