<%--
  Created by IntelliJ IDEA.
  User: tang0
  Date: 2022/12/27
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/account/account.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/account/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
</head>
<body class="bg-white-200">
<header>
    <nav class="navbar navbar-expand-lg bar-bg">
        <div class="shieldLogo p-1">
            <a class="navbar-brand" href="#">
                <img src="${pageContext.request.contextPath}/app/assets/images/discover/logo.png" width="36" height="36" class="d-inline-block align-items-center" alt="">
            </a>
        </div>
        <div class="collapse navbar-collapse align-items-center">
            <div class="navbar-nav">
                <a class="nav-item text-gray-500 mx-2 nav-link1" href="#">商城</a>
                <a class="nav-item text-gray-500 mx-2 nav-link1" href="#">常见问题</a>
                <a class="nav-item text-gray-500 mx-2 nav-link1" href="#">帮助</a>
                <a class="nav-item text-gray-500 mx-2 nav-link1" href="#">虚幻引擎</a>
            </div>
        </div>
        <div class="collapse navbar-collapse rightNav">
            <div class="navbar-nav align-items-center">
                <a class="text-gray-500 nav-link text-white-50 mx-2 language" href="#"><i class="bi bi-globe-americas"></i></a>
                <a class="text-gray-500 mx-2 nav-link1 btn-login" href="#"><i class="bi bi-person"></i>登录</a>
                <a class="btn btn-primary text-gray-500 mx-2 nav-link h-100" href="#">获取客户端</a>
            </div>
        </div>
    </nav>
