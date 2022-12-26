<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/home.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="${pageContext.request.contextPath}/app/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/app/assets/js/bootstrap.min.js"></script>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg bar-bg">
        <div class="shieldLogo p-1">
            <a class="navbar-brand" href="#">
                <img src="${pageContext.request.contextPath}/app/assets/images/logo.png" width="36" height="36" class="d-inline-block align-items-center" alt="">
            </a>
        </div>
        <div class="collapse navbar-collapse align-items-center">
            <div class="navbar-nav">
                <a class="nav-item text-gray-500 mx-2 nav-link" href="#">商城</a>
                <a class="nav-item text-gray-500 mx-2 nav-link" href="#">新闻</a>
                <a class="nav-item text-gray-500 mx-2 nav-link" href="#">常见问题</a>
                <a class="nav-item text-gray-500 mx-2 nav-link" href="#">帮助</a>
                <a class="nav-item text-gray-500 mx-2 nav-link" href="#">虚幻引擎</a>
                <a class="nav-item text-gray-500 mx-2 nav-link border-left px-4" href="#">关于Epicot</a>
            </div>
        </div>
        <div class="collapse navbar-collapse rightNav">
            <div class="navbar-nav align-items-center">
                <a class="nav-link text-gray-500 text-white-50 mx-2 language" href="#"><i class="bi bi-globe-americas"></i></a>
                <a class="mx-2 nav-link text-gray-500" href="#"><i class="bi bi-person"></i>登录</a>
                <a class="btn btn-primary mx-2 nav-link text-gray-500 h-100" href="#">获取客户端</a>
            </div>
        </div>
    </nav>
</header>
<div class="sliderCarouselHome eg-sliderCarousel">
    <div id="sliderWrapper" class="text-center">
        <div id="slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/app/assets/images/carousel_1.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/app/assets/images/carousel_2.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/app/assets/images/carousel_3.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/app/assets/images/carousel_4.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/app/assets/images/carousel_5.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/app/assets/images/carousel_6.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/app/assets/images/carousel_7.jpg" class="d-block w-100">
                </div>
            </div>
            <a class="carousel-control-prev" href="#slider" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </a>
            <a class="carousel-control-next" href="#slider" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </a>
        </div>
    </div>
</div>
</body>
</html>
