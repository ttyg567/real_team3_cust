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
                <div class="icon">
                    <i class="tio-done"></i>
                </div>
                <h2 class="size-18 weight-500 color-secondary margin-b-10">헬쓱조인 신청 완료!</h2>
                <p class="size-13 color-text margin-b-40">
                    모집인원이 모두 모였다고 알림을 받으시면<br>
                    아래 메뉴에서 할인쿠폰을 적용해 운동 이용권을 결제해 주세요!<br><br>
                    - 메뉴 : 조인헬쓱 메인 > 나의 조인보기
                </p>
<%--                <a href="/groupboard" class="btn rounded-pill btn__default">--%>
<%--                    <span class="color-white">확인했어요</span>--%>
<%--                    <div class="icon rounded-circle">--%>
<%--                        <i class="tio-chevron_right"></i>--%>
<%--                    </div>--%>
<%--                </a>--%>
            </div>
                <div class="emfo_button __withIcon">
                <a href="/groupboard" style="margin-left: 50px"
                   class="btn btn__icon bg-primary color-white min-w-175 text-left justify-content-between">
                    확인했어요
                    <div class="icon">
                        <svg id="Iconly_Light_Arrow_-_Right_Square"
                             data-name="Iconly/Light/Arrow - Right Square"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                             viewBox="0 0 24 24">
                            <g id="Arrow_-_Right_Square" data-name="Arrow - Right Square"
                               transform="translate(2 22) rotate(-90)">
                                <path id="Stroke_1" data-name="Stroke 1"
                                      d="M4.916,18.5h8.669c3.02,0,4.915-2.139,4.915-5.166V5.166C18.5,2.139,16.615,0,13.585,0H4.916C1.886,0,0,2.139,0,5.166v8.168C0,16.361,1.886,18.5,4.916,18.5Z"
                                      transform="translate(0.75 0.75)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round"
                                      stroke-miterlimit="10" stroke-width="1.5" opacity="0.4"></path>
                                <path id="Stroke_3" data-name="Stroke 3" d="M.5,8.172V0"
                                      transform="translate(9.5 5.914)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round"
                                      stroke-miterlimit="10" stroke-width="1.5"></path>
                                <path id="Stroke_5" data-name="Stroke 5" d="M7.5,0,3.748,3.764,0,0"
                                      transform="translate(6.252 10.322)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round"
                                      stroke-miterlimit="10" stroke-width="1.5"></path>
                            </g>
                        </svg>

                    </div>
                </a>
                </div>

        </section>

    </div>

</div>

