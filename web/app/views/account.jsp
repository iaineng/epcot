<%@ page import="team.ape.epcot.entity.UserVoEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserVoEntity user = (UserVoEntity) request.getAttribute("userVoEntity");

    assert user != null;
%>
<html>
<head>
    <title>账户</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_4096x4096.png"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/account/account.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/account/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/discover/header.css"/>
    <script src="${pageContext.request.contextPath}/app/assets/js/sign_in/sha256.min.js"></script>
    <script>
        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toUTCString();
            document.cookie = cname + "=" + cvalue + "; " + expires;
        }
    </script>
</head>
<body class="bg-white-200">
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
                        <a class="link" href="${pageContext.request.contextPath}/">
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
                <a href="${pageContext.request.contextPath}/account" class="link">
                    <i class="bi bi-person-fill"></i>
                    <span style="text-transform: uppercase;"><%
                        out.write(user.getNickname());
                    %></span>
                </a>
            </div>
            <div class="clearfix"></div>
        </div>
    </nav>
</header>
<div class="container account-management-content">
    <div class="row personalView" id="personalView">
        <div class="col-lg-3 col-md-3 col-sm-3 sidebar-section">
            <div class="container sidebar-container">
                <div class="navigation-section">
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500 active"
                            id="account-setting">
                        <i class="bi bi-person-fill font-size-twenty mx-1"></i>
                        账户设置
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500" id="pwd-security">
                        <i class="bi bi-key-fill font-size-twenty mx-1"></i>
                        密码与安全
                    </button>
                </div>
            </div>
            <div class="help-link-container">
                <a href="#">
                    <p>需要帮助？</p>
                </a>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-9 main-section page-active" id="account-setting-page">
            <div class="main-container">
                <form action="${pageContext.request.contextPath}/account/set" method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="w-100">
                                <div class="general-settings-ref">
                                    <div class="col-md-12">
                                        <div class="title-section">
                                            <p class="title">账户设置</p>
                                            <p class="title-details">管理您与 Epcot
                                                共享的账户详情，包括您的姓名、联系方式等信息。</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="account-info-fields">
                                <div class="form-field-section clearfix">
                                    <div class="sub-title">
                                        <p class="title">账户信息</p>
                                    </div>
                                    <div class="col-md-12 account-id-section">
                                        <div class="paragragh-container">
                                            <p class="p-body paragragh">
                                                <span class="fw-bold account-id-label">ID: <%= user.getUsername() %></span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input" type="text" name="nickname"
                                                           value="<%= user.getNickname() %>"/>
                                                    <div class="control-label">显示名称</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input mx-1" type="text" name="email"
                                                           value="<%= user.getEmail() %>"/>
                                                    <div class="control-label">电子邮箱</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <button type="submit" class="btn btn-save btn-primary col-lg-3">保存变更</button>
                                <button type="button" class="btn btn-danger col-lg-3" onclick="(function () {setCookie('token', '', -1); window.location.pathname='${pageContext.request.contextPath}';})()">登出</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-9 main-section d-none" id="pwd-security-page">
            <div class="main-container">
                <form action="${pageContext.request.contextPath}/account/set_password" method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="w-100">
                                <div class="general-settings-ref">
                                    <div class="col-md-12">
                                        <div class="title-section">
                                            <p class="title">更改您的密码</p>
                                            <p class="title-details">为了安全，我们强烈建议您选择与其他在线账户不同的独一无二密码。<i
                                                    class="bi bi-lock-fill"></i></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form--body">
                                <div class="form--body-column">
                                    <div class="password-inner-container">
                                        <div class="row">
                                            <div class="password-fields form-fields col-lg-6 col-md-6">
                                                <div class="form-field--section clearfix">
                                                    <div class="form-group clearfix">
                                                        <div class="form-title-section">
                                                            <p class="title">当前密码</p>
                                                            <p class="field-requirement">必填</p>
                                                        </div>
                                                        <div>
                                                            <div class="form-field">
                                                                <input class="input currentPassword" type="password"
                                                                       name="oldPassword"
                                                                       maxlength="100" minlength="0"/>
                                                                <div class="control-label2">当前密码*</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <div class="form-title-section">
                                                            <p class="title">新密码</p>
                                                            <p class="field-requirement">必填</p>
                                                        </div>
                                                        <div>
                                                            <div class="form-field">
                                                                <input class="input Password" type="password"
                                                                       name="newPassword"
                                                                       maxlength="100" minlength="0"/>
                                                                <div class="control-label2">新密码*</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group clearfix">
                                                        <div class="form-title-section">
                                                            <p class="title">重新输入新密码</p>
                                                            <p class="field-requirement">必填</p>
                                                        </div>
                                                        <div>
                                                            <div class="form-field">
                                                                <input class="input confirmPassword" type="password"
                                                                       maxlength="100" minlength="0"/>
                                                                <div class="control-label2">重新输入新密码*</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="password-information-section col-lg-6 col-md-6">
                                                <div class="title-section">
                                                    <p>您的密码</p>
                                                </div>
                                                <div class="description-section">
                                                    <p class="description">您的密码必须由 7 个或更多字符组成。</p>
                                                    <p class="description">您的密码必须包含至少 1 位数字</p>
                                                    <p class="description">您的密码不得含有空格</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="submit-section">
                                        <div>
                                            <button class="btn btn-primary" type="submit"
                                                    onclick="onSubmitButtonClick()">保存更改
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/app/assets/js/account/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/app/assets/js/account/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/app/assets/js/account/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/app/assets/js/account/bootstrap.min.js"></script>
<script type="text/javascript">
    function onSubmitButtonClick() {
        const elOldPasswordInput = document.querySelector('input[name="oldPassword"]');
        elOldPasswordInput.value = sha256(elOldPasswordInput.value);

        const elNewPasswordInput = document.querySelector('input[name="newPassword"]');
        elNewPasswordInput.value = sha256(elNewPasswordInput.value);
    }

    $(".navbar-nav a").click(function () {
        $(this).addClass("active").siblings().removeClass("active");
    });

    $(".setting").click(function () {
        $(".setting").removeClass("active");
        $(this).addClass("active");
    });

    $("#account-setting").click(function () {
        $("#transaction-page").addClass("d-none");
        $("#pwd-security-page").addClass("d-none");
        $("#apps-account-page").addClass("d-none");
        $("#redemption-code-page").addClass("d-none");
        $("#account-setting-page").removeClass("d-none");
        $("#account-setting-page").addClass("page-active");
    });
    $("#pwd-security").click(function () {
        $("#account-setting-page").addClass("d-none");
        $("#transaction-page").addClass("d-none");
        $("#apps-account-page").addClass("d-none");
        $("#redemption-code-page").addClass("d-none");
        $("#pwd-security-page").removeClass("d-none");
        $("#pwd-security-page").addClass("page-active");
    });

    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>
</body>
</html>
