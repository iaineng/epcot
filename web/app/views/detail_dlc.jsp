<%--
  Created by IntelliJ IDEA.
  User: 16699314885
  Date: 2022/12/28
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游戏详情页面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app/assets/css/detail_dlc/detail_dlc.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/detail_dlc/swiper.css">
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
    </div>

</div>


<div class="tabs w">

    <div class="tab_name">
        《HITMAN 3》
    </div>

    <div class="tab_list">
        <a href="${pageContext.request.contextPath}/game/detail">概览</a>
        <a href="${pageContext.request.contextPath}/game/detail/dlc" class="on">附加内容</a>
    </div>
</div>


<div class="prolist w ">


    <div class="prolist_left" >
        <div class="prolist_left_tit" tabindex="1">
            显示: <span>最新推出</span>

            <div class="prolist_sub">
                <a href="">所有</a>
                <a href="" class="on">最新推出</a>
                <a href="">即将推出</a>
                <a href="">按字母顺序</a>
                <a href="">价格：由高至低</a>
                <a href="">价格：由低至高</a>
            </div>

        </div>


        <div class="prolist_main">

            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c1.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN Trilogy》高级附加内容组合包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥279</div>
                    </div>
                </a>
            </div>



            <div class="proitem">

                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c2.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》:七宗罪第6幕:嫉妒
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥25</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c3.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》:七宗罪第4幕:色欲
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥25</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c4.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》:七宗罪第3幕:懒惰
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥25</div>
                    </div>
                </a>
            </div>




            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c5.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》:七宗罪第2幕:傲慢
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥25</div>
                    </div>
                </a>
            </div>

            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c6.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        HITMAN 3:七宗罪合集
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥138</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c7.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        HITMAN 3——免费新手礼包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">免费</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c8.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3:七宗罪》第1幕:贪婪
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥25</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c9.jpg">
                    </div>
                    <div class="property">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》通行证：
                    </div>

                    <div class="proname">
                        《HITMAN 2》黄金版
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥325</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c10.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》通行证：
                    </div>

                    <div class="proname">
                        《HITMAN 2》扩展通行证2：
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥198</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c11.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》通行证：
                    </div>

                    <div class="proname">
                        《HITMAN 2》标准版
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥279</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c12.jfif">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》通行证：
                    </div>

                    <div class="proname">
                        《HITMAN 2》年度版
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥148</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c13.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》豪华组合包：
                    </div>

                    <div class="proname">
                        (Deluxe Pack)
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥169</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c14.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》:七宗罪第7幕:暴怒
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥25</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添置愿望清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail_dlc/c15.jpg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《HITMAN 3》:七宗罪第5幕:暴食
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥25</div>
                    </div>
                </a>
            </div>
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
                    <a href="">¥70.00 以下</a>
                </div>
                <div tabindex="1">
                    <a href="">¥140.00 以下</a>
                </div>
                <div tabindex="1">
                    <a href="">¥210.00 以下</a>
                </div>
                <div tabindex="1">
                    <a href="">¥90.00 及以上</a>
                </div>
                <div tabindex="1">
                    <a href="">折扣</a>
                </div>
            </li>

            <li tabindex="1" class="fir">
                <span>类别</span>
            </li>


            <li class="sub">
                <div tabindex="1">
                    <a href="">视频</a>
                </div>
                <div tabindex="1" >
                    <a href="">书籍</a>
                </div>
                <div tabindex="1">
                    <a href="">游戏附加内容</a>
                </div>
                <div tabindex="1">
                    <a href="">原声带</a>
                </div>
            </li>

            <li tabindex="1" class="fir">
                <span>平台</span>
            </li>

            <li class="sub">
                <div tabindex="1">
                    <a href="">Mac OS</a>
                </div>
                <div tabindex="1" >
                    <a href="">Window</a>
                </div>
            </li>
        </ul>
    </div>
</div>

<div class="footer">

    <div class="w1">

        <div class="footer_icon">

            <div class="footer_icon_l">
                <img src="${pageContext.request.contextPath}/app/assets/images/browse/fb.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/browse/tt.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/browse/in.png">
            </div>
            <div class="footer_icon_r">
                <a href="#top">
                    <img src="${pageContext.request.contextPath}/app/assets/images/browse/sr.png">
                </a>
            </div>

        </div>


        <div class="footer_info">
            <div class="footer_info_left">
                <div class="footer_info_tit">
                    资源
                </div>
                <div class="footer_info_list">
                    <div class="footer_info_item">
                        <a href="">创作者支持计划</a>
                        <a href="">在 Epic Games 上分发</a>
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
                        <a href="">Epic Newsroom</a>
                    </div>
                </div>

                <div class="footer_info_tit">
                    由Epic Games开发
                </div>
                <div class="footer_info_list">
                    <div class="footer_info_item">
                        <a href="">Battle Breakers</a>
                        <a href="">Fortnite</a>
                        <a href="">Infinity Blade</a>
                    </div>
                    <div class="footer_info_item">
                        <a href="">Robo Recall</a>
                        <a href="">Shadow Complex</a>
                        <a href="">Unreal Tournament</a>
                    </div>
                </div>
            </div>
            <div class="footer_info_right">
                <img src="${pageContext.request.contextPath}/app/assets/images/browse/footer_img.png">
            </div>
        </div>

        <div class="border-color"></div>

        <div class="footer_txt">
            © 2022, Epic Games, Inc. 版权所有。Epic、Epic Games、Epic Games标志、Fortnite（堡垒之夜）、Fortnite（堡垒之夜）标志、Unreal（虚幻）、Unreal Engine（虚幻引擎）、Unreal Engine（虚幻引擎）标志、Unreal Tournament（虚幻竞技场）以及Unreal Tournament（虚幻竞技场）标志属于Epic Games, Inc.在美利坚合众国及其他地区的商标或已注册商标。其他品牌或产品名称属于其各自拥有者的商标。美国以外事务通过Epic Games International, S.à r.l.办理。
        </div>
        <div class="footer_bom">
            <div class="foter_bom_left">
                <a href="">服务条款</a>
                <a href="">隐私政策</a>
                <a href="">商店退款政策</a>
            </div>
            <div class="foter_bom_right">
                <img src="${pageContext.request.contextPath}/app/assets/images/browse/i1.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/browse/i2.png">
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
</body>
</html>
