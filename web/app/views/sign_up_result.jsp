<%@ page import="team.ape.epcot.vo.UserSignUpResultVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserSignUpResultVo userSignUpResultVo = (UserSignUpResultVo) request.getAttribute("userSignUpResultVo");
%>
<html>
<head>
    <title>注册结果</title>
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
            <div class="text-center fs-5 mb-3">注册结果</div>
            <div>
                <div class="mb-4 text-center">
                    <span style="opacity: .65;"><%
                        if (userSignUpResultVo.isSucceeded()) {
                            out.write("注册成功");
                        } else {
                            out.write("注册失败：" + userSignUpResultVo.getFailReason());
                        }
                    %></span>
                </div>
                <div class="mb-4">
                    <div class="row">
                        <div class="col-6 text-center">
                            <a href="${pageContext.request.contextPath}/account/sign_in" class="text-white">返回登录</a>
                        </div>
                        <div class="col-6 text-center">
                            <a href="${pageContext.request.contextPath}/account/sign_up" class="text-white">返回注册</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
