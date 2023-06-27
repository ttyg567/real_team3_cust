<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <meta name="format-detection" content="telephone=no">

    <meta name="theme-color" content="#ff3f3f">
    <title>Olivera – The Multipurpose Mobile HTML5 Template</title>
    <meta name="description" content="Olivera – The Multipurpose Mobile HTML5 Template">
    <meta name="keywords"
          content="bootstrap 4, mobile template, 404, chat, about, cordova, phonegap, mobile, html, ecommerce, shopping, store, delivery, wallet, banking, education, jobs, careers, distance learning" />

    <!-- favicon -->
    <link rel="icon" type="image/png" href="/assets/img/favicon/32.png" sizes="32x32">
    <link rel="apple-touch-icon" href="/assets/img/favicon/favicon192.png">

    <!-- CSS Libraries-->
    <!-- bootstrap v4.6.0 -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <!--
        theiconof v3.0
        https://www.theiconof.com/search
     -->
    <link rel="stylesheet" href="/assets/css/icons.css">
    <!-- Swiper 6.4.11 -->
    <link rel="stylesheet" href="/assets/css/swiper-bundle.min.css">
    <!-- Owl Carousel v2.3.4 -->
    <link rel="stylesheet" href="/assets/css/owl.carousel.min.css">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="/assets/css/main.css">
    <!-- normalize.css v8.0.1 -->
    <link rel="stylesheet" href="/assets/css/normalize.css">

    <!-- manifest meta -->
    <link rel="manifest" href="_manifest.json" />
    <!-- Hotjar Tracking Code for https://olivera.orinostudio.com/preview/index.html -->
    <script>
        (function (h, o, t, j, a, r) {
            h.hj = h.hj || function () { (h.hj.q = h.hj.q || []).push(arguments) };
            h._hjSettings = { hjid: 2364081, hjsv: 6 };
            a = o.getElementsByTagName('head')[0];
            r = o.createElement('script'); r.async = 1;
            r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
            a.appendChild(r);
        })(window, document, 'https://static.hotjar.com/c/hotjar-', '.js?sv=');
    </script>
</head>


<body class="d-flex align-items-center justify-content-center">

<!-- 주석처리 안하면 계-속 로딩페이지만 나옴. Start em_loading -->
<%--<section class="em_loading" id="loaderPage">--%>
<%--    <div class="spinner_flash"></div>--%>
<%--</section>--%>
<!-- End. em_loading -->

<div id="wrapper">
    <div id="content">
        <!-- Start main_haeder -->
        <header class="main_haeder bg-transparent">
            <div class="em_side_right absolute top-0 padding-t-20">
                <a class="btn btn__back rounded-10" href="/groupboard">
                    <i class="tio-clear"></i>
                </a>
            </div>

        </header>
        <!-- End.main_haeder -->

        <section class="emPage__ResultPayment">
            <div class="em__seccess">
                <div class="icon">
                    <i class="tio-done"></i>
                </div>
                <h2 class="size-18 weight-500 color-secondary margin-b-10">조인받을 준비 완료!</h2>
                <p class="size-13 color-text margin-b-40">
                    다른 회원들이 이용권 공동구매 고민을 마칠 동안<br>
                    헬쓱을 더 둘러 보세요.<br><br>
                    tip. 조인을 개설하고 이용권을 함께 구매하면 할인쿠폰 증정
                </p>
                <a href="/groupboard" style="background-color: blueviolet; color: white; border: none;"
                   class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
                    확인했어요</a>
            </div>
        </section>

    </div>

</div>

<!-- jquery -->
<script src="/assets/js/jquery-3.6.0.js"></script>
<!-- popper.min.js 1.16.1 -->
<script src="/assets/js/popper.min.js"></script>
<!-- bootstrap.js v4.6.0 -->
<script src="/assets/js/bootstrap.min.js"></script>

<!-- Owl Carousel v2.3.4 -->
<script src="/assets/js/vendor/owl.carousel.min.js"></script>
<!-- Swiper 6.4.11 -->
<script src="/assets/js/vendor/swiper-bundle.min.js"></script>
<!-- sharer 0.4.0 -->
<script src="/assets/js/vendor/sharer.js"></script>
<!-- short-and-sweet v1.0.2 - Accessible character counter for input elements -->
<script src="/assets/js/vendor/short-and-sweet.min.js"></script>
<!-- jquery knob -->
<script src="/assets/js/vendor/jquery.knob.min.js"></script>
<!-- main.js -->
<script src="/assets/js/main.js" defer></script>
<!-- PWA app service registration and works js -->
<script src="/assets/js/pwa-services.js"></script>
</body>
