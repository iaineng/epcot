<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册 EPCOT 账户</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_256x256.png"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/sign_up/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/app/assets/js/sign_up/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/app/assets/js/sign_up/sha256.min.js"></script>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/sign_up/sign_up.css"/>
</head>
<body>
<div id="signUpDialog">
    <div class="row">
        <div class="col-5">
            <img src="${pageContext.request.contextPath}/app/assets/images/icon_4096x4096.png"
                 class="w-100 h-100 d-block"/>
        </div>
        <div class="col-7 text-white">
            <div class="text-center fs-5 mb-3">注册</div>
            <div>
                <form method="post" action="${pageContext.request.contextPath}/account/sign_up_result">
                    <div class="mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control" id="username" placeholder="用户名" name="username" required>
                            <label for="username">用户名</label>
                        </div>
                    </div>
                    <div class="mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control" id="nickname" placeholder="显示名称" name="nickname" required>
                            <label for="nickname">显示名称</label>
                        </div>
                    </div>
                    <div class="mb-4">
                        <div class="form-floating">
                            <input type="email" class="form-control" id="email" placeholder="显示名称" name="email" required>
                            <label for="email">电子邮件</label>
                        </div>
                    </div>
                    <div class="mb-4">
                        <div class="form-floating">
                            <input type="password" class="form-control" id="password" placeholder="密码" name="password" required>
                            <label for="password">密码</label>
                        </div>
                    </div>
                    <div class="mb-4">
                        <div class="row">
                            <div class="col-4">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="birthdayYear" placeholder="出生年" name="birthdayYear" required>
                                    <label for="birthdayYear">出生年</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="birthdayMonth" placeholder="出生月" name="birthdayMonth" required>
                                    <label for="birthdayMonth">出生月</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="birthdayDay" placeholder="出生日" name="birthdayDay" required>
                                    <label for="birthdayDay">出生日</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mb-5">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="serviceAgreement">
                            <label class="form-check-label" for="serviceAgreement">
                                我已阅读并同意 <a href="javascript:void(0);" class="text-white">服务协议</a>。
                            </label>
                        </div>
                    </div>
                    <div class="mb-5">
                        <button type="submit" class="btn btn-primary w-100">继续</button>
                    </div>
                    <div class="text-center"><span style="opacity: .65;">已有 Epcot 账户？</span> <a href="${pageContext.request.contextPath}/account/sign_in" class="text-white">登录</a></div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function onSubmitButtonClick () {
        const elPasswordInput = document.querySelector('#password')
        elPasswordInput.value = sha256(elPasswordInput.value);
    }
</script>
</body>
</html>
