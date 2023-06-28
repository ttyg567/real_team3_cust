<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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




<!-- 주석처리 안하면 계-속 로딩페이지만 나옴. Start em_loading -->
<%--<section class="em_loading" id="loaderPage">--%>
<%--    <div class="spinner_flash"></div>--%>
<%--</section>--%>
<!-- End. em_loading -->

<div id="wrapper">
    <div id="content">
        <!-- Start main_haeder : 창 닫기 기능 누르면 조인헬쓱 메인으로 이동 -->
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
                <div class="icon" style="background-color: #fae8fc; ">
                    <i class="tio-done" style="color: blueviolet"></i>
                </div>
                <h2 class="size-18 weight-500 color-secondary margin-b-10">헬쓱조인 신청 완료!</h2>
                <p class="size-13 color-text margin-b-40">
                    모집인원이 모두 모였다고 알림을 받으시면<br>
                    아래 메뉴에서 할인쿠폰을 적용해 운동 이용권을 결제해 주세요!<br><br>
                    - 메뉴 : 조인 메인 > 나의 조인보기
                </p>
<%--                <a href="/groupboard" class="btn rounded-pill btn__default">--%>
<%--                    <span class="color-white">확인했어요</span>--%>
<%--                    <div class="icon rounded-circle">--%>
<%--                        <i class="tio-chevron_right"></i>--%>
<%--                    </div>--%>
<%--                </a>--%>
            </div>
                <div class="emfo_button __withIcon">
                    <a href="/groupboard" style="background-color: blueviolet; color: white; border: none;"
                       class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
                        확인했어요</a>
                </div>

        </section>

    </div>

</div>

