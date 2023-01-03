<%@ page import="team.ape.epcot.entity.UserVoEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserVoEntity user = (UserVoEntity) request.getAttribute("userVoEntity");
%>
<html>
<head>
    <title>探索</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_256x256.png"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/discover/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/app/assets/js/discover/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/discover/header.css"/>
</head>
<body>
<header>
    <nav id="nav">
        <div>
            <div class="logo">
                <a href="${pageContext.request.contextPath}/">
                    <img src="${pageContext.request.contextPath}/app/assets/images/icon_4096x4096.png"/>
                </a>
            </div>
            <div class="true-nav">
                <ul>
                    <li>
                        <a class="link active" href="javascript:void(0);">
                            <span class="link-text">商城</span>
                        </a>
                    </li>
                    <li>
                        <a class="link" href="javascript:void(0);">
                            <span class="link-text">常见问题</span>
                        </a>
                    </li>
                    <li>
                        <a class="link" href="javascript:void(0);">
                            <span class="link-text">帮助</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="user-login">
                <%
                    if (user == null) {
                %>
                <a href="${pageContext.request.contextPath}/account/sign_in" class="link">
                    <i class="bi bi-person-fill-exclamation"></i>
                    <span>登录</span>
                </a>
                <%
                } else {
                %>
                <a href="${pageContext.request.contextPath}/account" class="link">
                    <i class="bi bi-person-fill"></i>
                    <span style="text-transform: uppercase;"><%
                        out.write(user.getNickname());
                    %></span>
                </a>
                <%
                    }
                %>
            </div>
            <div class="clearfix"></div>
        </div>
    </nav>
</header>
</body>
</html>
