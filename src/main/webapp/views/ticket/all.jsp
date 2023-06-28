<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .navListProducts {
        white-space: nowrap;
        overflow-x: auto;
        -webkit-overflow-scrolling: touch;
        scroll-snap-type: x mandatory;
        scroll-padding: 10px;
    }

    .nav-item {
        scroll-snap-align: start;
        display: inline-block;
        margin-right: 10px;
    }
    /* 운동 카테고리  */
    <%-- 운동 종목 : 텍스트 글씨 진하게 --%>
    .em__actions span{
        font-weight: bold;
    }
    .em__actions .icon{
        border-radius: 30px;
    }
    <%-- 운동 종목 : 아이콘 사진 크기 조정 --%>
    .icon img{
        width: 50px;
        height: 50px;
        background-color: white;
    }
    .nav-link{
        background-color: white;
    }
</style>
<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>

<body>
<div id="wrapper">
    <div id="content">

        <!-- Start main_haeder -->
        <header class="main_haeder header-sticky multi_item">
            <div class="em_menu_sidebar">
                <button type="button" class="btn btn_menuSidebar item-show" data-toggle="modal"
                        data-target="#mdllSidebarMenu-background">
                    <i class="ri-menu-fill"></i>
                </button>
            </div>
            <div class="title_page">
                    <span class="page_name">
                        운동 이용권
                    </span>
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

        <!-- Start page_news -->
        <section class="page_news">
            <div class="emBlock__border padding-l-0 bg-snow" style="width: 100%; padding-bottom: 0;
      overflow-x: auto; padding-left: 5px; background-color : white; border: none;
      scrollbar-width: none; -ms-overflow-style: none;">
                <p style="margin-left: 5px; margin-top: 7px; font-size: 11px; margin-bottom: 2px">관심가는 운동센터를 찾아보세요🧐</p>
                <div class="em__actions">
                    <ul class="nav navListProducts" style="display: inline-flex; width: max-content; margin-top: 5px">
                        <li class="nav-item" style="padding-left: 15px;"><!-- 진한 글씨로 표기된 페이지 active '전체' -->
                            <a class="nav-link active" href="/ticket/all" style="padding-right: 7px;" >
                                <div class="icon bg-opacity-10">
                                    <img src="/assets/img/all.png" alt=""   style="border-radius: 30px; padding: 5px;
               border: blueviolet 2px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);"
                                    >
                                </div>
                                <p style="font-weight: bold; color: blueviolet; font-size: 12px; width: 50px; text-align: center; padding-top: 3px;"
                                >전체</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="/ticket/workout"  style="padding-right: 7px;">
                                <div class="icon bg-opacity-10">
                                    <img src="/assets/img/cate2.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);"
                                    >
                                </div>
                                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;"
                                >헬스</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ticket/pt"  style="padding-right: 7px;">
                                <div class="icon bg-opacity-10">
                                    <img src="/assets/img/cate1.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                                </div>
                                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">PT</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ticket/crossfit"  style="padding-right: 7px;">
                                <div class="icon bg-opacity-10">
                                    <img src="/assets/img/cate3.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                                </div>
                                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 3px;">크로스핏</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ticket/yoga" style="padding-right: 7px;">
                                <div class="icon bg-opacity-10">
                                    <img src="/assets/img/cate4.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                                </div>
                                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">요가</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ticket/pilates" style="padding-right: 7px;">
                                <div class="icon bg-opacity-10">
                                    <img src="/assets/img/cate5.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                                </div>
                                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">필라테스</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ticket/golf" style="padding-right:7px;">
                                <div class="icon bg-opacity-10">
                                    <img src="/assets/img/cate6.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                                </div>
                                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">골프</p>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ticket/swimming" style="padding-right: 7px;">
                                <div class="icon bg-opacity-10">
                                    <img src="/assets/img/cate7.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                                </div>
                                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">수영</p>

                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <hr style="margin-top: 0">
            <c:forEach var="obj" items="${alljoin}" >
                <ul class="itemList__news">
                        <%--  li : 화면에 보여질 조인들   --%>
                    <li class="items-nav">
                        <a class="btn"
                           data-toggle="modal"
                           data-target="#mdllJobDetails${obj.groupboardNo}">
                            <div class="media align-items-center">
                                    <%--1.대표 이미지--%><img class="img_news" src="/assets/img/${obj.groupboardImgname}" alt="">
                                <div class="media-body">
                                    <div class="txt">
                                            <%--2.조인글 제목--%><h2>${obj.groupboardTitle}</h2>
                                        <div class="info_bottom">
                                            <div class="time">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Time_Square"
                                                         data-name="Iconly/Curved/Time Square"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Time_Square" data-name="Time Square"
                                                           transform="translate(1.719 1.719)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5" />
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M2.119,3.99,0,2.726V0"
                                                                  transform="translate(5.781 3.053)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5" />
                                                        </g>
                                                    </svg>
                                                </div>
                                                    <%--3. 신청인원 / 모집인원 --%>
                                                <span>${obj.applicationMember}명 신청 중</span> <span>${obj.expectMember}명 모집</span>
                                            </div>
                                            <div class="view">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Show" data-name="Iconly/Curved/Show"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Show" transform="translate(1.719 2.969)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M3.952,1.976A1.976,1.976,0,1,1,1.976,0,1.977,1.977,0,0,1,3.952,1.976Z"
                                                                  transform="translate(3.806 2.588)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5" />
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5" />
                                                        </g>
                                                    </svg>
                                                </div>
                                                    <%--4. 조회수--%><span>${obj.boardViews}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </a>
                    </li>
                </ul>
            </c:forEach>
        </section>
            <!-- 지역 정보가 들어오면 해당 지역의 센터 뿌려주기-->
            <c:forEach  var="obj" items="${all}" >
            <ul class="itemList__news" style="background-color: white">

                <li class="items-nav">
                    <a href="/ticket/detail?gymNo=${obj.gymNo}" class="btn">
                        <div class="media align-items-center">
                            <c:forEach var="img" items="${obj.gymImgname}" varStatus="status">
                                <c:if test="${status.index eq 0}">
                                    <img class="img_news" src="/assets/img/gymImg/${img}" alt="">
                                </c:if>
                            </c:forEach>

                            <div class="media-body">
                                <div class="txt">
                                    <h2 style="margin-bottom: -10px">${obj.gymName}</h2>
                                    <div class="info_bottom">
                                        <div class="time">
                                            <div class="icon">
                                                <svg id="Iconly_Curved_Time_Square"
                                                     data-name="Iconly/Curved/Time Square"
                                                     xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                     viewBox="0 0 15 15">
                                                    <g id="Time_Square" data-name="Time Square"
                                                       transform="translate(1.719 1.719)">
                                                        <path id="Stroke_1" data-name="Stroke 1"
                                                              d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                              fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                              stroke-linejoin="round" stroke-miterlimit="10"
                                                              stroke-width="1.5" />
                                                        <path id="Stroke_3" data-name="Stroke 3"
                                                              d="M2.119,3.99,0,2.726V0"
                                                              transform="translate(5.781 3.053)" fill="none"
                                                              stroke="#cbcdd8" stroke-linecap="round"
                                                              stroke-linejoin="round" stroke-miterlimit="10"
                                                              stroke-width="1.5" />
                                                    </g>
                                                </svg>
                                            </div>

                                            <span style="color: black">${obj.gymAddress1}</span>
                                        </div>
                                    </div>
                                          <div class="view">
                                            <div class="icon">
                                                <svg id="Iconly_Two-tone_Heart" data-name="Iconly/Two-tone/Heart" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                                                    <g id="Heart" transform="translate(1.667 2.5)">
                                                        <path id="Path_33961" d="M8.124,14.878a30.408,30.408,0,0,1-5.282-3.907A9.935,9.935,0,0,1,.327,7.163,5.229,5.229,0,0,1,3.571.24,5.469,5.469,0,0,1,8.33,1h0A5.477,5.477,0,0,1,13.089.24,5.232,5.232,0,0,1,16.34,7.163a9.935,9.935,0,0,1-2.514,3.808,30.408,30.408,0,0,1-5.282,3.907L8.338,15Z" transform="translate(0 0)" fill="none" stroke="#292e34" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"/>
                                                        <path id="Path_33964" d="M0,0A2.345,2.345,0,0,1,1.681,2.018" transform="translate(11.613 3.378)" fill="none" stroke="#292e34" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" opacity="0.4"/>
                                                    </g>
                                                </svg>
                                            </div>
                                            <span>${obj.likecount}명이 관심있는 곳</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </a>
                </li>
            </ul>
            </c:forEach>
        </section>
    </div>
