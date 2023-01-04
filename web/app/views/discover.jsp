<%@ page import="team.ape.epcot.entity.UserVoEntity" %>
<%@ page import="team.ape.epcot.vo.DiscoverVo" %>
<%@ page import="team.ape.epcot.entity.DiscoverBannerVoEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserVoEntity user = (UserVoEntity) request.getAttribute("userVoEntity");
    DiscoverVo discoverVo = (DiscoverVo) request.getAttribute("discoverVo");
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
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/discover/discover.css"/>
    <script src="${pageContext.request.contextPath}/app/assets/js/saveHistory.js"></script>
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

<div id="top" class="search w">
    <div class="search_input">
        <input type="text" name="" placeholder="探索商城">
    </div>
    <div class="search_tab">
        <a href="" class="on">探索</a>
        <a href="${pageContext.request.contextPath}/browse">浏览</a>
        <a href="">库存</a>
        <a href="">愿望清单</a>
        <a href="">购物车</a>
    </div>
</div>

<section style="width: 1080px;" class="d-block mx-auto mb-5">
    <div id="carousel" class="carousel slide overflow-hidden" data-bs-ride="carousel" style="border-radius: 16px;">
        <div class="carousel-inner">
            <%
                for (DiscoverBannerVoEntity banner : discoverVo.getBanners()) {
            %>
            <div class="carousel-item <% if (banner.getPosition() == 1) out.write("active"); %>" data-bs-interval="5000">
                <a href="${pageContext.request.contextPath}<%= banner.getLink() %>">
                    <img src="${pageContext.request.contextPath}<%= banner.getImageUrl() %>"
                         class="d-block w-100">
                </a>
            </div>
            <%
                }
            %>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>

<div class="footer">
    <div class="w1">
        <div class="footer_icon">
            <div class="footer_icon_l">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/fb.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/tt.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/in.png">
            </div>
            <div class="footer_icon_r">
                <a href="#top">
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/sr.png">
                </a>
            </div>
        </div>
        <div class="footer_info">
            <div class="footer_info_left">
                <div class="footer_info_tit">资源</div>
                <div class="footer_info_list">
                    <div class="footer_info_item">
                        <a href="">创作者支持计划</a>
                        <a href="">在 Epcot 上分发</a>
                        <a href="">职业</a>
                        <a href="">公司</a>
                    </div>
                    <div class="footer_info_item">
                        <a href="">爱好者作品政策</a>
                        <a href="">用户体验调查</a>
                        <a href="">商城最终用户授权协议</a>
                    </div>
                    <div class="footer_info_item">
                        <a href="">在线服务</a>
                        <a href="">社区守则</a>
                        <a href="">Epcot Newsroom</a>
                    </div>
                </div>
            </div>
            <div class="footer_info_right">
            </div>
        </div>
        <div class="border-color"></div>
        <div class="footer_txt">© 2022, Epcot, Inc. 版权所有。</div>
        <div class="footer_bom">
            <div class="foter_bom_left">
                <a href="">服务条款</a>
                <a href="">隐私政策</a>
                <a href="">商店退款政策</a>
            </div>
            <div class="foter_bom_right">
                <img src="${pageContext.request.contextPath}/app/assets/images/icon_256x256.png" width="50" height="50">
            </div>
        </div>
    </div>
</div>
</body>
</html>
