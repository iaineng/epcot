<%@ page import="team.ape.epcot.vo.BuyNowVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BuyNowVo buyNowVo = (BuyNowVo) request.getAttribute("buyNowVo");
%>
<html>
<head>
    <title>购买结果</title>
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
            <div class="text-center fs-5 mb-3">购买结果</div>
            <div>
                <div class="mb-4 text-center">
                    <span style="opacity: .65;"><%
                        if (buyNowVo.isSucceeded()) {
                            out.write("购买成功");
                        } else {
                            out.write("注册失败：" + buyNowVo.getFailReason());
                        }
                    %></span>
                </div>
                <div class="mb-4">
                    <div class="row">
                        <div class="col-6 text-center">
                            <a href="${pageContext.request.contextPath}/inventory" class="text-white">返回库存</a>
                        </div>
                        <div class="col-6 text-center">
                            <a href="${pageContext.request.contextPath}/browse" class="text-white">返回浏览</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