</div>

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

    <!-- Modal Buttons Share -->
    <div class="modal transition-bottom -inside screenFull defaultModal mdlladd__rate fade" id="mdllButtons_share"
         tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content rounded-15">

                <div class="modal-body rounded-15 p-0">
                    <div class="emBK__buttonsShare icon__share padding-20">
                        <button type="button" class="btn" data-sharer="facebook" data-hashtag="hashtag"
                                data-url="https://orinostudio.com/nepro/">
                            <div class="icon bg-facebook rounded-10">
                                <i class="tio-facebook_square"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="telegram" data-title="Checkout Nepro!"
                                data-url="https://orinostudio.com/nepro/" data-to="+44555-5555">
                            <div class="icon bg-telegram rounded-10">
                                <i class="tio-telegram"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="skype"
                                data-url="https://orinostudio.com/nepro/" data-title="Checkout Nepro!">
                            <div class="icon bg-skype rounded-10">
                                <i class="tio-skype"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="linkedin"
                                data-url="https://orinostudio.com/nepro/">
                            <div class="icon bg-linkedin rounded-10">
                                <i class="tio-linkedin_square"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="twitter" data-title="Checkout Nepro!"
                                data-hashtags="pwa, Nepro, template, mobile, app, shopping, ecommerce"
                                data-url="https://orinostudio.com/nepro/">
                            <div class="icon bg-twitter rounded-10">
                                <i class="tio-twitter"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="whatsapp" data-title="Checkout Nepro!"
                                data-url="https://orinostudio.com/nepro/">
                            <div class="icon bg-whatsapp rounded-10">
                                <i class="tio-whatsapp_outlined"></i>
                            </div>
                        </button>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>

