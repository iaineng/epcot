<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c1.png" class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c2.jpg" class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c3.png" class="cat_img_right">
                    </div>

                    <div class="cat_name">Rogue-Lite 游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c4.png" class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c5.png" class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c6.png" class="cat_img_right">
                    </div>

                    <div class="cat_name">simulation-games</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c7.jpeg" class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c8.jpeg" class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c9.jpeg" class="cat_img_right">
                    </div>

                    <div class="cat_name">VR 游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c10.png" class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c11.jpg" class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c12.jpg" class="cat_img_right">
                    </div>

                    <div class="cat_name">休闲游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c13.jpg" class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c14.jpeg" class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c15.jpeg" class="cat_img_right">
                    </div>

                    <div class="cat_name">动作游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c16.png" class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c17.jpg" class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c18.jpeg" class="cat_img_right">
                    </div>

                    <div class="cat_name">单人</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c19.jpeg" class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c20.png" class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c21.png" class="cat_img_right">
                    </div>

                    <div class="cat_name">合作游戏</div>
                </a>
            </div>

            <div class="cat_item swiper-slide">
                <a href="">
                    <div class="cat_imgs">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c22.jpg" class="cat_img_left">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c23.png" class="cat_img_center">
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/c24.jpg" class="cat_img_right">
                    </div>

                    <div class="cat_name">回合制游戏</div>
                </a>
            </div>
        </div>
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
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p1.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《消逝的光芒2 人与仁之战》Nutcracker Bundle
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥8</div>
                    </div>
                </a>
            </div>



            <div class="proitem">

                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p2.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        神秘诡术师爱蒙主题包
                    </div>

                    <div class="proprice">
                        <div class="prodiscount">-20%</div>
                        <div class="proyuanjia">¥75</div>
                        <div class="proxianjia">¥60</div>
                    </div>
                </a>
            </div>




            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p3.jpg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        Sail Forth
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥60</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p4.png">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        Golazo 2
                    </div>

                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥45</div>
                    </div>
                </a>
            </div>




            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p5.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《摔角城大乱斗》假日恶魔包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥64</div>
                    </div>
                </a>
            </div>

            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p6.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        SteelSeries© 免费造型包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">免费</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p7.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        Bioluminescence 任务包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥31</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p8.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        Them's Fightin' Herds - Texas
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥14</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p9.jpeg">
                    </div>
                    <div class="property">
                        版本
                    </div>
                    <div class="proname">
                        Them's Fightin' Herds: Deluxe Edition
                    </div>

                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥118</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p10.jpeg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        Them's Fightin' Herds
                    </div>

                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">60</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p11.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《Them’s Fightin’ Herds》第 1 季通行证
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥60</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p12.jpeg">
                    </div>
                    <div class="protype">
                        应用
                    </div>
                    <div class="proname">
                        Outplayed
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">免费</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p13.jpeg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        LEGO® Brawls
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥60</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p14.jpeg">
                    </div>
                    <div class="protype">
                        版本
                    </div>
                    <div class="proname">
                        Mount & Blade II: Bannerlord Digital Deluxe
                    </div>

                    <div class="proprice">
                        <div class="prodiscount">-30%</div>
                        <div class="proyuanjia">¥331</div>
                        <div class="proxianjia">¥229.90</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p15.jpg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        Fire: Ungh’s Quest
                    </div>


                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>
                    <div class="proprice">
                        <div class="proxianjia">¥36</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p16.jpg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        异星前哨
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥68</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p17.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《Dauntless》- Iron Nikola Bundle
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥60</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p18.png">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        Demeo
                    </div>

                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥88</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p19.png">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        Melatonin
                    </div>


                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>
                    <div class="proprice">
                        <div class="prodiscount">-10%</div>
                        <div class="proyuanjia">¥58</div>
                        <div class="proxianjia">¥52.20</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p20.jpg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        《Cassiodora》
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥58</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p21.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        DreamWorks Pinball
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥52</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p22.jpeg">
                    </div>
                    <div class="protype">
                        捆绑包
                    </div>
                    <div class="proname">
                        Daedalic Real Time Tactics Bundle
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥269</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p23.jpeg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        Dishonored®: Death of the Outsider™
                    </div>


                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>
                    <div class="proprice">
                        <div class="prodiscount">-75%</div>
                        <div class="proyuanjia">¥325</div>
                        <div class="proxianjia">¥31.25</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p24.jpeg">
                    </div>
                    <div class="protype">
                        试玩版
                    </div>
                    <div class="proname">
                        《永劫无间》- 免费试玩
                    </div>

                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p25.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        Arcade Paradise - Kung Fury: Street Rage
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥8</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p26.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《消逝的光芒2 人与仁之战》Developer Tools
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">免费</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p27.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《荒野的召唤：垂钓者™》– 挪威保护区
                    </div>

                    <div class="proprice">
                        <div class="prodiscount">-100%</div>
                        <div class="proyuanjia">¥43</div>
                        <div class="proxianjia">免费</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p28.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《糖豆人》- 浆果树豆
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">免费</div>
                    </div>

                </a>
            </div>

            
            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p29.jpeg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        BLACKTAIL
                    </div>

                    <div class="proprice">
                        <div class="prodiscount">-20%</div>
                        <div class="proyuanjia">¥109</div>
                        <div class="proxianjia">¥87.2</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p30.jpg">
                    </div>
                    <div class="protype">
                        基础游戏
                    </div>
                    <div class="proname">
                        Arcanium
                    </div>

                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>
                    <div class="proprice">
                        <div class="proxianjia">¥75</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p31.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        玄火套組
                    </div>

                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>
                    <div class="proprice">
                        <div class="proxianjia">¥56</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p32.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        Bassassin Quest Pack
                    </div>


                    <div class="prostatus">
                        <span>现已登录EPIC</span>
                    </div>
                    <div class="proprice">
                        <div class="proxianjia">¥31</div>
                    </div>

                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p33.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        《Video Horror Society》- Reggie
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥23</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p34.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        烛堡之书伙伴包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥45</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p35.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        魔法船德莉纳皮肤和技能包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥30</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p36.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        大名鼎鼎的英雄们：第 5 年全明星礼包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥168</div>
                    </div>

                </a>
            </div>



            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p37.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        Warframe Baruuk Prime Access：“离手戏法”组合包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥520</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p38.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        Warframe Baruuk Prime Access：“宁静风暴”组合包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥910</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p39.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        Warframe Baruuk Prime Access：“巧躲”组合包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥325</div>
                    </div>
                </a>
            </div>


            <div class="proitem">
                <div class="protask">添加进任务清单</div>
                <a href="">
                    <div class="proimg">
                        <div class="proadd">
                            <img src="${pageContext.request.contextPath}/app/assets/images/browse/add.png">
                        </div>
                        <div class="proimg_bg"></div>
                        <img src="${pageContext.request.contextPath}/app/assets/images/browse/p40.jpeg">
                    </div>
                    <div class="protype">
                        附加内容
                    </div>
                    <div class="proname">
                        Warframe Baruuk Prime Access：配件包
                    </div>

                    <div class="proprice">
                        <div class="proxianjia">¥325</div>
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
                <span>活动</span>
            </li>
            <li class="sub">
                <div tabindex="1">
                    <a href="">2K Gearbox 特卖</a>
                </div>
                <div tabindex="1" class="focus">
                    <a href="">年假日特卖</a>
                </div>
            </li>
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
                <div tabindex="1">
                    <a href="">THQ 发行商促销</a>
                </div>
            </li>
            <li tabindex="1" class="fir">
                <span>特色</span>
            </li>


            <li class="sub">
                <div tabindex="1">
                    <a href="">成就</a>
                </div>
                <div tabindex="1" >
                    <a href="">单人</a>
                </div>
                <div tabindex="1">
                    <a href="">多人</a>
                </div>
                <div tabindex="1">
                    <a href="">多人在线游戏</a>
                </div>
                <div tabindex="1">
                    <a href="">合作</a>
                </div>
                <div tabindex="1">
                    <a href="">竞技</a>
                </div>
                <div tabindex="1">
                    <a href="">跨平台</a>
                </div>
                <div tabindex="1">
                    <a href="">云存储</a>
                </div>
                <div tabindex="1">
                    <a href="">支持手柄</a>
                </div>
                <div tabindex="1">
                    <a href="">VR</a>
                </div>
            </li>


            <li tabindex="1" class="fir">
                <span>类别</span>
            </li>


            <li class="sub">
                <div tabindex="1">
                    <a href="">编辑器</a>
                </div>
                <div tabindex="1" >
                    <a href="">软件</a>
                </div>
                <div tabindex="1">
                    <a href="">游戏</a>
                </div>
                <div tabindex="1">
                    <a href="">游戏版本</a>
                </div>
                <div tabindex="1">
                    <a href="">游戏附加内容</a>
                </div>
                <div tabindex="1">
                    <a href="">游戏捆绑包</a>
                </div>
                <div tabindex="1">
                    <a href="">游戏演示版</a>
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

<div class="wishlist-container">

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