<%@ page import="team.ape.epcot.entity.UserVoEntity" %>
<%@ page import="team.ape.epcot.vo.CartVo" %>
<%@ page import="team.ape.epcot.entity.GameVoEntity" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="team.ape.epcot.util.EncoderUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserVoEntity user = (UserVoEntity) request.getAttribute("userVoEntity");
    CartVo cartVo = (CartVo) request.getAttribute("cartVo");
%>
<html>
<head>
    <meta charset="utf-8">
    <title>购物车</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_256x256.png"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app/assets/css/cart/cart.css">
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
        <input type="text" name="" placeholder="探索商城">
    </div>
    <div class="search_tab">
        <a href="${pageContext.request.contextPath}/">探索</a>
        <a href="${pageContext.request.contextPath}/browse">浏览</a>
        <a href="${pageContext.request.contextPath}/inventory">库存</a>
        <a href="${pageContext.request.contextPath}/wishlist">愿望清单</a>
        <a href="" class="on">购物车</a>
    </div>
</div>

<div class="tabs w">
    <div class="tab_name">购物车</div>
</div>

<div class="prolist w ">
    <div class="prolist_left">
        <%
            for (GameVoEntity game : cartVo.getGames()) {
                GameVoEntity.Discounting discounting = game.getDiscounting();
        %>
        <div class="proitem">
            <a class="proitem_img"
               href="${pageContext.request.contextPath}/game/detail?title=<%= EncoderUtils.base64(game.getTitle()) %>">
                <img src="${pageContext.request.contextPath}<%= game.getCoverUrls().get(0) %>">
            </a>
            <div class="proitem_info">
                <div class="proitem_info_left">
                    <div class="proitem_info_left1">基础游戏</div>
                    <div class="proitem_info_left2"><%= game.getTitle() %>
                    </div>
                    <div class="proitem_info_left4">
                        <img src="${pageContext.request.contextPath}/app/assets/images/cart/win.png">
                    </div>
                </div>

                <div class="proitem_info_right">
                    <div class="proitem_info_right1">
                        <%
                            if (discounting != null) {
                        %>
                        <div class="prodiscount">-<%= game.getDiscounting().getDiscountPercentage() %>%</div>
                        <div class="proyuanjia">¥<%= game.getPrice().toString() %>
                        </div>
                        <%
                            }
                        %>
                        <div class="proxianjia">¥<%= game.getActualPrice().toString() %>
                        </div>
                    </div>
                    <%
                        if (discounting != null) {
                    %>
                    <div class="proitem_info_right2">
                        优惠截止于<%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(discounting.getFinishedAt()) %>
                    </div>
                    <%
                        }
                    %>
                    <div class="proitem_info_right3">
                        <a href="${pageContext.request.contextPath}/cart/remove?title=<%= EncoderUtils.base64(game.getTitle()) %>&backUrl="
                           class="need-back-url">
                            <span>移除</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>

    <div class="prolist_right" style="flex: 1;">
        <div class="prolist_right1">游戏概览</div>
        <div class="prolist_right2">
            <span>价格</span>
            <span>¥<%= cartVo.getPriceTotal().toString() %></span>
        </div>
        <div class="prolist_right2">
            <span>特卖折扣</span>
            <span>-¥<%= cartVo.getDiscountTotal().toString() %></span>
        </div>

        <div class="prolist_right2 prolist_right2_xj">
            <span>小计</span>
            <span>¥<%= cartVo.getActualTotal().toString() %></span>
        </div>
        <div class="prolist_right4">
            <button>
                <%
                    if (cartVo.getGameTitles() != null && cartVo.getGameTitles().length() > 0) {
                %>
                <a href="${pageContext.request.contextPath}/order/create?titles=<%= EncoderUtils.base64(cartVo.getGameTitles()) %>"
                   style="color: #fff;">下单</a>
                <%
                } else {
                %>
                下单
                <%
                    }
                %>
            </button>
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

<script>
    (function () {
        const needBackUrls = document.querySelectorAll('.need-back-url')
        if (needBackUrls) {
            needBackUrls.forEach(needBackUrl => {
                needBackUrl.href += btoa(window.location.href)
            })
        }
    })()
</script>
</body>
</html>