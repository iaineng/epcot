<%@ page import="team.ape.epcot.vo.BrowseVo" %>
<%@ page import="team.ape.epcot.entity.GameVoEntity" %>
<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BrowseVo browseVo = (BrowseVo) request.getAttribute("browseVo");
%>
<html>
<head>
    <meta charset="utf-8">
    <title>浏览模块</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app/assets/css/browse/browse.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/browse/swiper.css">
</head>
<body>


<div id="top" class="search w">

    <div class="search_input">
        <input type="text" name="" placeholder="探索商城">
    </div>

    <div class="search_tab">
        <a href="">探索</a>
        <a href="" class="on">浏览</a>
        <a href="">新闻</a>
        <a href="#">愿望清单</a>
        <a href="#">购物车</a>
    </div>
</div>


<div class="categories w d-none">

    <div class="cat_tit">

        <span>受欢迎的类型</span>
        <div class="swiper_lr">
            <div class="s_left" tabindex="1">
                <img src="${pageContext.request.contextPath}/app/assets/images/browse/left.png">
            </div>
            <div class="s_right" tabindex="1">
                <img src="${pageContext.request.contextPath}/app/assets/images/browse/right.png">
            </div>
        </div>
    </div>

    <div class="cat_list swiper-container">
        <div class="swiper-wrapper">

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c1.png"
                             class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c2.jpg"
                             class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c3.png"
                             class="cat_img_right">
                    </div>

                    <div class="cat_name">Rogue-Lite 游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c4.png"
                             class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c5.png"
                             class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c6.png"
                             class="cat_img_right">
                    </div>

                    <div class="cat_name">simulation-games</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c7.jpeg"
                             class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c8.jpeg"
                             class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c9.jpeg"
                             class="cat_img_right">
                    </div>

                    <div class="cat_name">VR 游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c10.png"
                             class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c11.jpg"
                             class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c12.jpg"
                             class="cat_img_right">
                    </div>

                    <div class="cat_name">休闲游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c13.jpg"
                             class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c14.jpeg"
                             class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c15.jpeg"
                             class="cat_img_right">
                    </div>

                    <div class="cat_name">动作游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c16.png"
                             class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c17.jpg"
                             class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c18.jpeg"
                             class="cat_img_right">
                    </div>

                    <div class="cat_name">单人</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c19.jpeg"
                             class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c20.png"
                             class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c21.png"
                             class="cat_img_right">
                    </div>

                    <div class="cat_name">合作游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c22.jpg"
                             class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c23.png"
                             class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c24.jpg"
                             class="cat_img_right">
                    </div>

                    <div class="cat_name">回合制游戏</div>
                </a>
            </div>
        </div>
    </div>

</div>


