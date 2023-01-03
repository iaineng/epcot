<%@ page import="team.ape.epcot.entity.UserVoEntity" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="team.ape.epcot.entity.GameVoEntity" %>
<%@ page import="team.ape.epcot.vo.InventoryVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserVoEntity user = (UserVoEntity) request.getAttribute("userVoEntity");
    InventoryVo inventoryVo = (InventoryVo) request.getAttribute("inventoryVo");
%>
<html>
<head>
    <title>库存</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_256x256.png"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app/assets/css/detail_dlc/detail_dlc.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/detail_dlc/swiper.css">
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
<div id="top" class="search w">
    <div class="search_input">
        <input type="" name="" placeholder="探索商城">
    </div>
    <div class="search_tab">
        <a href="${pageContext.request.contextPath}/">探索</a>
        <a href="${pageContext.request.contextPath}/browse">浏览</a>
        <a href="" class="on">库存</a>
        <a href="">愿望清单</a>
        <a href="">购物车</a>
    </div>
</div>

<div class="tabs w">
    <div class="tab_name">库存</div>
</div>
<div class="prolist w ">
    <div class="prolist_left" >
        <div class="prolist_main">
            <%
                for (GameVoEntity game : inventoryVo.getGames()) {
            %>
            <div class="proitem">
                <a href="${pageContext.request.contextPath}/game/detail?title=<%= Base64.encodeBase64URLSafeString(game.getTitle().getBytes(StandardCharsets.UTF_8)) %>">
                    <div class="proimg">
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}<%= game.getCoverUrls().get(0) %>">
                    </div>
                    <div class="protype">基础游戏</div>
                    <div class="proname"><%= game.getTitle() %></div>
                    <div class="proprice">
                        <div class="proxianjia"></div>
                    </div>
                </a>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>

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


<script src="${pageContext.request.contextPath}/app/assets/js/browse/swiper2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/assets/js/browse/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
    $('.proadd').hover(function(){
        $(this).closest('.proitem').find('.protask').toggle();
    })
    $('.fir').click(function(){

        if($(this).next('.sub').css('display') == 'flex'){
            $(this).next('.sub').css('display','none');
        }else {
            $(this).next('.sub').css('display','flex');
        }
        $(this).toggleClass('focus');
    })
    $('.sub > div').click(function(){
        $(this).toggleClass('focus');
    })
    var mySwiper = new Swiper('.swiper-container', {
        loop: true,
        slidesPerView: 4,
        slidesPerGroup: 4,
        navigation: {
            nextEl: '.s_left',
            prevEl: '.s_right',
        },
    })
</script>
</body>
</html>