<!-- jquery -->
<%--<script src="assets/js/jquery-3.6.0.js"></script>--%>
<%--<!-- popper.min.js 1.16.1 -->--%>
<%--<script src="assets/js/popper.min.js"></script>--%>
<%--<!-- bootstrap.js v4.6.0 -->--%>
<%--<script src="assets/js/bootstrap.min.js"></script>--%>

<%--<!-- Owl Carousel v2.3.4 -->--%>
<%--<script src="assets/js/vendor/owl.carousel.min.js"></script>--%>
<%--<!-- Swiper 6.4.11 -->--%>
<%--<script src="assets/js/vendor/swiper-bundle.min.js"></script>--%>
<%--<!-- sharer 0.4.0 -->--%>
<%--<script src="assets/js/vendor/sharer.js"></script>--%>
<%--<!-- short-and-sweet v1.0.2 - Accessible character counter for input elements -->--%>
<%--<script src="assets/js/vendor/short-and-sweet.min.js"></script>--%>
<%--<!-- jquery knob -->--%>
<%--<script src="assets/js/vendor/jquery.knob.min.js"></script>--%>
<%--<!-- main.js -->--%>
<%--<script src="assets/js/main.js" defer></script>--%>
<%--<!-- PWA app service registration and works js -->--%>
<%--<script src="assets/js/pwa-services.js"></script>--%>
</body>
</html>