<div class="prolist w ">
    <div class="prolist_left">
        <div class="prolist_left_tit" tabindex="1">
            显示: <span>不排序</span>
            <div class="prolist_sub">
                <a href="" class="on filter-option" data-fo-option="sort" data-fo-option-value="">不排序</a>
                <a href="" class="filter-option" data-fo-option="sort" data-fo-option-value="titleAsc">按字母顺序</a>
                <a href="" class="filter-option" data-fo-option="sort" data-fo-option-value="titleDesc">按字母倒序</a>
                <a href="" class="filter-option" data-fo-option="sort" data-fo-option-value="releasedAtDesc">推出时间：由新至旧</a>
                <a href="" class="filter-option" data-fo-option="sort" data-fo-option-value="releasedAtAsc">推出时间：由旧至新</a>
                <a href="" class="filter-option" data-fo-option="sort" data-fo-option-value="priceDesc">价格：由高至低</a>
                <a href="" class="filter-option" data-fo-option="sort" data-fo-option-value="priceAsc">价格：由低至高</a>
            </div>
        </div>
        <div class="prolist_main">
            <%
                for (GameVoEntity game : browseVo.getGames()) {
            %>
            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="<%= request.getContextPath() + "/game/detail?title=" + Base64.encodeBase64URLSafeString(game.getTitle().getBytes(StandardCharsets.UTF_8)) %>">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}<%= game.getCoverUrls().get(0) %>">
                    </div>
                    <div class="protype">基础游戏</div>
                    <div class="proname"><%= game.getTitle() %>
                    </div>
                    <div class="proprice">
                        <%
                            if (game.getDiscounting() != null) {
                        %>
                        <div class="prodiscount">-<%= game.getDiscounting().getDiscountPercentage() %>%</div>
                        <div class="proyuanjia">¥<%= game.getPrice().toString() %>
                        </div>
                        <div class="proxianjia">¥<%= game.getDiscounting().getDiscountedPrice().toString() %>
                        </div>
                        <%
                        } else {
                        %>
                        <div class="proxianjia">¥<%= game.getPrice().toString() %>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </a>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <div class="prolist_right">
        <div class="prolist_right_tit">筛选器</div>
        <div class="prolist_right_search">
            <div class="search_input">
                <input type="" name="" placeholder="关键词">
            </div>
        </div>
        <ul class="prolist_right_list">
            <li tabindex="1" class="fir">
                <span>价格</span>
            </li>
            <li class="sub">
                <div tabindex="1">
                    <a href="">免费</a>
                </div>
                <div tabindex="1">
                    <a href="">折扣</a>
                </div>
                <div tabindex="1">
                    <a href="">¥70.00 以下</a>
                </div>
                <div tabindex="1">
                    <a href="">¥140.00 以下</a>
                </div>
                <div tabindex="1">
                    <a href="">¥210.00 以下</a>
                </div>
            </li>
            <li tabindex="1" class="fir">
                <span>游戏类型</span>
            </li>
            <li class="sub">
                <div tabindex="1">
                    <a href="">策略</a>
                </div>
                <div tabindex="1">
                    <a href="">城市建造</a>
                </div>
                <div tabindex="1">
                    <a href="">地牢探索</a>
                </div>
                <div tabindex="1">
                    <a href="">第一人称</a>
                </div>
                <div tabindex="1">
                    <a href="">动作</a>
                </div>
                <div tabindex="1">
                    <a href="">动作冒险</a>
                </div>
                <div tabindex="1">
                    <a href="">独立</a>
                </div>
                <div tabindex="1">
                    <a href="">多人在线战术竞技游戏</a>
                </div>
                <div tabindex="1">
                    <a href="">复古</a>
                </div>
                <div tabindex="1">
                    <a href="">格斗</a>
                </div>
                <div tabindex="1">
                    <a href="">回合制</a>
                </div>
                <div tabindex="1">
                    <a href="">角色扮演</a>
                </div>
                <div tabindex="1">
                    <a href="">解密</a>
                </div>
                <div tabindex="1">
                    <a href="">竞速</a>
                </div>
                <div tabindex="1">
                    <a href="">卡牌</a>
                </div>
                <div tabindex="1">
                    <a href="">开放世界</a>
                </div>
                <div tabindex="1">
                    <a href="">恐怖</a>
                </div>
                <div tabindex="1">
                    <a href="">冒险</a>
                </div>
                <div tabindex="1">
                    <a href="">模拟</a>
                </div>
                <div tabindex="1">
                    <a href="">派对</a>
                </div>
                <div tabindex="1">
                    <a href="">平台游戏</a>
                </div>
                <div tabindex="1">
                    <a href="">潜行</a>
                </div>
                <div tabindex="1">
                    <a href="">射击</a>
                </div>
                <div tabindex="1">
                    <a href="">生存</a>
                </div>
                <div tabindex="1">
                    <a href="">塔防</a>
                </div>
                <div tabindex="1">
                    <a href="">太空</a>
                </div>
                <div tabindex="1">
                    <a href="">探索</a>
                </div>
                <div tabindex="1">
                    <a href="">喜剧</a>
                </div>
                <div tabindex="1">
                    <a href="">休闲</a>
                </div>
                <div tabindex="1">
                    <a href="">叙事</a>
                </div>
                <div tabindex="1">
                    <a href="">益智问答</a>
                </div>
                <div tabindex="1">
                    <a href="">音乐</a>
                </div>
                <div tabindex="1">
                    <a href="">运动</a>
                </div>
                <div tabindex="1">
                    <a href="">Rogue-lite</a>
                </div>
            </li>
            <li tabindex="1" class="fir">
                <span>平台</span>
            </li>
            <li class="sub">
                <div tabindex="1">
                    <a href="">Mac OS</a>
                </div>
                <div tabindex="1">
                    <a href="">Window</a>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="wishlist-container">
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
<script type="text/javascript"
        src="${pageContext.request.contextPath}/app/assets/js/browse/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
    $('.filter-option').click(function (event) {
        console.log(event.target);
    })

    function startFilter() {
        const param = new URLSearchParams(window.location.search)
        param.set('filter', '1')
        window.location.search = '?' + param.toString()
    }

    function whenSortChange(sort) {
        return function () {

        }
    }

    $('.proadd').hover(function () {
        $(this).closest('.proitem').find('.protask').toggle();
    })
    $('.fir').click(function () {

        if ($(this).next('.sub').css('display') == 'flex') {
            $(this).next('.sub').css('display', 'none');
        } else {
            $(this).next('.sub').css('display', 'flex');
        }
        $(this).toggleClass('focus');
    })
    $('.sub > div').click(function () {
        $(this).toggleClass('focus');
    })
    var mySwiper = new Swiper('.swiper-container', {
        loop: true,
        slidesPerView: 4,
        slidesPerGroup: 4,
        navigation: {
            nextEl: '.s_right',
            prevEl: '.s_left',
        },
    })
</script>
</body>
</html>