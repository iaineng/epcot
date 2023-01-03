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
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/cart/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/cart/cart.css">
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
<div class="cart-views" id="cart-view">
  <div class="cart-container">
    <div class="css-r2r3m1">
      <section class="css-1q9jlv0">
        <div class="css-yewo14">
          <div class="css-1p2cbqg">
            <h1>
              <span>我的购物车</span>
            </h1>
          </div>
          <div class="css-map4tx">
            <div class="css-11fvpc2">
              <div class="css-dvxtzn">
                <div class="css-1xn3edc">
                                    <span class="css-14aopxi">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="svg css-uwwqev" viewBox="0 0 45 52"><g fill="none" fill-rule="evenodd"><path d="M4.058 0C1.094 0 0 1.098 0 4.075v35.922c0 .338.013.65.043.94.068.65-.043 1.934 2.285 2.96 1.553.683 7.62 3.208 18.203 7.573 1.024.428 1.313.529 2.081.529.685.013 1.137-.099 2.072-.53 10.59-4.227 16.66-6.752 18.213-7.573 2.327-1.23 2.097-3.561 2.097-3.899V4.075C44.994 1.098 44.13 0 41.166 0H4.058z" fill="currentColor"></path><path stroke="#FFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" d="M14 18l4.91 2.545-2.455 4M25.544 28.705c-1.056-.131-1.806-.14-2.25-.025-.444.115-1.209.514-2.294 1.197M29.09 21.727L25 19.5l2.045-3.5"></path></g></svg>
                                    </span>
                </div>
                <div class="css-1upilqn">
                                    <span class="css-mywzwd">
                                        <span>您的购物车是空的。</span>
                                    </span>
                </div>
                <div class="">
                                    <span class="css-119zqif">
                                        <a href="#" class="css-8dq9ld">
                                            <span>选购游戏与应用</span>
                                        </a>
                                    </span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</div>
</body>
</html>