</header>
<div class="container account-management-content">
    <div class="row personalView" id="personalView">
        <div class="col-lg-3 col-md-3 col-sm-3 sidebar-section">
            <div class="container sidebar-container">
                <div class="navigation-section">
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500 active">
                        <i class="bi bi-person-fill font-size-twenty mx-1"></i>
                        账户设置
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-bell-fill font-size-twenty mx-1"></i>
                        电子邮件偏好
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-wallet-fill font-size-twenty mx-1"></i>
                        管理付款
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-clock-history font-size-twenty mx-1"></i>
                        交易
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-bookmark-star-fill font-size-twenty mx-1"></i>
                        订阅
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-key-fill font-size-twenty mx-1"></i>
                        密码与安全
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-shield-fill-check font-size-twenty mx-1"></i>
                        家长控制
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-calendar-check-fill font-size-twenty mx-1"></i>
                        最终用户许可协议（EULA）历史
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-share-fill font-size-twenty mx-1"></i>
                        应用与账户
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-person-fill font-size-twenty mx-1"></i>
                        创作者支持
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
                        <i class="bi bi-piggy-bank-fill font-size-twenty mx-1"></i>
                        市场营销方
                    </button>
                    <button class="setting personal-info w-100 font-size-fourteen text-gray-500">
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
                                        <p class="title-details">管理您与 Epic Games 共享的账户详情，包括您的姓名、联系方式等信息。</p>
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
                                                <input class="input" type="text" placeholder="我是账号名称" disabled/>
                                                <div class="control-label">
                                                    显示名称
                                                </div>
                                            </div>
                                        </div>
                                        <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                            <button class="input-button btn btn-primary btn-sm edit-btn" data-bs-toggle="tooltip" title="请注意：若您更改了您的Epic Games显示名称，则您在确认此次更改之后的2周内将无法再次进行更改。">
                                                <i class="bi bi-pencil"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 common-input-btn-style">
                                    <div class="input-with-btn-container row">
                                        <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                            <div class="common-form-container">
                                                <input class="input mx-1" type="text" placeholder="我是电子邮箱" disabled/>
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

                                            <p class="Email-Language">请选择您偏好的来自 Epic Games 的电子邮件使用的语言。</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="title-section sub-title personal-info">
                            <p class="title">个人信息</p>
                            <p class="title-details">
                                <span>管理您的姓名和联系方式。这些个人信息为您的隐私，不会向其他用户显示。查看 <a href="#">隐私政策</a><i class="bi bi-lock-fill"></i></span>
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
                                <span class="text-gray-500">创建并下载副本，查看您与我们分享了哪些信息。 您需要启用<a href="#">双重身份验证</a>并验证您的电子邮件地址才能继续操作。</span>
                            </p>
                        </div>
                        <div class="title-section sub-title company-info mt-5 border-top">
                            <p class="title">删除账户</p>
                            <div class="row">
                                <p class="title-details col-lg-7">
                                    <span class="text-gray-500">点击“请求账户删除”开始永久删除您的 Epic Games 账户，包括所有个人信息、购买内容、游戏进度、游戏中内容、Unreal（虚幻）项目和 Epic Games 钱包账户。Epic Games 账户被删除后，您的钱包余额将同样被永久删除。</span>
                                </p>
                                <button type="submit" class="btn btn-save btn-primary col-lg-5 btn-danger">删除账户</button>
                            </div>
                            <div class="row mt-3">
                                <p class="col-lg-7">如请求删除账户，您的账户将在 14 天后被删除。在删除完成之前，您可以进行登录，重新激活账户，这样会取消删除账户。14 天后，删除不可撤销。</p>
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
                                            <p class="title">账户设置</p>
                                            <p class="title-details">管理您与 Epic Games 共享的账户详情，包括您的姓名、联系方式等信息。</p>
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
                                                    <input class="input" type="text" placeholder="我是账号名称" disabled/>
                                                    <div class="control-label">
                                                        显示名称
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                                <button class="input-button btn btn-primary btn-sm edit-btn" data-bs-toggle="tooltip" title="请注意：若您更改了您的Epic Games显示名称，则您在确认此次更改之后的2周内将无法再次进行更改。">
                                                    <i class="bi bi-pencil"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input mx-1" type="text" placeholder="我是电子邮箱" disabled/>
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

                                                <p class="Email-Language">请选择您偏好的来自 Epic Games 的电子邮件使用的语言。</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title personal-info">
                                <p class="title">个人信息</p>
                                <p class="title-details">
                                    <span>管理您的姓名和联系方式。这些个人信息为您的隐私，不会向其他用户显示。查看 <a href="#">隐私政策</a><i class="bi bi-lock-fill"></i></span>
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
                                    <span class="text-gray-500">创建并下载副本，查看您与我们分享了哪些信息。 您需要启用<a href="#">双重身份验证</a>并验证您的电子邮件地址才能继续操作。</span>
                                </p>
                            </div>
                            <div class="title-section sub-title company-info mt-5 border-top">
                                <p class="title">删除账户</p>
                                <div class="row">
                                    <p class="title-details col-lg-7">
                                        <span class="text-gray-500">点击“请求账户删除”开始永久删除您的 Epic Games 账户，包括所有个人信息、购买内容、游戏进度、游戏中内容、Unreal（虚幻）项目和 Epic Games 钱包账户。Epic Games 账户被删除后，您的钱包余额将同样被永久删除。</span>
                                    </p>
                                    <button type="submit" class="btn btn-save btn-primary col-lg-5 btn-danger">删除账户</button>
                                </div>
                                <div class="row mt-3">
                                    <p class="col-lg-7">如请求删除账户，您的账户将在 14 天后被删除。在删除完成之前，您可以进行登录，重新激活账户，这样会取消删除账户。14 天后，删除不可撤销。</p>
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
                                            <p class="title">账户设置</p>
                                            <p class="title-details">管理您与 Epic Games 共享的账户详情，包括您的姓名、联系方式等信息。</p>
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
                                                    <input class="input" type="text" placeholder="我是账号名称" disabled/>
                                                    <div class="control-label">
                                                        显示名称
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                                <button class="input-button btn btn-primary btn-sm edit-btn" data-bs-toggle="tooltip" title="请注意：若您更改了您的Epic Games显示名称，则您在确认此次更改之后的2周内将无法再次进行更改。">
                                                    <i class="bi bi-pencil"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input mx-1" type="text" placeholder="我是电子邮箱" disabled/>
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

                                                <p class="Email-Language">请选择您偏好的来自 Epic Games 的电子邮件使用的语言。</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title personal-info">
                                <p class="title">个人信息</p>
                                <p class="title-details">
                                    <span>管理您的姓名和联系方式。这些个人信息为您的隐私，不会向其他用户显示。查看 <a href="#">隐私政策</a><i class="bi bi-lock-fill"></i></span>
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
                                    <span class="text-gray-500">创建并下载副本，查看您与我们分享了哪些信息。 您需要启用<a href="#">双重身份验证</a>并验证您的电子邮件地址才能继续操作。</span>
                                </p>
                            </div>
                            <div class="title-section sub-title company-info mt-5 border-top">
                                <p class="title">删除账户</p>
                                <div class="row">
                                    <p class="title-details col-lg-7">
                                        <span class="text-gray-500">点击“请求账户删除”开始永久删除您的 Epic Games 账户，包括所有个人信息、购买内容、游戏进度、游戏中内容、Unreal（虚幻）项目和 Epic Games 钱包账户。Epic Games 账户被删除后，您的钱包余额将同样被永久删除。</span>
                                    </p>
                                    <button type="submit" class="btn btn-save btn-primary col-lg-5 btn-danger">删除账户</button>
                                </div>
                                <div class="row mt-3">
                                    <p class="col-lg-7">如请求删除账户，您的账户将在 14 天后被删除。在删除完成之前，您可以进行登录，重新激活账户，这样会取消删除账户。14 天后，删除不可撤销。</p>
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
                                            <p class="title">账户设置</p>
                                            <p class="title-details">管理您与 Epic Games 共享的账户详情，包括您的姓名、联系方式等信息。</p>
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
                                                    <input class="input" type="text" placeholder="我是账号名称" disabled/>
                                                    <div class="control-label">
                                                        显示名称
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                                <button class="input-button btn btn-primary btn-sm edit-btn" data-bs-toggle="tooltip" title="请注意：若您更改了您的Epic Games显示名称，则您在确认此次更改之后的2周内将无法再次进行更改。">
                                                    <i class="bi bi-pencil"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input mx-1" type="text" placeholder="我是电子邮箱" disabled/>
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

                                                <p class="Email-Language">请选择您偏好的来自 Epic Games 的电子邮件使用的语言。</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title personal-info">
                                <p class="title">个人信息</p>
                                <p class="title-details">
                                    <span>管理您的姓名和联系方式。这些个人信息为您的隐私，不会向其他用户显示。查看 <a href="#">隐私政策</a><i class="bi bi-lock-fill"></i></span>
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
                                    <span class="text-gray-500">创建并下载副本，查看您与我们分享了哪些信息。 您需要启用<a href="#">双重身份验证</a>并验证您的电子邮件地址才能继续操作。</span>
                                </p>
                            </div>
                            <div class="title-section sub-title company-info mt-5 border-top">
                                <p class="title">删除账户</p>
                                <div class="row">
                                    <p class="title-details col-lg-7">
                                        <span class="text-gray-500">点击“请求账户删除”开始永久删除您的 Epic Games 账户，包括所有个人信息、购买内容、游戏进度、游戏中内容、Unreal（虚幻）项目和 Epic Games 钱包账户。Epic Games 账户被删除后，您的钱包余额将同样被永久删除。</span>
                                    </p>
                                    <button type="submit" class="btn btn-save btn-primary col-lg-5 btn-danger">删除账户</button>
                                </div>
                                <div class="row mt-3">
                                    <p class="col-lg-7">如请求删除账户，您的账户将在 14 天后被删除。在删除完成之前，您可以进行登录，重新激活账户，这样会取消删除账户。14 天后，删除不可撤销。</p>
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
                                            <p class="title">账户设置</p>
                                            <p class="title-details">管理您与 Epic Games 共享的账户详情，包括您的姓名、联系方式等信息。</p>
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
                                                    <input class="input" type="text" placeholder="我是账号名称" disabled/>
                                                    <div class="control-label">
                                                        显示名称
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-container col-lg-2 col-md-2 col-sm-2">
                                                <button class="input-button btn btn-primary btn-sm edit-btn" data-bs-toggle="tooltip" title="请注意：若您更改了您的Epic Games显示名称，则您在确认此次更改之后的2周内将无法再次进行更改。">
                                                    <i class="bi bi-pencil"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 common-input-btn-style">
                                        <div class="input-with-btn-container row">
                                            <div class="input-container col-lg-10 col-md-10 col-sm-10 col-xl-10">
                                                <div class="common-form-container">
                                                    <input class="input mx-1" type="text" placeholder="我是电子邮箱" disabled/>
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

                                                <p class="Email-Language">请选择您偏好的来自 Epic Games 的电子邮件使用的语言。</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title-section sub-title personal-info">
                                <p class="title">个人信息</p>
                                <p class="title-details">
                                    <span>管理您的姓名和联系方式。这些个人信息为您的隐私，不会向其他用户显示。查看 <a href="#">隐私政策</a><i class="bi bi-lock-fill"></i></span>
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
                                    <span class="text-gray-500">创建并下载副本，查看您与我们分享了哪些信息。 您需要启用<a href="#">双重身份验证</a>并验证您的电子邮件地址才能继续操作。</span>
                                </p>
                            </div>
                            <div class="title-section sub-title company-info mt-5 border-top">
                                <p class="title">删除账户</p>
                                <div class="row">
                                    <p class="title-details col-lg-7">
                                        <span class="text-gray-500">点击“请求账户删除”开始永久删除您的 Epic Games 账户，包括所有个人信息、购买内容、游戏进度、游戏中内容、Unreal（虚幻）项目和 Epic Games 钱包账户。Epic Games 账户被删除后，您的钱包余额将同样被永久删除。</span>
                                    </p>
                                    <button type="submit" class="btn btn-save btn-primary col-lg-5 btn-danger">删除账户</button>
                                </div>
                                <div class="row mt-3">
                                    <p class="col-lg-7">如请求删除账户，您的账户将在 14 天后被删除。在删除完成之前，您可以进行登录，重新激活账户，这样会取消删除账户。14 天后，删除不可撤销。</p>
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

    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>
</body>
</html>