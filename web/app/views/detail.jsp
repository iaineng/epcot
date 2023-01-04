<%@ page import="team.ape.epcot.vo.DetailVo" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="team.ape.epcot.entity.UserVoEntity" %>
<%@ page import="team.ape.epcot.entity.GameVoEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="team.ape.epcot.util.EncoderUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserVoEntity user = (UserVoEntity) request.getAttribute("userVoEntity");
    DetailVo detailVo = (DetailVo) request.getAttribute("detailVo");

    List<String> coverUrls;
    if (detailVo.isDlcDetail()) {
        coverUrls = detailVo.getDlc().getCoverUrls();
    } else {
        coverUrls = detailVo.getGame().getCoverUrls();
    }

    boolean owned;
    if (detailVo.isDlcDetail()) {
        owned = detailVo.getDlc().isOwned();
    } else {
        owned = detailVo.getGame().isOwned();
    }

    String downloadLink;
    if (detailVo.isDlcDetail()) {
        downloadLink = detailVo.getDlc().getDownloadLink();
    } else {
        downloadLink = detailVo.getGame().getDownloadLink();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><%= detailVo.getGame().getTitle() %>
    </title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/app/assets/images/icon_256x256.png"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app/assets/css/detail/detail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/detail/swiper.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/app/assets/css/discover/header.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <style>
        <%
for (int i = 2; i < coverUrls.size(); i++) {
        %>
        .cover-<%= (i - 1) %> {
            background-image: url(<%= request.getContextPath() + coverUrls.get(i) %>) !important;
        }

        <%
        }
        %>
    </style>
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
        <a href="${pageContext.request.contextPath}/inventory">库存</a>
        <a href="${pageContext.request.contextPath}/wishlist">愿望清单</a>
        <a href="${pageContext.request.contextPath}/cart">购物车</a>
    </div>
</div>
<div class="tabs w">
    <div class="tab_name"><%= detailVo.getGame().getTitle() %>
    </div>
</div>

<div class="tabs w">
    <div class="tab_list">
        <%
            if (detailVo.getGame().getDlcs().size() > 0) {
        %>
        <a class="<% if (!detailVo.isDlcDetail()) out.write("on"); %>"
           href="${pageContext.request.contextPath}/game/detail?title=<%= EncoderUtils.base64(detailVo.getGame().getTitle()) %>">概览</a>
        <a class="<% if (detailVo.isDlcDetail()) out.write("on"); %>"
           href="${pageContext.request.contextPath}/game/detail/dlc?title=<%= EncoderUtils.base64(detailVo.getGame().getTitle()) %>">附加内容</a>
        <%
            }
        %>
    </div>
</div>
<div class="prolist gailan w">
    <div class="prolist_left">
        <div class="swiper-container">
            <div class="video_swiper swiper-wrapper">
                <%
                    for (int i = 2; i < coverUrls.size(); i++) {
                %>
                <div class="video_swiper_item swiper-slide">
                    <img style="width: 100%;height: 100%;"
                         src="<%= request.getContextPath() + coverUrls.get(i) %>"/>
                </div>
                <%
                    }
                %>
            </div>
            <div class="swiper-button-prev swiper-button-white"></div>
            <div class="swiper-button-next swiper-button-white"></div>
        </div>
        <div class="swiper-pagination-wrapper">
            <div class="swiper-pagination"></div>
        </div>
        <div id="descTemp" style="display: none;">
            <%
                if (detailVo.isDlcDetail()) {
                    out.print(detailVo.getDlc().getDescription());
                } else {
                    out.print(detailVo.getGame().getDescription());
                }
            %>
        </div>
        <div class="game_name"></div>
        <div class="game_type_box">
            <div class="game_type">
                <span>游戏类型</span>
                <span class="game_type_link">
                    <%
                        for (String tag : detailVo.getGame().getTags()) {
                    %>
                    <a href="javascript:void(0);"><%= tag %></a>
                    <%
                            if (detailVo.getGame().getTags().indexOf(tag) != detailVo.getGame().getTags().size() - 1) {
                                out.print(",&nbsp;");
                            }
                        }
                    %>
                </span>
            </div>
        </div>
        <div class="game_desc"></div>
        <%
            if (!detailVo.isDlcDetail() && detailVo.getGame().getDlcs().size() > 0) {
        %>
        <div class="game_list">
            <div class="game_list_tit">附加内容</div>
            <%
                for (int i = 0; i < detailVo.getGame().getDlcs().size() && i < 3; i++) {
                    GameVoEntity.Dlc dlc = detailVo.getGame().getDlcs().get(i);
            %>
            <div class="game_item">
                <div class="game_top">
                    <div class="game_img">
                        <img src="${pageContext.request.contextPath}<%= dlc.getCoverUrls().get(2) %>">
                    </div>
                    <div class="game_info">
                        <div class="game_info_desc">
                            <div class="game_info_type">
                                <span class="type">附加内容</span>
                                <span class="name"><%= dlc.getTitle() %></span>
                            </div>
                            <div class="info"></div>
                        </div>
                    </div>
                </div>
                <div class="game_btns">
                    <div class="game_price">¥<%= dlc.getPrice() %>
                    </div>
                    <button class="game_add_cart">加入购物车</button>
                    <button class="game_add_gouwu">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
                        添至购物清单
                    </button>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <div class="game_list_more">
            <a href="${pageContext.request.contextPath}/game/detail/dlc?title=<%= Base64.encodeBase64URLSafeString(detailVo.getGame().getTitle().getBytes(StandardCharsets.UTF_8)) %>">查看更多</a>
        </div>
        <%
            }
        %>
        <div class="game_list" style="margin-bottom: 50px;">
            <div class="game_list_tit">关注我们</div>
            <div class="game_list_icons">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/fb.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/qq.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/ins.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/tt.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/in.png">
            </div>
        </div>
    </div>
    <div class="prolist_right">
        <div class="prolist_right_img">
            <img style="width: 100%;object-fit: contain;"
                 src="${pageContext.request.contextPath}<%= coverUrls.get(1) %>">
        </div>
        <div class="prolist_right_game_type"><%
            if (detailVo.isDlcDetail()) {
                out.print("附加内容");
            } else {
                out.print("基础游戏");
            }
        %></div>
        <div class="prolist_right_game_price">¥<%
            if (detailVo.isDlcDetail()) {
                out.print(detailVo.getDlc().getPrice());
            } else {
                out.print(detailVo.getGame().getPrice());
            }
        %></div>
        <%
            if (owned) {
        %>
        <button class="prolist_right_buynow"><a style="color: #fff;" href="<%= downloadLink %>">立即下载</a></button>
        <%
        } else {
        %>
        <%
            if (detailVo.isDlcDetail() && !detailVo.getGame().isOwned()) {
        %>
        <button class="prolist_right_buynow">必须先购买游戏本体才能购买DLC</button>
        <%
        } else {
        %>
        <button class="prolist_right_buynow">
            <%
                if (!detailVo.isDlcDetail()) {
            %>
            <a style="color: #fff;"
               href="${pageContext.request.contextPath}/order/create?titles=<%= EncoderUtils.base64(detailVo.getGame().getTitle()) %>">立即购买</a>
            <%
            } else {
            %>
            <a style="color: #fff;"
               href="${pageContext.request.contextPath}/order/create?dlcTitles=<%= EncoderUtils.base64(detailVo.getDlc().getTitle()) %>">立即购买</a>
            <%
                }
            %>
        </button>
        <%
            if (!detailVo.isDlcDetail()) {
        %>
        <%
            if (!detailVo.getGame().isInCart()) {
        %>
        <button class="prolist_right_addcart">
            <a style="color: #fff;"
               href="${pageContext.request.contextPath}/cart/add?title=<%= EncoderUtils.base64(detailVo.getGame().getTitle()) %>&backUrl="
               class="need-back-url">加入购物车</a>
        </button>
        <%
        } else {
        %>
        <button class="prolist_right_addcart">已在购物车中</button>
        <%
            }
        %>
        <button class="prolist_right_yuanwang">
            <%
                if (!detailVo.getGame().isInWishlist()) {
            %>
            <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
            <a style="color: #fff;"
               href="${pageContext.request.contextPath}/wishlist/add?title=<%= EncoderUtils.base64(detailVo.getGame().getTitle()) %>&backUrl="
               class="need-back-url">添至愿望清单</a>
            <%
            } else {
            %>
            <img src="${pageContext.request.contextPath}/app/assets/images/detail/gou.png">
            已加入愿望清单
            <%
                }
            %>
        </button>
        <%
            }
        %>
        <%
            }
        %>
        <%
            }
        %>
        <div class="prolist_right_list">
            <div class="prolist_right_item">
                <div class="prolist_right_list1">
                    退款类型
                </div>
                <div class="prolist_right_list2">
                    可自助退款
                    <a href="javascript:void(0);">
                        ?
                        <span class="prolist_right_list2_abs">了解更多关于退款的详情</span>
                    </a>
                </div>
            </div>
            <div class="prolist_right_item">
                <div class="prolist_right_list1">开发商</div>
                <div class="prolist_right_list2"><%= detailVo.getGame().getDeveloper() %>
                </div>
            </div>
            <div class="prolist_right_item">
                <div class="prolist_right_list1">发行商</div>
                <div class="prolist_right_list2"><%= detailVo.getGame().getPublisher() %>
                </div>
            </div>
            <div class="prolist_right_item">
                <div class="prolist_right_list1">
                    发行日期
                </div>
                <div class="prolist_right_list2"><%= new SimpleDateFormat("yyyy-MM-dd").format(detailVo.getGame().getReleasedAt()) %>
                </div>
            </div>
            <div class="prolist_right_item">
                <div class="prolist_right_list1">
                    平台
                </div>
                <div class="prolist_right_list2">
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/win.png">
                </div>
            </div>
        </div>
        <div class="prolist_right_btns">
            <button class="prolist_right_buynow">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/share.png" height="25">
                分享
            </button>
            <button class="prolist_right_addcart">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/flag.png" height="18">
                报告
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

<script src="${pageContext.request.contextPath}/app/assets/js/saveHistory.js"></script>
<script src="${pageContext.request.contextPath}/app/assets/js/browse/swiper.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/app/assets/js/browse/jquery-2.1.1.min.js"></script>

<script type="text/javascript">
    (function () {
        const needBackUrls = document.querySelectorAll('.need-back-url')
        if (needBackUrls) {
            needBackUrls.forEach(needBackUrl => {
                needBackUrl.href += btoa(window.location.href)
            })
        }
    })()

    function progressFn(e, perNum) {
        // perNum 为进度值
        var percent = Math.ceil((perNum / 100) * 100);
        var deg1 = ((45 + 135) * percent) / 50 - 135;
        var deg2 = ((45 + 135) * (percent - 50)) / 50 - 135;
        if (percent >= 50) {
            $(e).find('.leftcircle').css({
                'transform': 'rotate(' + deg2 + 'deg' + ')'
            })
            $(e).find('.rightcircle').css({
                'transform': 'rotate(' + 45 + 'deg' + ')'
            });
        } else {
            $(e).find('.rightcircle').css({
                'transform': 'rotate(' + deg1 + 'deg' + ')'
            })
        }
    }

    $('.circle_process').each(function (i, e) {

        progressFn(e, $(e).data('range'));
    })
    var mySwiper = new Swiper('.swiper-container', {
        loop: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
            renderBullet: function (index, className) {
                return '<span class="' + className + ' cover-' + (index + 1) + '"></span>';
            },
        },
        on: {
            init: function () {
                console.log($('.swiper-slide-active').find('video').trigger('click'));
                // $('.swiper-slide-active').find('video')[0].play();
            },
            slideNextTransitionEnd: function () {
                // $('.video_swiper_item').each(function(i,e){
                //     if(!$(e).hasClass('swiper-slide-active')) {
                //         $(e).find('video')[0].pause();
                //     }
                // })
                // $('.swiper-slide-active').find('video')[0].play();
            },

            slidePrevTransitionEnd: function () {
                // $('.video_swiper_item').each(function(i,e){
                //     if(!$(e).hasClass('swiper-slide-active')) {
                //         $(e).find('video')[0].pause();
                //     }
                // })
                // $('.swiper-slide-active').find('video')[0].play();
            }
        },
    })
</script>
<script src="${pageContext.request.contextPath}/app/assets/js/detail/detail.js"></script>

</body>
</html>