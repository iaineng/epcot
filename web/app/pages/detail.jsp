<%--
  Created by IntelliJ IDEA.
  User: 16699314885
  Date: 2022/12/27
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app/assets/css/browse/detail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/browse/swiper.css">

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

</div>


<div class="tabs w">

    <div class="tab_name">
        《HITMAN 3》
    </div>
</div>

<div class="prolist_left_pinlun w">

    <div class="prolist_stars">
        <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
        <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
        <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
        <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
        <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
    </div>
    <div class="prolist_score">
        4.8
    </div>


    <div class="prolist_pinlun">
        <img src="${pageContext.request.contextPath}/app/assets/images/detail/se.svg">
        <span>超级有趣</span>
    </div>


    <div class="prolist_pinlun">
        <img src="${pageContext.request.contextPath}/app/assets/images/detail/laba.svg">
        <span>非常值得推荐</span>
    </div>
</div>


<div class="tabs w">
    <div class="tab_list">
        <a href="${pageContext.request.contextPath}/app/pages/detail.jsp" class="on">概览</a>
        <a href="${pageContext.request.contextPath}/app/pages/detail1.jsp">附加内容</a>
    </div>
</div>

<div class="prolist gailan w">

    <div class="prolist_left">

        <div class="swiper-container">
            <div class="video_swiper swiper-wrapper">
                <div class="video_swiper_item swiper-slide">
                    <video controls>
                        <source src="${pageContext.request.contextPath}/app/assets/images/detail/1.mp4" type="video/mp4" >
                    </video>
                </div>
                <div class="video_swiper_item swiper-slide">
                    <video controls>
                        <source src="${pageContext.request.contextPath}/app/assets/images/detail/1.mp4" type="video/mp4" >
                    </video>
                </div>
                <div class="video_swiper_item swiper-slide">
                    <video controls>
                        <source src="${pageContext.request.contextPath}/app/assets/images/detail/1.mp4" type="video/mp4" >
                    </video>
                </div>
                <div class="video_swiper_item swiper-slide">
                    <video controls>
                        <source src="${pageContext.request.contextPath}/app/assets/images/detail/1.mp4" type="video/mp4" >
                    </video>
                </div>
                <div class="video_swiper_item swiper-slide">
                    <video controls>
                        <source src="${pageContext.request.contextPath}/app/assets/images/detail/1.mp4" type="video/mp4" >
                    </video>
                </div>
                <div class="video_swiper_item swiper-slide">
                    <video controls>
                        <source src="${pageContext.request.contextPath}/app/assets/images/detail/1.mp4" type="video/mp4" >
                    </video>
                </div>
            </div>
            <div class="swiper-button-prev swiper-button-white"></div><!--左箭头。如果放置在swiper外面，需要自定义样式。-->
            <div class="swiper-button-next swiper-button-white"></div><!--右箭头。如果放置在swiper外面，需要自定义样式。-->

        </div>
        <div class="swiper-pagination-wrapper">
            <div class="swiper-pagination"></div>
        </div>
        <div class="game_name">
            死亡正在等待。Agent 47 于暗杀世界（World of Assassination）三部曲之最终作《HITMAN 3》中再度登场。
        </div>

        <div class="game_type_box">
            <div class="game_type">
                <span>游戏类型</span>
                <span class="game_type_link"><a href="">动作</a>，<a href="">潜行</a></span>
            </div>
            <div class="game_type">
                <span>功能</span>
                <span class="game_type_link">
						<a href="">云存储</a>，<a href="">成就</a>，<a href="">支持手柄</a>，<a href="">单人</a>
					</span>
            </div>
        </div>

        <div class="game_desc">
            <div class="game_desc_title">
                《HITMAN 3》
            </div>
            <div class="game_desc_detail">
                死亡正在等待。Agent 47 于暗杀世界（World of Assassination）三部曲之最终作《HITMAN 3》中再度登场。
            </div>
            <div class="game_desc_one">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/pd1.jpeg">
            </div>
            <div class="game_desc_two">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/pd2.jpeg">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/pd3.jpeg">
            </div>
            <div class="game_desc_one">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/pd4.jpeg">
            </div>
        </div>


        <div class="game_list">
            <div class="game_list_tit">版本</div>
            <div class="game_item">
                <div class="game_top">
                    <div class="game_img">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/g1.jpeg">
                    </div>
                    <div class="game_info">
                        <div class="game_info_desc">
                            <div class="game_info_type">
                                <span class="type">基础游戏</span>
                                <span class="name">《HITMAN 3》</span>
                            </div>
                            <div class="info">
                                死亡正在等待。Agent 47 于暗杀世界（World of Assassination）三部曲之最终作《HITMAN 3》中再度登场。
                            </div>
                        </div>
                    </div>
                </div>

                <div class="game_btns">
                    <div class="game_price">¥279</div>
                    <button class="game_add_cart">加入购物车</button>
                    <button class="game_add_gouwu">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
                        添至购物清单
                    </button>
                </div>
            </div>


            <div class="game_item">
                <div class="game_top">
                    <div class="game_img">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/g2.jpeg">
                    </div>
                    <div class="game_info">
                        <div class="game_info_desc">
                            <div class="game_info_type">
                                <span class="type">版本</span>
                                <span class="name">《Hitman 3》豪华版</span>
                            </div>
                            <div class="info">
                                死亡正在等待。Agent 47 于暗杀世界（World of Assassination）三部曲之最终作《HITMAN 3》中再度登场。 豪华版将通过豪华组合包新增激动人心的全新内...
                            </div>
                        </div>
                    </div>
                </div>

                <div class="game_btns">
                    <div class="game_price">¥419</div>
                    <button class="game_add_cart">加入购物车</button>
                    <button class="game_add_gouwu">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
                        添至购物清单
                    </button>
                </div>
            </div>



            <div class="game_item">
                <div class="game_top">
                    <div class="game_img">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/g3.jpeg">
                    </div>
                    <div class="game_info">
                        <div class="game_info_desc">
                            <div class="game_info_type">
                                <span class="type">版本</span>
                                <span class="name">《HITMAN Trilogy》</span>
                            </div>
                            <div class="info">
                                来入手暗杀世界三部曲的全部三款游戏。在这个横跨三部游戏，包含 20 个以上地点的的究极间谍惊悚故事中，化身为 Agent 47。
                            </div>
                        </div>
                    </div>
                </div>

                <div class="game_btns">
                    <div class="game_price">
                        <div class="game_price1">
                            <div class="game_price1_discount">-80%</div>
                            <div class="game_price1_yuanjia">¥469</div>
                            <div class="game_price1_xianjia">¥93.80</div>
                        </div>
                        <div class="game_price2">
                            优惠截止于2023/1/6 00:00
                        </div>
                    </div>
                    <button class="game_add_cart">加入购物车</button>
                    <button class="game_add_gouwu">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
                        添至购物清单
                    </button>
                </div>
            </div>
        </div>



        <div class="game_list">
            <div class="game_list_tit">附加内容</div>
            <div class="game_item">
                <div class="game_top">
                    <div class="game_img">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/g4.jpeg">
                    </div>
                    <div class="game_info">
                        <div class="game_info_desc">
                            <div class="game_info_type">
                                <span class="type">附加内容</span>
                                <span class="name">《HITMAN Trilogy》高级附加内容组合包</span>
                            </div>
                            <div class="info">
                                现在就入手高级附加内容组合包，来升级你的《HITMAN Trilogy》。本组合包包含以下高级内容：《HITMAN 1》年度版更新，《HITMAN 2》扩展通行证，以及...
                            </div>
                        </div>
                    </div>
                </div>

                <div class="game_btns">
                    <div class="game_price">¥279</div>
                    <button class="game_add_cart">加入购物车</button>
                    <button class="game_add_gouwu">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
                        添至购物清单
                    </button>
                </div>
            </div>


            <div class="game_item">
                <div class="game_top">
                    <div class="game_img">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/g5.jpeg">
                    </div>
                    <div class="game_info">
                        <div class="game_info_desc">
                            <div class="game_info_type">
                                <span class="type">附加内容</span>
                                <span class="name">《HITMAN 3》：七宗罪第7幕：暴怒</span>
                            </div>
                            <div class="info">
                                《HITMAN 3》：七宗罪带你深入特工 47 的内心。获得限定的七宗罪主题西装并面对全新挑战以解锁独特奖励。
                            </div>
                        </div>
                    </div>
                </div>

                <div class="game_btns">
                    <div class="game_price">¥25</div>
                    <button class="game_add_cart">加入购物车</button>
                    <button class="game_add_gouwu">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
                        添至购物清单
                    </button>
                </div>
            </div>



            <div class="game_item">
                <div class="game_top">
                    <div class="game_img">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/g6.jpeg">
                    </div>
                    <div class="game_info">
                        <div class="game_info_desc">
                            <div class="game_info_type">
                                <span class="type">版本</span>
                                <span class="name">《HITMAN 3》：七宗罪第 6 幕：嫉妒</span>
                            </div>
                            <div class="info">
                                《HITMAN 3》：七宗罪带你深入特工 47 的内心。获得限定的七宗罪主题西装并面对全新挑战以解锁独特奖励。
                            </div>
                        </div>
                    </div>
                </div>

                <div class="game_btns">
                    <div class="game_price">
                        <div class="game_price1">
                            <div class="game_price1_yuanjia">¥25</div>
                        </div>
                    </div>
                    <button class="game_add_cart">加入购物车</button>
                    <button class="game_add_gouwu">
                        <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
                        添至购物清单
                    </button>
                </div>
            </div>
        </div>

        <div class="game_list_more">
            <a href="${pageContext.request.contextPath}/app/pages/detail1.jsp">查看更多</a>
        </div>

        <div class="game_list">
            <div class="game_list_tit">关注我们</div>
            <div class="game_list_icons">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/fb.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/qq.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/ins.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/tt.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/in.png">
            </div>
        </div>

        <div class="game_list game_list_cp_box">
            <div class="game_list_tit">Epic 玩家测评</div>
            <div class="game_list_tit_sm">来自 Epic Games 生态系统中的玩家。</div>
            <div class="game_list_cp">
                <div class="game_list_cp_score">
                    <span>4.8</span>
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/star.png">
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/hstar.png">
                </div>
                <div class="game_list_cp_list">
                    <div class="game_list_cp_item">
                        <div class="game_list_cp_img">
                            <img src="${pageContext.request.contextPath}/app/assets/images/detail/se.svg">
                        </div>
                        <div class="game_list_cp_txt1">该游戏</div>
                        <div class="game_list_cp_txt2">超级有趣</div>
                    </div>
                    <div class="game_list_cp_item">
                        <div class="game_list_cp_img">
                            <img src="${pageContext.request.contextPath}/app/assets/images/detail/laba.svg">
                        </div>
                        <div class="game_list_cp_txt1">该游戏</div>
                        <div class="game_list_cp_txt2">非常值得推荐</div>
                    </div>
                    <div class="game_list_cp_item">
                        <div class="game_list_cp_img">
                            <img src="${pageContext.request.contextPath}/app/assets/images/detail/qiu.svg">
                        </div>
                        <div class="game_list_cp_txt1">该游戏的</div>
                        <div class="game_list_cp_txt2">角色多元</div>
                    </div>
                    <div class="game_list_cp_item">
                        <div class="game_list_cp_img">
                            <img src="${pageContext.request.contextPath}/app/assets/images/detail/xs.svg">
                        </div>
                        <div class="game_list_cp_txt1">该游戏的</div>
                        <div class="game_list_cp_txt2">叙事精彩</div>
                    </div>
                    <div class="game_list_cp_item">
                        <div class="game_list_cp_img">
                            <img src="${pageContext.request.contextPath}/app/assets/images/detail/sb.svg">
                        </div>
                        <div class="game_list_cp_txt1">该游戏的</div>
                        <div class="game_list_cp_txt2">控制方法可快速上手</div>
                    </div>
                    <div class="game_list_cp_item">
                        <div class="game_list_cp_img">
                            <img src="${pageContext.request.contextPath}/app/assets/images/detail/ml.svg">
                        </div>
                        <div class="game_list_cp_txt1">该游戏的</div>
                        <div class="game_list_cp_txt2">角色富有魅力</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="game_list">
            <div class="game_list_tit">评级</div>
            <div class="game_list_process">
                <div class="game_list_process_item">
                    <div class="circle_process" data-range="91">
                        <div class="wrapper right">
                            <div class="circle rightcircle"></div>
                        </div>
                        <div class="wrapper left">
                            <div class="circle leftcircle"></div>
                        </div>
                        <div class="circle_process_txt">91%</div>
                    </div>
                    <div class="game_list_process_title">评论家推荐</div>
                </div>
                <div class="game_list_process_item">
                    <div class="circle_process" data-range="85">
                        <div class="wrapper right">
                            <div class="circle rightcircle"></div>
                        </div>
                        <div class="wrapper left">
                            <div class="circle leftcircle"></div>
                        </div>
                        <div class="circle_process_txt">85</div>
                    </div>
                    <div class="game_list_process_title">顶级评论家测评均分</div>
                </div>
                <div class="game_list_process_item">
                    <div class="circle_process" data-range="100">
                        <div class="wrapper right">
                            <div class="circle rightcircle"></div>
                        </div>
                        <div class="wrapper left">
                            <div class="circle leftcircle"></div>
                        </div>
                        <div class="circle_process_txt">超棒</div>
                    </div>
                    <div class="game_list_process_title">OpenCritic 网站评级</div>
                </div>
                <a class="game_list_process_ceping" href="">
                    查看所有测评
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/ceping.svg">
                </a>
            </div>
        </div>

        <div class="game_list_cp2">
            <div class="game_list_cp2_item">
                <div class="game_list_cp2_1">
                    Game Informer
                </div>
                <div class="game_list_cp2_2">
                    作者：Jeff Cork
                </div>
                <div class="game_list_cp2_3">
                    9 / 10
                </div>
                <div class="game_list_cp2_4">
                    "Agent 47's journey ends on a high note, at least as far as players are concerned. New levels are memorable and cater to the freedom fans have come to expect"
                </div>

                <a class="game_list_cp2_5" href="">
                    <span>查看所有测评</span>
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/ceping.svg">
                </a>
            </div>
            <div class="game_list_cp2_item">
                <div class="game_list_cp2_1">
                    PC Gamer
                </div>
                <div class="game_list_cp2_2">
                    作者：Andy Kelly
                </div>
                <div class="game_list_cp2_3">
                    90 / 100
                </div>
                <div class="game_list_cp2_4">
                    "A beautiful, deep, and endlessly replayable murder sandbox, featuring some of the best levels in the series."
                </div>

                <a class="game_list_cp2_5" href="">
                    <span>查看所有测评</span>
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/ceping.svg">
                </a>
            </div>
            <div class="game_list_cp2_item">
                <div class="game_list_cp2_1">
                    IGN
                </div>
                <div class="game_list_cp2_2">
                    作者：Luke Reilly
                </div>
                <div class="game_list_cp2_3">
                    9 / 10
                </div>
                <div class="game_list_cp2_4">
                    "Rich, rewarding, and highly replayable, Hitman 3 is one of the barcoded butcher's best appearances."
                </div>

                <a class="game_list_cp2_5" href="">
                    <span>查看所有测评</span>
                    <img src="${pageContext.request.contextPath}/app/assets/images/detail/ceping.svg">
                </a>
            </div>
        </div>
        <div class="game_list_cp2_tigong">OpenCritic 提供的测评</div>

        <div class="game_list">
            <div class="game_list_tit">配置</div>
            <div class="game_list_peizhi">
                <div class="game_list_peizhi_tab">
                    <span>WINDOW</span>
                </div>

                <div class="game_list_peizhi_box">
                    <div class="game_list_peizhi_zuidi">
                        <div class="game_list_peizhi_tit">最低配置</div>
                        <div class="game_list_peizhi_name">Windows 操作系统</div>
                        <div class="game_list_peizhi_value">操作系统 64 位 Windows 10</div>
                        <div class="game_list_peizhi_name">Windows 处理器</div>
                        <div class="game_list_peizhi_value">Intel CPU Core i5-2500K 3.3GHz / AMD CPU Phenom II X4 940</div>
                        <div class="game_list_peizhi_name">Windows 内存</div>
                        <div class="game_list_peizhi_value">8</div>
                        <div class="game_list_peizhi_name">Windows 存储空间</div>
                        <div class="game_list_peizhi_value">80</div>
                        <div class="game_list_peizhi_name">Windows DirectX</div>
                        <div class="game_list_peizhi_value">12</div>
                        <div class="game_list_peizhi_name">Windows 显卡</div>
                        <div class="game_list_peizhi_value">NVIDIA GeForce GTX 660 / Radeon HD 7870</div>
                        <div class="game_list_peizhi_name">VR CPU</div>
                        <div class="game_list_peizhi_value">Intel 6-core i7-8700 / AMD Ryzen 7 2700</div>
                        <div class="game_list_peizhi_name">VR GPU</div>
                        <div class="game_list_peizhi_value">NVIDIA RTX 2060 Super / AMD 5700XT</div>
                        <div class="game_list_peizhi_name">VR Controllers:</div>
                        <div class="game_list_peizhi_value">HTC VIVE and HTC VIVE PRO are not supported</div>
                        <div class="game_list_peizhi_name">登录</div>
                        <div class="game_list_peizhi_value">需要 Epic Games 账户</div>
                    </div>
                    <div class="game_list_peizhi_zuidi">
                        <div class="game_list_peizhi_tit">推荐配置</div>
                        <div class="game_list_peizhi_name">Windows 操作系统</div>
                        <div class="game_list_peizhi_value">操作系统 64 位 Windows 10</div>
                        <div class="game_list_peizhi_name">Windows 处理器</div>
                        <div class="game_list_peizhi_value">Intel CPU Core i7 4790 4 GHz</div>
                        <div class="game_list_peizhi_name">Windows 内存</div>
                        <div class="game_list_peizhi_value">16</div>
                        <div class="game_list_peizhi_name">Windows 存储空间</div>
                        <div class="game_list_peizhi_value">80</div>
                        <div class="game_list_peizhi_name">Windows DirectX</div>
                        <div class="game_list_peizhi_value">12</div>
                        <div class="game_list_peizhi_name">Windows 显卡</div>
                        <div class="game_list_peizhi_value">NVIDIA GPU GeForce GTX 1070 / AMD GPU Radeon RX Vega 56 8 GB</div>
                    </div>
                </div>

                <div class="game_list_peizhi_name">支持的语言</div>
                <div class="game_list_peizhi_value">
                    语音：英语<br>
                    文本：英语、法语、意大利语、德语、西班牙语（西班牙）、简体中文、繁体中文、日语、俄语</div>


                <div class="game_yinsi">
                    HITMAN 3 © 2020 IO Interactive A/S. IO Interactive, IOI logos, HITMAN, HITMAN logos, and WORLD OF ASSASSINATION are trademarks or registered trademarks owned by or exclusively licensed to IO Interactive A/S. All other trademarks are the property of their respective owners.All rights reserved.
                    <div class="game_yinsi_link">
                        <a href="">隐私政策</a>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="prolist_right">
        <div class="prolist_right_img">
            <img src="${pageContext.request.contextPath}/app/assets/images/detail/r.png">
        </div>
        <div class="prolist_right_game_type">基础游戏</div>
        <div class="prolist_right_game_price">
            ¥279
        </div>
        <button class="prolist_right_buynow">立即购买</button>
        <button class="prolist_right_addcart">加入购物车</button>
        <button class="prolist_right_yuanwang">
            <img src="${pageContext.request.contextPath}/app/assets/images/detail/addto.png">
            添至购物清单
        </button>


        <div class="prolist_right_list">
            <div class="prolist_right_item">
                <div class="prolist_right_list1">
                    退款类型
                </div>
                <div class="prolist_right_list2">
                    可自助退款
                    <a href="">
                        ?
                        <span class="prolist_right_list2_abs">了解更多关于退款的详情</span>

                    </a>
                </div>
            </div>
            <div class="prolist_right_item">
                <div class="prolist_right_list1">
                    开发商
                </div>
                <div class="prolist_right_list2">
                    IO Interactive A/S
                </div>
            </div>
            <div class="prolist_right_item">
                <div class="prolist_right_list1">
                    发行商
                </div>
                <div class="prolist_right_list2">
                    IO Interactive A/S
                </div>
            </div>
            <div class="prolist_right_item">
                <div class="prolist_right_list1">
                    发行日期
                </div>
                <div class="prolist_right_list2">
                    20/08/27
                </div>
            </div>
            <div class="prolist_right_item">
                <div class="prolist_right_list1">
                    首度发布
                </div>
                <div class="prolist_right_list2">
                    21/01/20
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
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/footer_img.png">
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
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/i1.png">
                <img src="${pageContext.request.contextPath}/app/assets/images/detail/i2.png">
            </div>
        </div>
    </div>
