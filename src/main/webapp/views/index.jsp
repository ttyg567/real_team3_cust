<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <meta name="format-detection" content="telephone=no">

    <meta name="theme-color" content="#ffffff">
    <title>Nepro – The Multipurpose Mobile HTML5 Template</title>
    <meta name="description" content="Nepro – The Multipurpose Mobile HTML5 Template">
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
    <!-- Remix Icon -->
    <link rel="stylesheet" href="/assets/css/remixicon.css">
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
    <!-- jquery(위치변경) -->
    <script src="/assets/js/jquery-3.6.0.js"></script>
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- 카카오지도 인보 -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4617571d8f9917ae900e8b494a093c31&libraries=services"></script>
<%--    <script type="text/javascript"--%>
<%--            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	0f0752ec20b8a0352c5794754058b576&libraries=services"></script>--%>

</head>


<body>

<!-- Start em_loading -->
<section class="em_loading" id="loaderPage">
    <div class="spinner_flash"></div>
</section>
<!-- End. em_loading -->

<div id="wrapper">

    <!-- Start main_haeder -->
    <header class="main_haeder header-sticky multi_item">
        <div class="em_menu_sidebar">
            <button type="button" class="btn btn_menuSidebar item-show" data-toggle="modal"
                    data-target="#mdllSidebarMenu-background">
                <i class="ri-menu-fill"></i>
            </button>
        </div>
        <div class="em_brand">
            <a href="index.html">
                <img src="/assets/img/logo.jpg" alt="" style="width: 85px; height:50px; margin-top: 5px">
            </a>
        </div>
        <div class="em_side_right">
            <a href="/notification" class="btn justify-content-center relative">
                <svg class="color-secondary" id="Iconly_Two-tone_Notification"
                     data-name="Iconly/Two-tone/Notification" xmlns="http://www.w3.org/2000/svg" width="24"
                     height="24" viewBox="0 0 24 24">
                    <g id="Notification" transform="translate(3.5 2)">
                        <path id="Path_425"
                              d="M0,11.787v-.219A3.6,3.6,0,0,1,.6,9.75,4.87,4.87,0,0,0,1.8,7.436c0-.666,0-1.342.058-2.009C2.155,2.218,5.327,0,8.461,0h.078c3.134,0,6.306,2.218,6.617,5.427.058.666,0,1.342.049,2.009A4.955,4.955,0,0,0,16.4,9.759a3.506,3.506,0,0,1,.6,1.809v.209a3.566,3.566,0,0,1-.844,2.39A4.505,4.505,0,0,1,13.3,15.538a45.078,45.078,0,0,1-9.615,0A4.554,4.554,0,0,1,.835,14.167,3.6,3.6,0,0,1,0,11.787Z"
                              transform="translate(0 0)" fill="none" stroke="#200e32" stroke-linecap="round"
                              stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                        <path id="Path_421"
                              d="M0,0A3.061,3.061,0,0,0,2.037,1.127,3.088,3.088,0,0,0,4.288.5,2.886,2.886,0,0,0,4.812,0"
                              transform="translate(6.055 18.852)" fill="none" stroke="#200e32"
                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                              stroke-width="1.5" opacity="0.4" />
                    </g>
                </svg>
                <span class="flashCircle"></span>
            </a>
        </div>
    </header>
    <!-- End.main_haeder -->
    <!-- center 시작 -->
    <c:choose>
        <c:when test="${center == null}">
            <jsp:include page="center.jsp"/>
        </c:when>
        <c:otherwise>
            <jsp:include page="${center}.jsp"/>
        </c:otherwise>
    </c:choose>
    <%-- center 끝. --%>
    <!-- Start em_main_footer -->
    <footer class="em_main_footer ouline_footer with__text">
        <div class="em_body_navigation -active-links">
            <div class="item_link">
                <a href="/myschedule" class="btn btn_navLink">
                    <div class="icon_current">
                        <svg id="Iconly_Curved_Document" data-name="Iconly/Curved/Document"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Document" transform="translate(3.61 2.75)">
                                <path id="Stroke_1" data-name="Stroke 1" d="M7.22.5H0"
                                      transform="translate(4.766 12.446)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <path id="Stroke_2" data-name="Stroke 2" d="M7.22.5H0"
                                      transform="translate(4.766 8.686)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <path id="Stroke_3" data-name="Stroke 3" d="M2.755.5H0"
                                      transform="translate(4.766 4.927)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <path id="Stroke_4" data-name="Stroke 4"
                                      d="M0,9.25c0,6.937,2.1,9.25,8.391,9.25s8.391-2.313,8.391-9.25S14.685,0,8.391,0,0,2.313,0,9.25Z"
                                      transform="translate(0)" fill="none" stroke="#9498ac" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                            </g>
                        </svg>
                    </div>
                    <div class="txt__tile" style="width: 60px;" >수업예약</div>
                </a>
            </div>
            <div class="item_link">
                <a href="/ticket/all" class="btn btn_navLink">
                    <div class="icon_current">
                        <svg id="Iconly_Curved_More_Circle" data-name="Iconly/Curved/More Circle"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="More_Circle" data-name="More Circle" transform="translate(2 2)">
                                <path id="Stroke_4" data-name="Stroke 4"
                                      d="M0,9.25C0,2.313,2.313,0,9.25,0S18.5,2.313,18.5,9.25,16.187,18.5,9.25,18.5,0,16.187,0,9.25Z"
                                      transform="translate(0.75 0.75)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <path id="Stroke_11" data-name="Stroke 11" d="M.5.5H.5"
                                      transform="translate(12.709 11.4)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="2" />
                                <path id="Stroke_13" data-name="Stroke 13" d="M.5.5H.5"
                                      transform="translate(9.709 7.4)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="2" />
                                <path id="Stroke_15" data-name="Stroke 15" d="M.5.5H.5"
                                      transform="translate(6.7 11.4)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="2" />
                            </g>
                        </svg>
                    </div>

                    <div class="txt__tile"style="width: 60px;">이용권구매</div>
                </a>
            </div>
            <div class="item_link">
                <a href="/" class="btn btn_navLink without_active">
                    <button type="button" class="btn btnCircle_default rounded-10">
                        <svg id="Iconly_Curved_Home" data-name="Iconly/Curved/Home"
                             xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                            <g id="Home" transform="translate(2 1.667)">
                                <path id="Stroke_1" data-name="Stroke 1" d="M0,.5H4.846"
                                      transform="translate(5.566 11.28)" fill="none" stroke="#fff"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <path id="Stroke_2" data-name="Stroke 2"
                                      d="M0,9.761C0,5.068.512,5.4,3.266,2.842,4.471,1.872,6.346,0,7.965,0S11.5,1.862,12.712,2.842c2.754,2.554,3.265,2.227,3.265,6.919,0,6.906-1.633,6.906-7.988,6.906S0,16.667,0,9.761Z"
                                      transform="translate(0)" fill="none" stroke="#fff" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                            </g>
                        </svg>

                    </button>
                </a>
            </div>
            <div class="item_link">
                <a href="/groupboard" class="btn btn_navLink">
                    <div class="icon_current">
                        <svg id="Iconly_Curved_Bag" data-name="Iconly/Curved/Bag" xmlns="http://www.w3.org/2000/svg"
                             width="24" height="24" viewBox="0 0 24 24">
                            <g id="Bag" transform="translate(2.95 2.55)">
                                <path id="Stroke_1" data-name="Stroke 1" d="M8.659,4.32A4.33,4.33,0,0,0,0,4.3V4.32"
                                      transform="translate(4.755 0)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <path id="Stroke_3" data-name="Stroke 3" d="M.523.5H.477"
                                      transform="translate(11.5 8.324)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <path id="Stroke_5" data-name="Stroke 5" d="M.523.5H.477"
                                      transform="translate(5.669 8.324)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <path id="Stroke_7" data-name="Stroke 7"
                                      d="M9.084,14.934c-6.508,0-7.257-2.05-8.718-7.467C-1.1,2.033,1.841,0,9.084,0S19.268,2.033,17.8,7.467C16.341,12.884,15.592,14.934,9.084,14.934Z"
                                      transform="translate(0 4.006)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                            </g>
                        </svg>
                    </div>
