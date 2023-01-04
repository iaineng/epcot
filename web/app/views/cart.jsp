<%--
  Created by IntelliJ IDEA.
  User: tang0
  Date: 2023/1/3
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app/assets/css/cart/cart.css">
</head>
<body>
<div id="top" class="search w">

    <div class="search_input">
        <input type="" name="" placeholder="探索商城">
    </div>

    <div class="search_tab">
        <a href="">探索</a>
        <a href="">浏览</a>
        <a href="">新闻</a>
    </div>

    <div class="search_tab search_tab2">
        <a href="">愿望清单</a>
        <a href="" class="on">购物车
            <span>2</span>
        </a>
    </div>
</div>


<div class="tabs w">

    <div class="tab_name">
        我的购物车
    </div>
</div>

<div class="prolist w ">
    <div class="prolist_left" >
        <div class="proitem">
            <div class="proitem_img">
                <img src="${pageContext.request.contextPath}/app/assets/images/cart/pp1.jpeg">
            </div>
            <div class="proitem_info">
                <div class="proitem_info_left">
                    <div class="proitem_info_left1">基础游戏</div>
                    <div class="proitem_info_left2">《Dishonored》 Definitive Edition</div>
                    <div class="proitem_info_left3">
                        可自助退款 <span>?</span>
                    </div>
                    <div class="proitem_info_left4">
                        <img src="${pageContext.request.contextPath}/app/assets/images/cart/win.png">
                    </div>
                </div>

                <div class="proitem_info_right">
                    <div class="proitem_info_right1">
                        <div class="prodiscount">-20%</div>
                        <div class="proyuanjia">¥75</div>
                        <div class="proxianjia">¥60</div>
                    </div>
                    <div class="proitem_info_right2">
                        优惠截止于2023/1/6 00:00
                    </div>
                    <div class="proitem_info_right3">
                        <a href="">
                            <img src="${pageContext.request.contextPath}/app/assets/images/cart/addto.png">
                            <span>移至愿望清单</span>
                        </a>
                        <a href="">
                            <span>移除</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>



        <div class="proitem">
            <div class="proitem_img">
                <img src="${pageContext.request.contextPath}/app/assets/images/cart/pp2.jpeg">
            </div>
            <div class="proitem_info">
                <div class="proitem_info_left">
                    <div class="proitem_info_left1">基础游戏</div>
                    <div class="proitem_info_left2">《Sifu》</div>
                    <div class="proitem_info_left3">
                        可自助退款 <span>?</span>
                    </div>
                    <div class="proitem_info_left4">
                        <img src="${pageContext.request.contextPath}/app/assets/images/cart/win.png">
                    </div>
                </div>

                <div class="proitem_info_right">
                    <div class="proitem_info_right1">
                        <div class="prodiscount">-20%</div>
                        <div class="proyuanjia">¥75</div>
                        <div class="proxianjia">¥60</div>
                    </div>
                    <div class="proitem_info_right2">
                        优惠截止于2023/1/6 00:00
                    </div>
                    <div class="proitem_info_right3">
                        <a href="">
                            <img src="${pageContext.request.contextPath}/app/assets/images/cart/addto.png">
                            <span>移至愿望清单</span>
                        </a>
                        <a href="">
                            <span>移除</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <div class="prolist_right">
        <div class="prolist_right1">
            游戏和应用概览
        </div>
        <div class="prolist_right2">
            <span>价格</span>
            <span>¥222.00</span>
        </div>
        <div class="prolist_right2">
            <span>特卖折扣</span>
            <span>-¥124.70</span>
        </div>
        <div class="prolist_right2">
            <span>优惠券折扣</span>
            <span>-¥24.33</span>
        </div>
        <div class="prolist_right3">
            <div class="prolist_right3_1">
                <span>✓</span>EPIC 优惠券
            </div>
            <div class="prolist_right3_2">
                好消息!在购买符合要求商品时花费不低于¥90.00即可享受25%折扣. <a href="">查看要求详情</a>
            </div>
            <div class="prolist_right3_3">
                <span>《Sifu》</span>
                <span>-¥24.33</span>
            </div>
        </div>

        <div class="prolist_right2">
            <span>税费</span>
            <span>结账时计算</span>
        </div>

        <div class="prolist_right2 prolist_right2_xj">
            <span>小计</span>
            <span>¥72.97</span>
        </div>
        <div class="prolist_right4">
            <button>下单</button>
        </div>
    </div>
</div>
</body>
</html>