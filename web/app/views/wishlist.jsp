<%--
  Created by IntelliJ IDEA.
  User: tang0
  Date: 2023/1/2
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/wishlist/bootstrap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/wishlist/wishlist.css">
</head>
<body>
<header>
  <nav class="navbar navbar-expand-lg bar-bg">
    <div class="shieldLogo p-1">
      <a class="navbar-brand" href="#">
        <img src="${pageContext.request.contextPath}/app/assets/images/wishlist/logo.png" width="36" height="36" class="d-inline-block align-items-center" alt="">
      </a>
    </div>
    <div class="collapse navbar-collapse align-items-center">
      <div class="navbar-nav">
        <a class="nav-item text-gray-500 mx-2 nav-link1 active" href="#">商城</a>
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
<div id="top" class="search w">
    <div class="search_input">
        <input type="text" name="" placeholder="探索商城">
    </div>

    <div class="search_tab">
        <a href="">探索</a>
        <a href="">浏览</a>
        <a href="">新闻</a>
        <a href="" class="active" id="wishlist-page">愿望清单</a>
        <a href="" id="cart-page">购物车</a>
    </div>
</div>
<div class="wishlist-container page-active" id="wishlist-view">
  <div class="scf">
    <section>
      <div class="container-and-bar">
        <aside>
          <div class="rdp">
            <div class="bar-item">
              <div class="dusk">
                <div class="bar-font">筛选器</div>
              </div>
            </div>
              <hr>
              <div class="bar-item">
                <div class="krn">
                    <button class="bar-button active">
                        <div class="bar-button-text">活动</div>
                    </button>
                </div>
              </div>
              <div class="bar-item">
                  <div class="krn">
                      <button class="bar-button">
                          <div class="bar-button-text">游戏类型</div>
                      </button>
                  </div>
              </div>
              <div class="bar-item">
                  <div class="krn">
                      <button class="bar-button">
                          <div class="bar-button-text">特色</div>
                      </button>
                  </div>
              </div>
              <div class="bar-item">
                  <div class="krn">
                      <button class="bar-button">
                          <div class="bar-button-text">平台</div>
                      </button>
                  </div>
              </div>
          </div>
        </aside>
          <div class="wishlist-list">
            <div class="section-title">
                <div class="title">
                    <h1>愿望清单</h1>
                </div>
            </div>
              <ul class="wishlist-list-container">
                  <li class="w-100">
                      <div class="poin">
                          <div class="kxz">
                              <div class="list-container">
                                  <div class="css-id4ofr">
                                      <div class="game-image">
                                          <div class="image-box">
                                              <div class="image-box-container">
                                                  <img src="${pageContext.request.contextPath}/app/assets/images/wishlist/game-image1.jpg"/>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="details-price">
                                          <div class="details-top">
                                                  <div class="css-1ylu0bo">
                                                      <div class="css-1q1f5v">
                                                          <div class="css-xw9y61">
                                                              <span class="css-15fdr99">
                                                                  <div class="css-1t8lqo3">
                                                                      <span>基础游戏</span>
                                                                  </div>
                                                              </span>
                                                          </div>
                                                      </div>
                                                      <div class="css-14mezjk">
                                                          <h2 class="css-12d0yut">
                                                              <div class="css-lgj0h8">
                                                                  <div class="css-rgqwpc">《赛博朋克 2077》</div>
                                                              </div>
                                                          </h2>
                                                      </div>
                                                  </div>
                                                  <div class="css-vlq2bu">
                                                      <div class="css-1ehhp1w">
                                                          <div class="css-u4p24i">
                                                              <div class="css-l24hbj mx-2">
                                                                  <span class="css-15fdr99">
                                                                      <div class="css-box">-50%</div>
                                                                  </span>
                                                              </div>
                                                              <div class="css-l24hbj">
                                                                  <div class="css-o1hbmr">
                                                                      <div class="css-l24hbj mx-2">
                                                                          <span class="css-d3i3lr">
                                                                          <div class="css-4jky3p">￥280</div>
                                                                      </span>
                                                                      </div>
                                                                      <div class="css-l24hbj mx-2">
                                                                          <span class="css-119zqif">￥140</span>
                                                                      </div>
                                                                  </div>
                                                              </div>
                                                          </div>
                                                      </div>
                                                  </div>
                                          </div>
                                          <div class="details-bottom">
                                              <div class="css-2lz0wa">
                                                  <div class="css-3xwyuq">
                                                      <button class="css-gstqsr" id="remove">
                                                          <span class="css-119zqif">
                                                              <span>移除</span>
                                                          </span>
                                                      </button>
                                                      <div class="css-uw7k7s">
                                                          <div>
                                                              <button class="css-5cj35r" id="cart">
                                                                  <span class="css-10gyk0u">
                                                                      <span>添加到购物车</span>
                                                                  </span>
                                                              </button>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </li>
              </ul>
          </div>
      </div>
    </section>
  </div>
</div>
<script type="text/javascript">

</script>
</body>
</html>
