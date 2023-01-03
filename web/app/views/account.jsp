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
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500" id="transaction">
                        <i class="bi bi-clock-history font-size-twenty mx-1"></i>
                        交易
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500" id="pwd-security">
                        <i class="bi bi-key-fill font-size-twenty mx-1"></i>
                        密码与安全
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500" id="app-account">
                        <i class="bi bi-share-fill font-size-twenty mx-1"></i>
                        应用与账户
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500" id="redemption-code">
                        <i class="bi bi-gift-fill font-size-twenty mx-1"></i>
                        兑换码
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
                <form>
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
                                                    <input class="input" type="text" placeholder="我是账号名称" disabled
                                                           value="<%= user.getNickname() %>"/>
                                                    <div class="control-label">
                                                        显示名称
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                                <button class="input-button btn btn-primary btn-sm edit-btn"
                                                        data-bs-toggle="tooltip"
                                                        title="请注意：若您更改了您的Epic Games显示名称，则您在确认此次更改之后的2周内将无法再次进行更改。">
                                                    <i class="bi bi-pencil"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input mx-1" type="text" placeholder="我是电子邮箱"
                                                           disabled value="<%= user.getEmail() %>"/>
                                                    <div class="control-label">
                                                        显示电子邮箱
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                                <button class="input-button btn btn-primary btn-sm edit-btn">
                                                    <i class="bi bi-pencil"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title personal-info">
                                <p class="title">个人信息</p>
                                <p class="title-details">
                                    <span>管理您的姓名和联系方式。这些个人信息为您的隐私，不会向其他用户显示。查看 <a
                                            href="#">隐私政策</a><i class="bi bi-lock-fill"></i></span>
                                </p>
                                <div class="input-with-btn-container row">
                                    <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                        <div class="common-form-container">
                                            <input class="nameInput" type="text" placeholder="我是名"/>
                                            <div class="control-label">
                                                名*
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                        <div class="common-form-container">
                                            <input class="nameInput" type="text" placeholder="我是姓"/>
                                            <div class="control-label">
                                                姓*
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title address-info">
                                <p class="title">地址</p>
                            </div>
                            <div class="input-container row">
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地址第1行"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地址第2行"/>
                                    </div>
                                </div>
                            </div>
                            <div class="input-container row">
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="城市"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-3 col-md-6 col-sm-6">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地区"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-3 col-md-6 col-sm-6">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="邮政编码"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <button type="button" class="btn btn-quit btn-light col-lg-3">放弃更改</button>
                                <button type="submit" class="btn btn-save btn-primary col-lg-3">保存变更</button>
                            </div>
                            <div class="title-section sub-title company-info mt-5 border-top">
                                <p class="title">删除账户</p>
                                <div class="row">
                                    <p class="title-details col-lg-7">
                                        <span class="text-gray-500">点击“请求账户删除”开始永久删除您的 Epcot 账户，包括所有个人信息、购买内容、游戏进度、游戏中内容、和 Epcot 钱包账户。Epcot 账户被删除后，您的钱包余额将同样被永久删除。</span>
                                    </p>
                                    <button type="submit" class="btn btn-save btn-primary col-lg-5 btn-danger">
                                        删除账户
                                    </button>
                                </div>
                                <div class="row mt-3">
                                    <p class="col-lg-7">如请求删除账户，您的账户将在 14
                                        天后被删除。在删除完成之前，您可以进行登录，重新激活账户，这样会取消删除账户。14
                                        天后，删除不可撤销。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-9 main-section d-none" id="transaction-page">
            <div class="main-container">
                <form>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="w-100">
                                <div class="general-settings-ref">
                                    <div class="col-md-12">
                                        <div class="title-section">
                                            <p class="title">购买历史</p>
                                            <p class="title-details">查看您的帐户付款详细信息和交易记录。 <a href="#">阅读
                                                Epic Games 退款政策</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="results-container">
                                <div class="select-container">
                                    <div class="select-div">
                                        <select class="select select-history">
                                            <option value="Redeem-history">代码兑换历史记录</option>
                                            <option value="Payment-history" selected>购买历史</option>
                                            <option value="V-history">V币卡兑换历史</option>
                                            <option value="Subscription-history">订阅历史</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="main-container-transaction">
                                    <table class="table payment-history-table">
                                        <colgroup>
                                            <col class="col-date">
                                            <col span="2">
                                            <col class="col-order-status">
                                            <col class="col-payment-action">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th class="table-head">
                                                <buton class="sort-btn">
                                                    日期
                                                </buton>
                                            </th>
                                            <th class="table-head">
                                                <buton class="sort-btn">
                                                    说明
                                                </buton>
                                            </th>
                                            <th class="table-head">
                                                <buton class="sort-btn">
                                                    价格
                                                </buton>
                                            </th>
                                            <th class="table-head">
                                                <buton class="sort-btn">
                                                    状态
                                                </buton>
                                            </th>
                                            <th>
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody class="mobile-table-body">
                                        <tr class="data-column">
                                            <td class="table-data">
                                                我是日期
                                            </td>
                                            <td class="table-data">
                                                我是说明
                                            </td>
                                            <td colspan="table-data">
                                                我是价格
                                            </td>
                                            <td colspan="table-data">
                                                我是状态
                                            </td>
                                            <td>
                                                <a href="#">详情</a>
                                            </td>
                                        </tr>
                                        <tr class="data-column">
                                            <td class="table-data">
                                                我是日期
                                            </td>
                                            <td class="table-data">
                                                我是说明
                                            </td>
                                            <td colspan="table-data">
                                                我是价格
                                            </td>
                                            <td colspan="table-data">
                                                我是状态
                                            </td>
                                            <td>
                                                <a href="#">详情</a>
                                            </td>
                                        </tr>
                                        <tr class="data-column">
                                            <td class="table-data">
                                                我是日期
                                            </td>
                                            <td class="table-data">
                                                我是说明
                                            </td>
                                            <td colspan="table-data">
                                                我是价格
                                            </td>
                                            <td colspan="table-data">
                                                我是状态
                                            </td>
                                            <td>
                                                <a href="#">详情</a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-9 main-section d-none" id="pwd-security-page">
            <div class="main-container">
                <form>
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
                                                    <p class="description">您的密码不得与之前最后使用的 5 个密码相同</p>
                                                    <p class="description">您的密码必须由 7 个或更多字符组成。</p>
                                                    <p class="description">您的密码必须包含至少 1 位数字</p>
                                                    <p class="description">您的密码不得含有空格</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="submit-section">
                                        <div>
                                            <button class="btn btn-light" type="button">放弃更改</button>
                                            <button class="btn btn-primary" type="submit">保存更改</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-9 main-section d-none" id="apps-account-page">
            <div class="main-container">
                <form>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="w-100">
                                <div class="general-settings-ref">
                                    <div class="col-md-12">
                                        <div class="title-section">
                                            <p class="title">应用与账户</p>
                                            <p class="title-details">管理应用和绑定账户的许可。<a href="#">隐私政策</a>
                                            </p>
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
                                                <span class="fw-bold account-id-label">ID:</span>
                                                12321321313213
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input" type="text" placeholder="我是账号名称"
                                                           disabled/>
                                                    <div class="control-label">
                                                        显示名称
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                                <button class="input-button btn btn-primary btn-sm edit-btn"
                                                        data-bs-toggle="tooltip"
                                                        title="请注意：若您更改了您的Epic Games显示名称，则您在确认此次更改之后的2周内将无法再次进行更改。">
                                                    <i class="bi bi-pencil"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input mx-1" type="text" placeholder="我是电子邮箱"
                                                           disabled/>
                                                    <div class="control-label">
                                                        显示电子邮箱
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                                <button class="input-button btn btn-primary btn-sm edit-btn">
                                                    <i class="bi bi-pencil"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style language-change-field">
                                        <div class="language-container">
                                            <div class="select-div p-0">
                                                <select class="select filled">
                                                    <option value disabled>偏好的通讯语言 *</option>
                                                    <option value="1">简体中文 [Simplified Chinese]</option>
                                                    <option value="2">한국어 [Korean]</option>
                                                    <option value="3">日本語 [Japanese]</option>
                                                    <option value="4">Deutsch [German]</option>
                                                    <option value="5">Français [French]</option>
                                                    <option value="6">Español (México) [Spanish]</option>
                                                    <option value="7">Русский [Russian]</option>
                                                    <option value="8">Español (España) [Spanish]</option>
                                                    <option value="9">意大利语</option>
                                                    <option value="10">Polski</option>
                                                    <option value="11">Português (Brasil)</option>
                                                    <option value="12">العربية</option>
                                                    <option value="13">Türkçe（土耳其语）</option>
                                                    <option value="14">ไทย</option>
                                                    <option value="15">英文</option>
                                                    <option value="16">繁體中文</option>
                                                </select>
                                                <div class="control-label1">偏好的通讯语言 *</div>

                                                <p class="Email-Language">请选择您偏好的来自 Epcot
                                                    的电子邮件使用的语言。</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title personal-info">
                                <p class="title">个人信息</p>
                                <p class="title-details">
                                    <span>管理您的姓名和联系方式。这些个人信息为您的隐私，不会向其他用户显示。查看 <a
                                            href="#">隐私政策</a><i class="bi bi-lock-fill"></i></span>
                                </p>
                                <div class="input-with-btn-container row">
                                    <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                        <div class="common-form-container">
                                            <input class="nameInput" type="text" placeholder="我是名"/>
                                            <div class="control-label">
                                                名*
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                        <div class="common-form-container">
                                            <input class="nameInput" type="text" placeholder="我是姓"/>
                                            <div class="control-label">
                                                姓*
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title address-info">
                                <p class="title">地址</p>
                            </div>
                            <div class="input-container row">
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地址第1行"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地址第2行"/>
                                    </div>
                                </div>
                            </div>
                            <div class="input-container row">
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="城市"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-3 col-md-6 col-sm-6">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地区"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-3 col-md-6 col-sm-6">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="邮政编码"/>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title country-info">
                                <p class="title-details">
                                    <span>国家/地区</span>
                                </p>
                                <p class="title-details">
                                    <span class="text-gray-500">点击<a href="#">此处</a>编辑你的国家/地区 </span>
                                </p>
                            </div>
                            <div class="input-container row">
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="China" disabled/>
                                        <div class="control-label">
                                            国家/地区*
                                        </div>
                                    </div>
                                </div>
                                <div class="input-container col-lg-3 col-md-6 col-sm-6">

                                </div>
                                <div class="input-container col-lg-3 col-md-6 col-sm-6">

                                </div>
                            </div>
                            <div class="row">
                                <button type="button" class="btn btn-quit btn-light col-lg-3">放弃更改</button>
                                <button type="submit" class="btn btn-save btn-primary col-lg-3">保存变更</button>
                            </div>
                            <div class="title-section sub-title company-info mt-5 border-top">
                                <p class="title">公司</p>
                                <p class="title-details">
                                    <span>管理为购买游戏生成商务收据的公司信息。<a href="#">了解详情</a></span>
                                </p>
                                <p class="title-details">
                                    <b>如果您已经注册了增值税，购买游戏时可能不会被收取增值税。首先，输入您的公司增值税（VAT）号。</b>
                                </p>
                            </div>
                            <div class="input-container row">
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="公司名称"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="公司增值税（VAT）号"/>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title address-info">
                                <p class="title">公司地址</p>
                            </div>
                            <div class="input-container row">
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地址第1行"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地址第2行"/>
                                    </div>
                                </div>
                            </div>
                            <div class="input-container row">
                                <div class="input-container col-lg-6 col-md-12 col-sm-12">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="城市"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-3 col-md-6 col-sm-6">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="地区"/>
                                    </div>
                                </div>
                                <div class="input-container col-lg-3 col-md-6 col-sm-6">
                                    <div class="common-form-container">
                                        <input class="nameInput" type="text" placeholder="邮政编码"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <button type="button" class="btn btn-quit btn-light col-lg-3">放弃更改</button>
                                <button type="submit" class="btn btn-save btn-primary col-lg-3">保存变更</button>
                            </div>
                            <div class="title-section sub-title company-info mt-5 border-top">
                                <p class="title">下载账户信息</p>
                                <p class="title-details">
                                    <span class="text-gray-500">创建并下载副本，查看您与我们分享了哪些信息。 您需要启用<a
                                            href="#">双重身份验证</a>并验证您的电子邮件地址才能继续操作。</span>
                                </p>
                            </div>
                            <div class="title-section sub-title company-info mt-5 border-top">
                                <p class="title">删除账户</p>
                                <div class="row">
                                    <p class="title-details col-lg-7">
                                        <span class="text-gray-500">点击“请求账户删除”开始永久删除您的 Epcot 账户，包括所有个人信息、购买内容、游戏进度、游戏中内容。</span>
                                    </p>
                                    <button type="submit" class="btn btn-save btn-primary col-lg-5 btn-danger">
                                        删除账户
                                    </button>
                                </div>
                                <div class="row mt-3">
                                    <p class="col-lg-7">如请求删除账户，您的账户将在 14
                                        天后被删除。在删除完成之前，您可以进行登录，重新激活账户，这样会取消删除账户。14
                                        天后，删除不可撤销。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-9 main-section d-none" id="redemption-code-page">
            <div class="main-container">
                <form>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="w-100">
                                <div class="general-settings-ref">
                                    <div class="col-md-12">
                                        <div class="title-section">
                                            <p class="title">兑换代码</p>
                                            <p class="title-details">输入您的产品代码，来进行兑换。产品代码的示例如下：K5XSH-CTLEQ-Q5RF6-U7YD9
                                                或 K5XSHCTLEQQ5RF6U7Y</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="code-redemption-field form-fields">
                                    <div class="form-field--section clearfix">
                                        <div class="form-group clearfix">
                                            <div>
                                                <div class="form-field col-lg-6 col-md-12 col-sm-12">
                                                    <input class="input redeem-code" type="password" maxlength="100"
                                                           minlength="0"/>
                                                    <div class="control-label2">输入您的代码*</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="submit-section">
                                            <div>
                                                <button class="btn btn-light" type="button">取消</button>
                                                <button class="btn btn-primary" type="submit">兑换</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="code-location-container">
                                <div class="subtitle-section code-location">
                                    <p class="title">寻找代码位置</p>
                                </div>
                                <div class="subtitle-section redeem-email">
                                    <p class="title">电子邮箱</p>
                                    <p class="description">请检查确认电子邮件找到产品代码</p>
                                </div>
                                <div class="subtitle-section box-or-manual">
                                    <p class="title">包装盒或手册</p>
                                    <p class="description">请检查包装盒或手册找到产品代码</p>
                                </div>
                            </div>
                            <div class="v-bucks-direct border-top">
                                <div class="title-section mt-3">
                                    <p class="title">兑换V币卡</p>
                                    <p class="title-details">将礼品卡兑换为V币，可在任何支持堡垒之夜的设备上使用！<a
                                            href="#">点此兑换您的V币卡</a></p>
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
    $("#transaction").click(function () {
        $("#account-setting-page").addClass("d-none");
        $("#pwd-security-page").addClass("d-none");
        $("#apps-account-page").addClass("d-none");
        $("#redemption-code-page").addClass("d-none");
        $("#transaction-page").removeClass("d-none");
        $("#transaction-page").addClass("page-active");
    });
    $("#pwd-security").click(function () {
        $("#account-setting-page").addClass("d-none");
        $("#transaction-page").addClass("d-none");
        $("#apps-account-page").addClass("d-none");
        $("#redemption-code-page").addClass("d-none");
        $("#pwd-security-page").removeClass("d-none");
        $("#pwd-security-page").addClass("page-active");
    });
    $("#app-account").click(function () {
        $("#account-setting-page").addClass("d-none");
        $("#transaction-page").addClass("d-none");
        $("#pwd-security-page").addClass("d-none");
        $("#redemption-code-page").addClass("d-none");
        $("#apps-account-page").removeClass("d-none");
        $("#apps-account-page").addClass("page-active");
    });
    $("#redemption-code").click(function () {
        $("#account-setting-page").addClass("d-none");
        $("#transaction-page").addClass("d-none");
        $("#pwd-security-page").addClass("d-none");
        $("#apps-account-page").addClass("d-none");
        $("#redemption-code-page").removeClass("d-none");
        $("#redemption-code-page").addClass("page-active");
    });

    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>
</body>
</html>
