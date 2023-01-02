<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录 EPCOT 账户</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_4096x4096.png"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/sign_in/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/app/assets/js/sign_in/bootstrap.bundle.min.js"></script>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/sign_in/sign_in.css"/>
</head>
<body>
<div id="signInDialog">
    <div class="row">
        <div class="col-5">
            <img src="${pageContext.request.contextPath}/app/assets/images/icon_4096x4096.png"
                 class="w-100 h-100 d-block"/>
        </div>
        <div class="col-7 text-white">
            <div class="text-center fs-5 mb-3">用 Epcot 账户登录</div>
            <div>
                <form method="post" action="${pageContext.request.contextPath}/account/sign_in_result">
                    <div class="mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control" id="email" placeholder="电子邮件地址" name="email"
                                   required>
                            <label for="email">电子邮件地址</label>
                        </div>
                    </div>
                    <div class="mb-4">
                        <div class="form-floating">
                            <input type="password" class="form-control" id="password" placeholder="密码" name="password"
                                   required>
                            <label for="password">密码</label>
                        </div>
                    </div>
                    <div class="mb-4">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="rememberMe">
                                    <label class="form-check-label" for="rememberMe">记住我</label>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="d-flex justify-content-end">
                                    <a href="javascript:void(0);" class="text-white">忘记密码</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mb-5">
                        <button type="submit" class="btn btn-primary w-100">现在登录</button>
                    </div>
                    <div class="text-center"><span style="opacity: .65;">还没有 Epcot 账户？</span> <a
                            href="${pageContext.request.contextPath}/account/sign_up" class="text-white">注册</a></div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>