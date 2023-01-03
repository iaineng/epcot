<%@ page import="team.ape.epcot.vo.UserSignInResultVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserSignInResultVo userSignInResultVo = (UserSignInResultVo) request.getAttribute("userSignInResultVo");

    if (userSignInResultVo.isSucceeded()) {
        Cookie tokenCookie = new Cookie("token", userSignInResultVo.getToken());
        tokenCookie.setMaxAge(60 * 60 * 24);
        tokenCookie.setPath(pageContext.getRequest().getServletContext().getContextPath());
        response.addCookie(tokenCookie);
    }
%>
<html>
<head>
    <title>注册结果</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_256x256.png"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/sign_in_result/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/app/assets/js/sign_in_result/bootstrap.bundle.min.js"></script>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/sign_in_result/sign_in_result.css"/>
</head>
<body>
<div id="signUpResultDialog">
    <div class="row">
        <div class="col-5">
            <img src="${pageContext.request.contextPath}/app/assets/images/icon_4096x4096.png"
                 class="w-100 h-100 d-block"/>
        </div>
        <div class="col-7 text-white">
            <div class="text-center fs-5 mb-3">登录结果</div>
            <div>
                <div class="mb-4 text-center">
                    <span style="opacity: .65;"><%
                        if (userSignInResultVo.isSucceeded()) {
                            out.write("登录成功");
                        } else {
                            out.write("登录失败：" + userSignInResultVo.getFailReason());
                        }
                    %></span>
                </div>
                <div class="mb-4">
                    <div class="row">
                        <div class="col-6 text-center">
                            <a href="${pageContext.request.contextPath}/account/sign_in" class="text-white">返回登录</a>
                        </div>
                        <div class="col-6 text-center">
                            <a href="${pageContext.request.contextPath}/" class="text-white">返回首页</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