<%--                    <div class="items_basket_circle">2</div>--%>
                    <div class="txt__tile" style="width: 60px;">조인헬쓱</div>
                </a>
            </div>
            <div class="item_link">
                <a href="/mypage" class="btn btn_navLink">
                    <div class="icon_current">
                        <svg id="Iconly_Curved_Setting" data-name="Iconly/Curved/Setting"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Setting" transform="translate(3.5 2.5)">
                                <path id="Stroke_1" data-name="Stroke 1"
                                      d="M2.5,0A2.5,2.5,0,1,1,0,2.5,2.5,2.5,0,0,1,2.5,0Z" transform="translate(6 7)"
                                      fill="none" stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                      stroke-miterlimit="10" stroke-width="1.5" />
                                <path id="Stroke_3" data-name="Stroke 3"
                                      d="M16.668,4.75h0a2.464,2.464,0,0,0-3.379-.912,1.543,1.543,0,0,1-2.314-1.346A2.484,2.484,0,0,0,8.5,0h0A2.484,2.484,0,0,0,6.025,2.492,1.543,1.543,0,0,1,3.712,3.839a2.465,2.465,0,0,0-3.38.912,2.5,2.5,0,0,0,.906,3.4,1.56,1.56,0,0,1,0,2.692,2.5,2.5,0,0,0-.906,3.4,2.465,2.465,0,0,0,3.379.913h0a1.542,1.542,0,0,1,2.313,1.345h0A2.484,2.484,0,0,0,8.5,19h0a2.484,2.484,0,0,0,2.474-2.492h0a1.543,1.543,0,0,1,2.314-1.345,2.465,2.465,0,0,0,3.379-.913,2.5,2.5,0,0,0-.905-3.4h0a1.56,1.56,0,0,1,0-2.692A2.5,2.5,0,0,0,16.668,4.75Z"
                                      fill="none" stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                      stroke-miterlimit="10" stroke-width="1.5" />
                            </g>
                        </svg>

                    </div>

                    <div class="txt__tile" style="width: 60px;">마이페이지</div>
                </a>
            </div>
        </div>
    </footer>
    <!-- End. em_main_footer -->

    <!-- Start searchMenu__hdr -->
    <section class="searchMenu__hdr">
        <form>
            <div class="form-group">
                <div class="input_group">
                    <input type="search" class="form-control" placeholder="type something here...">
                    <i class="ri-search-2-line icon_serach"></i>
                </div>
            </div>
        </form>
        <button type="button" class="btn btn_meunSearch -close __removeMenu">
            <i class="tio-clear"></i>
        </button>
    </section>
    <!-- End. searchMenu__hdr -->

    <!-- Modal Sidebar Menu (withBackground) -->
    <div class="modal sidebarMenu -left fade" id="mdllSidebarMenu-background" tabindex="-1"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header d-block">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="tio-clear"></i>
                    </button>
                    <div class="em_profile_user">
                        <div class="media">
                            <a href="page-profile.html">
                                <!-- You can use an image -->
                                <!-- <img class="_imgUser" src="/assets/img/person.png" alt=""> -->
                                <div class="letter bg-yellow">
                                    <span>c</span>
                                </div>
                            </a>
                            <div class="media-body">
                                <div class="txt">
                                    <h3>Calvin Bell</h3>
                                    <p>+1 6540 605 490</p>
                                    <a href="#" class="btn btn_logOut">Sign out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="np_balanceDefault emBlock__border with_bg">
                        <div class="txt">
                            <span class="title_sm">My Balance</span>
                            <h3>95.00 <span>USD</span></h3>
                            <p>Exp on Jan 15, 2021</p>
                        </div>
                        <div class="npRight">
                            <a href="page-add-balance.html" class="btn">
                                <svg id="Iconly_Curved_Plus" data-name="Iconly/Curved/Plus"
                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                                    <g id="Plus" transform="translate(1.917 1.917)">
                                        <path id="Stroke_1" data-name="Stroke 1" d="M.526,0V5.957"
                                              transform="translate(7.588 5.136)" fill="none" stroke="#0e132d"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_2" data-name="Stroke 2" d="M5.963.526H0"
                                              transform="translate(5.132 7.588)" fill="none" stroke="#0e132d"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_3" data-name="Stroke 3"
                                              d="M0,8.114C0,2.029,2.029,0,8.114,0s8.114,2.029,8.114,8.114S14.2,16.228,8.114,16.228,0,14.2,0,8.114Z"
                                              transform="translate(0)" fill="none" stroke="#0e132d"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                    </g>
                                </svg>
                            </a>
                        </div>
                    </div>

                </div>
                <div class="modal-body">
                    <ul class="nav flex-column -active-links">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">
                                <div class="">
                                    <div class="icon_current">
                                        <svg id="Iconly_Curved_Discovery" data-name="Iconly/Curved/Discovery"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="Discovery" transform="translate(2.292 2.292)">
                                                <path id="Stroke_1" data-name="Stroke 1"
                                                      d="M0,7.708c0,5.781,1.927,7.708,7.708,7.708s7.708-1.927,7.708-7.708S13.489,0,7.708,0,0,1.927,0,7.708Z"
                                                      transform="translate(0 0)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_3" data-name="Stroke 3"
                                                      d="M0,5.5,1.312,1.312,5.5,0,4.192,4.191Z"
                                                      transform="translate(4.957 4.957)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="title_link">Discover</span>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="app-homes.html">
                                <div class="">
                                    <div class="icon_current">
                                        <svg id="Iconly_Curved_Home" data-name="Iconly/Curved/Home"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="Home" transform="translate(2 1.667)">
                                                <path id="Stroke_1" data-name="Stroke 1" d="M0,.5H4.846"
                                                      transform="translate(5.566 11.28)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_2" data-name="Stroke 2"
                                                      d="M0,9.761C0,5.068.512,5.4,3.266,2.842,4.471,1.872,6.346,0,7.965,0S11.5,1.862,12.712,2.842c2.754,2.554,3.265,2.227,3.265,6.919,0,6.906-1.633,6.906-7.988,6.906S0,16.667,0,9.761Z"
                                                      transform="translate(0)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="title_link">Homepages</span>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="app-components.html">
                                <div class="">
                                    <div class="icon_current">
                                        <svg id="Iconly_Curved_More_Circle" data-name="Iconly/Curved/More Circle"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="More_Circle" data-name="More Circle"
                                               transform="translate(2.292 2.292)">
                                                <path id="Stroke_4" data-name="Stroke 4"
                                                      d="M0,7.708C0,1.927,1.927,0,7.708,0s7.708,1.927,7.708,7.708-1.927,7.708-7.708,7.708S0,13.489,0,7.708Z"
                                                      transform="translate(0 0)" fill="none" stroke="#556fff"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_11" data-name="Stroke 11" d="M.5.5H.5"
                                                      transform="translate(9.883 8.792)" fill="none" stroke="#556fff"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="2" />
                                                <path id="Stroke_13" data-name="Stroke 13" d="M.5.5H.5"
                                                      transform="translate(7.383 5.458)" fill="none" stroke="#556fff"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="2" />
                                                <path id="Stroke_15" data-name="Stroke 15" d="M.5.5H.5"
                                                      transform="translate(4.876 8.792)" fill="none" stroke="#556fff"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="2" />
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="title_link">Components</span>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="app-pages.html">
                                <div class="">
                                    <div class="icon_current">
                                        <svg id="Iconly_Curved_Document" data-name="Iconly/Curved/Document"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="Document" transform="translate(3.008 2.292)">
                                                <path id="Stroke_1" data-name="Stroke 1" d="M6.017.5H0"
                                                      transform="translate(3.971 10.289)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_2" data-name="Stroke 2" d="M6.017.5H0"
                                                      transform="translate(3.971 7.155)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_3" data-name="Stroke 3" d="M2.3.5H0"
                                                      transform="translate(3.972 4.023)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_4" data-name="Stroke 4"
                                                      d="M0,7.708c0,5.781,1.748,7.708,6.992,7.708s6.992-1.927,6.992-7.708S12.238,0,6.992,0,0,1.927,0,7.708Z"
                                                      transform="translate(0)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                            </g>
                                        </svg>
                                    </div>

                                    <span class="title_link">Pages</span>
                                </div>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="page-products-fullwidth.html">
                                <div class="">
                                    <div class="icon_current">
                                        <svg id="Iconly_Curved_Bag" data-name="Iconly/Curved/Bag"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="Bag" transform="translate(2.458 2.125)">
                                                <path id="Stroke_1" data-name="Stroke 1"
                                                      d="M7.216,3.6A3.608,3.608,0,0,0,0,3.584V3.6"
                                                      transform="translate(3.962)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_3" data-name="Stroke 3" d="M.515.5H.477"
                                                      transform="translate(9.504 6.853)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_5" data-name="Stroke 5" d="M.515.5H.477"
                                                      transform="translate(4.644 6.853)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_7" data-name="Stroke 7"
                                                      d="M7.57,12.445c-5.423,0-6.047-1.708-7.265-6.222S1.534,0,7.57,0s8.487,1.694,7.265,6.222S12.994,12.445,7.57,12.445Z"
                                                      transform="translate(0 3.338)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="title_link">Shop</span>
                                </div>
                                <span
                                        class="bg-red rounded-7 px-1 color-white min-w-25 px-1 h-28 d-flex align-items-center justify-content-center">3</span>
                            </a>
                        </li>
                        <label class="title__label">other</label>
                        <li class="nav-item">
                            <a class="nav-link" href="page-profile.html">
                                <div class="">
                                    <div class="icon_current">
                                        <svg id="Iconly_Curved_Setting" data-name="Iconly/Curved/Setting"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="Setting" transform="translate(2.917 2.083)">
                                                <path id="Stroke_1" data-name="Stroke 1"
                                                      d="M2.083,0A2.083,2.083,0,1,1,0,2.083,2.083,2.083,0,0,1,2.083,0Z"
                                                      transform="translate(5 5.833)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_3" data-name="Stroke 3"
                                                      d="M13.89,3.959h0a2.053,2.053,0,0,0-2.816-.76A1.286,1.286,0,0,1,9.145,2.077,2.07,2.07,0,0,0,7.083,0h0A2.07,2.07,0,0,0,5.021,2.077,1.286,1.286,0,0,1,3.093,3.2a2.054,2.054,0,0,0-2.817.76A2.085,2.085,0,0,0,1.031,6.8a1.3,1.3,0,0,1,0,2.243,2.085,2.085,0,0,0-.755,2.837,2.054,2.054,0,0,0,2.816.761h0a1.285,1.285,0,0,1,1.928,1.121h0a2.07,2.07,0,0,0,2.062,2.077h0a2.07,2.07,0,0,0,2.062-2.077h0a1.286,1.286,0,0,1,1.929-1.121,2.054,2.054,0,0,0,2.816-.761,2.085,2.085,0,0,0-.754-2.837h0a1.3,1.3,0,0,1,0-2.243A2.085,2.085,0,0,0,13.89,3.959Z"
                                                      transform="translate(0)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="title_link">Settings</span>
                                </div>
                                <div class="em_pulp">
                                    <span class="doted_item"></span>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="page-support.html">
                                <div class="">
                                    <div class="icon_current">
                                        <svg id="Iconly_Curved_Message" data-name="Iconly/Curved/Message"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="Message" transform="translate(2.043 2.377)">
                                                <path id="Stroke_1" data-name="Stroke 1"
                                                      d="M9.292,0S6.617,3.211,4.661,3.211,0,0,0,0"
                                                      transform="translate(3.285 5.139)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_3" data-name="Stroke 3"
                                                      d="M0,7.6C0,1.9,1.984,0,7.937,0s7.937,1.9,7.937,7.6-1.984,7.6-7.937,7.6S0,13.295,0,7.6Z"
                                                      transform="translate(0 0)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="title_link">Support</span>
                                </div>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="page-about.html">
                                <div class="">
                                    <div class="icon_current">
                                        <svg id="Iconly_Curved_Info_Square" data-name="Iconly/Curved/Info Square"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="Info_Square" data-name="Info Square"
                                               transform="translate(2.292 2.292)">
                                                <path id="Stroke_1" data-name="Stroke 1"
                                                      d="M0,7.708C0,1.927,1.927,0,7.708,0s7.708,1.927,7.708,7.708-1.927,7.708-7.708,7.708S0,13.489,0,7.708Z"
                                                      transform="translate(15.417 15.417) rotate(180)" fill="none"
                                                      stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_3" data-name="Stroke 3" d="M0,0V3.246"
                                                      transform="translate(7.708 10.954) rotate(180)" fill="none"
                                                      stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                                <path id="Stroke_15" data-name="Stroke 15" d="M0,0H.007"
                                                      transform="translate(7.712 4.792) rotate(180)" fill="none"
                                                      stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" />
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="title_link">About</span>
                                </div>

                            </a>
                        </li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <div class="em_darkMode_menu">
                        <label class="text" for="switchDarkMode">
                            <h3>Dark Mode</h3>
                            <p>Browsing in night mode</p>
                        </label>
                        <label class="switch_toggle toggle_lg" for="switchDarkMode">
                            <input type="checkbox" class="switchDarkMode" id="switchDarkMode">
                            <span class="handle"></span>
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal mdllOthers -->
    <div class="modal transition-bottom screenFull defaultModal mdlladd__rate mdllOptios_grid fade" id="mdllOthers"
         tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header border-0 p-2 justify-content-center">
                    <!-- header -->
                </div>
                <div class="modal-body px-0 ">
                    <div class="np__bkOperationsService padding-t-30 env-pb">
                        <div class="em__actions">
                            <a href="#" class="btn">
                                <div class="icon bg-red bg-opacity-10">
                                    <svg id="Iconly_Bulk_Folder" data-name="Iconly/Bulk/Folder"
                                         xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                        <g id="Folder" transform="translate(2 2)">
                                            <path id="Folder_2" data-name="Folder 2"
                                                  d="M14.884,3.115H11.941a2.429,2.429,0,0,1-1.894-.887L9.078.888A2.367,2.367,0,0,0,7.193,0H5.113C1.378,0,0,2.192,0,5.919V9.947c0,.443,20,.442,20,0V8.776C20.015,5.049,18.672,3.115,14.884,3.115Z"
                                                  fill="#ff4040" opacity="0.4"></path>
                                            <path id="Folder-2" data-name="Folder"
                                                  d="M14.367,16.9h0c-.1,0-.207,0-.309-.008H5.931c-.1.005-.2.008-.307.008a6.017,6.017,0,0,1-4.068-1.578,4.487,4.487,0,0,1-.667-.887,5.8,5.8,0,0,1-.782-2.183A8.148,8.148,0,0,1,0,10.93V5.677A12.144,12.144,0,0,1,.071,4.363c.01-.076.025-.151.04-.224a1.894,1.894,0,0,0,.049-.37A5.619,5.619,0,0,1,.649,2.252C1.353.747,2.808.015,5.095.015h9.78c.133-.01.269-.016.4-.016A5.241,5.241,0,0,1,18.5,1.116a2.78,2.78,0,0,1,.329.329,3.935,3.935,0,0,1,.729,1.269A8.51,8.51,0,0,1,20,5.677V10.93a9.441,9.441,0,0,1-.1,1.322,5.961,5.961,0,0,1-.8,2.183,4.445,4.445,0,0,1-.676.887A5.983,5.983,0,0,1,14.367,16.9Zm-9.4-8.11a.825.825,0,1,0,0,1.651H15.09a.826.826,0,0,0,.825-.8.742.742,0,0,0-.177-.533.788.788,0,0,0-.623-.319Z"
                                                  transform="translate(0 3.099)" fill="#ff4040"></path>
                                        </g>
                                    </svg>
                                </div>
                                <span>Package</span>
                            </a>
                            <a href="#" class="btn">
                                <div class="icon bg-green bg-opacity-10">
                                    <svg id="Iconly_Bulk_Game" data-name="Iconly/Bulk/Game"
                                         xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                        <g id="Game" transform="translate(2 2)">
                                            <path id="Game_2" data-name="Game 2"
                                                  d="M5.682,3.882v.183c-.491-.01-.981-.01-1.472-.01V3.892a1.222,1.222,0,0,0-1.227-1.2H2.012A1.994,1.994,0,0,1,0,.723.735.735,0,0,1,.736,0a.728.728,0,0,1,.736.723.532.532,0,0,0,.54.52h.972a2.7,2.7,0,0,1,2.7,2.64"
                                                  transform="translate(5.623 0)" fill="#41bd83" opacity="0.4"></path>
                                            <path id="Game-2" data-name="Game"
                                                  d="M10.01,15.944c-1.54,0-2.888-.013-4.122-.039A5.644,5.644,0,0,1,0,10.125V5.819A5.648,5.648,0,0,1,5.9.039C7.223.018,8.521,0,9.833,0c.482,0,.981,0,1.472.01.629,0,1.27.009,1.889.017l.918.012A5.643,5.643,0,0,1,20,5.819v4.306a5.644,5.644,0,0,1-5.888,5.781C12.878,15.932,11.536,15.944,10.01,15.944Zm-4.7-8.7a.739.739,0,0,0-.736.722.73.73,0,0,0,.736.723h1.04V9.711a.736.736,0,0,0,1.472,0V8.69h1.03a.73.73,0,0,0,.736-.723.739.739,0,0,0-.736-.722H7.821V6.233a.736.736,0,0,0-1.472,0V7.245ZM14.7,8.931a.73.73,0,0,0-.736.723.721.721,0,0,0,.736.722h.1a.73.73,0,0,0,.736-.722.739.739,0,0,0-.736-.723ZM13.023,5.617a.73.73,0,0,0-.736.722.722.722,0,0,0,.736.723h.1a.73.73,0,0,0,.735-.723.738.738,0,0,0-.735-.722Z"
                                                  transform="translate(0 4.056)" fill="#41bd83"></path>
                                        </g>
                                    </svg>
                                </div>
                                <span>Add Ons</span>
                            </a>
                            <a href="#" class="btn">
                                <div class="icon bg-yellow bg-opacity-10">
                                    <svg id="Iconly_Bulk_Paper_Download" data-name="Iconly/Bulk/Paper Download"
                                         xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                        <g id="Paper_Download" data-name="Paper Download"
                                           transform="translate(3.5 2)">
                                            <path id="Fill_3" data-name="Fill 3"
                                                  d="M15.309,7.021c-.451,0-1.05-.01-1.794-.01a3.336,3.336,0,0,1-3.309-3.336V.459A.457.457,0,0,0,9.752,0H4.464A4.49,4.49,0,0,0,0,4.509V15.284A4.693,4.693,0,0,0,4.67,20h7.875A4.476,4.476,0,0,0,17,15.5V7.471a.454.454,0,0,0-.453-.458c-.423,0-.93.008-1.238.008"
                                                  fill="#fa9905" opacity="0.4"></path>
                                            <path id="Fill_1" data-name="Fill 1"
                                                  d="M.821.147A.477.477,0,0,0,0,.481V3.118A2.026,2.026,0,0,0,2.016,5.134c.7.008,1.666.01,2.488.008a.477.477,0,0,0,.343-.808C3.792,3.237,1.9,1.271.821.147"
                                                  transform="translate(11.763 0.42)" fill="#fa9905" opacity="0.4">
                                            </path>
                                            <path id="Fill_6" data-name="Fill 6"
                                                  d="M7,3.973a.745.745,0,0,0-1.054,0l-1.589,1.6V.745a.745.745,0,1,0-1.49,0V5.572l-1.59-1.6A.745.745,0,0,0,.216,5.026L3.079,7.9h0a.745.745,0,0,0,.24.161.757.757,0,0,0,.287.057A.741.741,0,0,0,3.9,8.062.753.753,0,0,0,4.133,7.9h0L7,5.026A.744.744,0,0,0,7,3.973"
                                                  transform="translate(4.61 6.736)" fill="#fa9905"></path>
                                        </g>
                                    </svg>
                                </div>
                                <span>Request</span>
                            </a>
                            <a href="#" href="page-my-cards-wallet.html" class="btn">
                                <div class="icon bg-primary bg-opacity-10">
                                    <svg id="Iconly_Bulk_Ticket_Star" data-name="Iconly/Bulk/Ticket Star"
                                         xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                        <g id="Ticket_Star" data-name="Ticket Star" transform="translate(2 3)">
                                            <path id="Fill_1" data-name="Fill 1"
                                                  d="M19.25,10.476a1.476,1.476,0,1,1,0-2.952.754.754,0,0,0,.53-.217A.741.741,0,0,0,20,6.781V4.1A4.129,4.129,0,0,0,15.856,0H4.144A4.129,4.129,0,0,0,0,4.1V6.868a.741.741,0,0,0,.22.526.754.754,0,0,0,.53.217A1.41,1.41,0,0,1,2.239,9,1.484,1.484,0,0,1,.75,10.476.747.747,0,0,0,0,11.22v2.675A4.129,4.129,0,0,0,4.143,18H15.857A4.129,4.129,0,0,0,20,13.895V11.22a.747.747,0,0,0-.75-.743"
                                                  fill="#556fff" opacity="0.4" />
                                            <path id="Fill_4" data-name="Fill 4"
                                                  d="M7.086,3.388,5.907,4.536l.279,1.623a.741.741,0,0,1-1.076.779L3.655,6.173,2.2,6.939a.739.739,0,0,1-1.072-.78L1.4,4.536.224,3.388A.739.739,0,0,1,.637,2.126l1.626-.237L2.992.412A.738.738,0,0,1,3.655,0h0a.736.736,0,0,1,.662.413l.729,1.476,1.629.238a.739.739,0,0,1,.409,1.261"
                                                  transform="translate(6.344 5.201)" fill="#556fff" />
                                        </g>
                                    </svg>
                                </div>
                                <span>Points</span>
                            </a>
                        </div>
                        <div class="em__actions">
                            <a href="#" href="page-my-cards-wallet.html" class="btn">
                                <div class="icon bg-pink bg-opacity-10">
                                    <svg id="Iconly_Bulk_Send" data-name="Iconly/Bulk/Send"
                                         xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                         viewBox="0 0 22 22">
                                        <g id="Send" transform="translate(1.833 1.833)">
                                            <path id="Fill_1" data-name="Fill 1"
                                                  d="M17.808.53A1.777,1.777,0,0,0,16.039.072L1.29,4.333A1.754,1.754,0,0,0,.022,5.718,2.049,2.049,0,0,0,.941,7.634L5.553,10.45a1.2,1.2,0,0,0,1.475-.175l5.281-5.281a.674.674,0,0,1,.972,0,.692.692,0,0,1,0,.972L7.99,11.247a1.2,1.2,0,0,0-.177,1.475l2.818,4.629a1.835,1.835,0,0,0,1.751.852,1.782,1.782,0,0,0,1.494-1.265L18.248,2.3A1.781,1.781,0,0,0,17.808.53"
                                                  transform="translate(0 0)" fill="#de4afd" />
                                            <path id="Combined_Shape" data-name="Combined Shape"
                                                  d="M4.367,6.99a.688.688,0,0,1,0-.972L5.619,4.766a.688.688,0,1,1,.973.973L5.339,6.99a.687.687,0,0,1-.972,0ZM3.649,3.518a.688.688,0,0,1,0-.972L4.9,1.294a.688.688,0,0,1,.973.973L4.621,3.518a.687.687,0,0,1-.972,0ZM.2,2.425a.688.688,0,0,1,0-.972L1.453.2a.688.688,0,0,1,.973.973L1.173,2.425a.687.687,0,0,1-.972,0Z"
                                                  transform="translate(0.239 10.948)" fill="#de4afd" opacity="0.4" />
                                        </g>
                                    </svg>
                                </div>
                                <span>Send</span>
                            </a>
                            <a href="#" href="page-my-cards-wallet.html" class="btn">
                                <div class="icon bg-turquoise bg-opacity-10">
                                    <svg id="Iconly_Bulk_Document" data-name="Iconly/Bulk/Document"
                                         xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                        <g id="Document" transform="translate(3 2)">
                                            <path id="Path"
                                                  d="M13.191,0H4.81C1.77,0,0,1.78,0,4.83V15.16C0,18.26,1.77,20,4.81,20h8.381C16.28,20,18,18.26,18,15.16V4.83C18,1.78,16.28,0,13.191,0"
                                                  fill="#20bbd3" opacity="0.4" />
                                            <path id="Combined_Shape" data-name="Combined Shape"
                                                  d="M.12,10.3a.8.8,0,0,1,0-.84A.785.785,0,0,1,.87,9.09H8.71a.79.79,0,0,1,0,1.57H.87a.732.732,0,0,1-.1.007A.783.783,0,0,1,.12,10.3ZM.87,6.09a.781.781,0,0,1,0-1.562H8.71a.781.781,0,0,1,0,1.562Zm0-4.521A.78.78,0,1,1,.87.01V0H3.859a.785.785,0,0,1,0,1.57Z"
                                                  transform="translate(4.21 4.65)" fill="#20bbd3" />
                                        </g>
                                    </svg>
                                </div>
                                <span>Bills</span>
                            </a>
                            <a href="#" href="page-my-cards-wallet.html" class="btn">
                                <div class="icon bg-purple bg-opacity-10">
                                    <svg id="Iconly_Bulk_Wallet" data-name="Iconly/Bulk/Wallet"
                                         xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                        <g id="Wallet" transform="translate(2 3)">
                                            <path id="Fill_1" data-name="Fill 1"
                                                  d="M14.517,18H5.484a5.633,5.633,0,0,1-4.034-1.413A5.332,5.332,0,0,1,0,12.654V5.338A5.32,5.32,0,0,1,1.449,1.409,5.641,5.641,0,0,1,5.484,0h9.03a5.639,5.639,0,0,1,4.034,1.409A5.321,5.321,0,0,1,20,5.338v.037H15.762a3.54,3.54,0,0,0-3.57,3.482,3.421,3.421,0,0,0,1.044,2.467,3.6,3.6,0,0,0,2.527,1.024H20v.306a5.333,5.333,0,0,1-1.449,3.933A5.632,5.632,0,0,1,14.517,18ZM4.739,3.875a.759.759,0,0,0-.761.744.731.731,0,0,0,.222.528.769.769,0,0,0,.54.221H10.39a.769.769,0,0,0,.54-.221.733.733,0,0,0,.222-.529.759.759,0,0,0-.767-.743Z"
                                                  fill="#694afd" />
                                            <path id="Fill_4" data-name="Fill 4"
                                                  d="M.037,2.4a2.018,2.018,0,0,0,2,1.6h3.25A.726.726,0,0,0,6,3.266V.734A.728.728,0,0,0,5.283,0H1.956A1.985,1.985,0,0,0,0,2.01,2.031,2.031,0,0,0,.037,2.4"
                                                  transform="translate(14 6.9)" fill="#694afd" opacity="0.4" />
                                            <circle id="Oval" cx="1" cy="1" r="1" transform="translate(15 7.9)"
                                                    fill="#694afd" />
                                        </g>
                                    </svg>
                                </div>
                                <span>Balance</span>
                            </a>
                            <a href="#" href="page-my-cards-wallet.html" class="btn">
                                <div class="icon bg-orange bg-opacity-10">
                                    <svg id="Iconly_Bulk_Star" data-name="Iconly/Bulk/Star"
                                         xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                         viewBox="0 0 24 24">
                                        <g id="Star" transform="translate(2 2.5)">
                                            <path id="Fill_1" data-name="Fill 1"
                                                  d="M10.976.614,13.2,5.088a1.112,1.112,0,0,0,.838.6l5,.728a1.121,1.121,0,0,1,.736.43,1.082,1.082,0,0,1,.21.815,1.112,1.112,0,0,1-.321.632l-3.624,3.513a1.056,1.056,0,0,0-.321.963l.892,4.939a1.115,1.115,0,0,1-.892,1.272,1.168,1.168,0,0,1-.714-.114l-4.461-2.324a1.169,1.169,0,0,0-1.053,0L5.033,18.866A1.143,1.143,0,0,1,3.5,18.419a1.131,1.131,0,0,1-.116-.7l.892-4.94a1.061,1.061,0,0,0-.321-.964L.332,8.3A1.084,1.084,0,0,1,.3,6.772l.029-.029a1.078,1.078,0,0,1,.642-.315l5-.729a1.114,1.114,0,0,0,.838-.6L8.96.614A1.107,1.107,0,0,1,9.977,0h.134a1.116,1.116,0,0,1,.865.613"
                                                  fill="#fff" opacity="0.4"></path>
                                            <path id="Fill_4" data-name="Fill 4"
                                                  d="M9.992,16.417a1.226,1.226,0,0,0-.552.151L5,18.887a1.158,1.158,0,0,1-1.5-.461,1.106,1.106,0,0,1-.116-.694L4.274,12.8a1.1,1.1,0,0,0-.321-.975L.328,8.318A1.093,1.093,0,0,1,.311,6.774l.017-.016A1.134,1.134,0,0,1,.96,6.441L5.965,5.7A1.083,1.083,0,0,0,6.8,5.1L8.978.563A1.106,1.106,0,0,1,10,0c-.008.3-.008,16.213-.008,16.415"
                                                  fill="#fff"></path>
                                        </g>
                                    </svg>
                                </div>
                                <span>Favorite</span>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>

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
<!-- 성영 추가 -->
<script src="/assets/js/userjs/register.js"></script>
<script src="/assets/js/userjs/login.js"></script>
</body>

</html>