</div>


<script src="${pageContext.request.contextPath}/app/assets/js/browse/swiper.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/app/assets/js/browse/jquery-2.1.1.min.js"></script>

<script type="text/javascript">


    function progressFn(e,perNum) {
        // perNum 为进度值
        var percent = Math.ceil((perNum / 100) * 100);
        var deg1 = ((45 + 135) * percent) / 50 - 135;
        var deg2 = ((45 + 135) * (percent - 50)) / 50 - 135;
        if(percent >= 50) {
            $(e).find('.leftcircle').css({
                'transform': 'rotate('+ deg2 + 'deg' +')'
            })
            $(e).find('.rightcircle').css({
                'transform': 'rotate('+ 45 + 'deg' +')'
            });
        } else {
            $(e).find('.rightcircle').css({
                'transform': 'rotate('+ deg1 + 'deg' +')'
            })
        }
    }

    $('.circle_process').each(function(i,e){

        progressFn(e,$(e).data('range'));
    })
    var mySwiper = new Swiper('.swiper-container', {
        loop: true,
        navigation: {
            nextEl: '.swiper-button-prev',
            prevEl: '.swiper-button-next',
        },
        pagination: {
            el: '.swiper-pagination',
            clickable:true
        },
        on:{
            init:function(){
                console.log($('.swiper-slide-active').find('video').trigger('click'));
                // $('.swiper-slide-active').find('video')[0].play();
            },
            slideNextTransitionEnd: function(){
                $('.video_swiper_item').each(function(i,e){
                    if(!$(e).hasClass('swiper-slide-active')) {
                        $(e).find('video')[0].pause();
                    }
                })
                $('.swiper-slide-active').find('video')[0].play();
            },

            slidePrevTransitionEnd: function(){
                $('.video_swiper_item').each(function(i,e){
                    if(!$(e).hasClass('swiper-slide-active')) {
                        $(e).find('video')[0].pause();
                    }
                })
                $('.swiper-slide-active').find('video')[0].play();
            }
        }
    })
</script>

</body>
</html>