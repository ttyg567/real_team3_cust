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
            <div class="em_side_right">
                <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/">
                    <i class="tio-chevron_left size-24 color-text"></i>
                    <span class="color-text size-14">Back</span>
                </a>
            </div>
            <div class="title_page">
                    <span class="page_name">
                        헬쓱
                    </span>
            </div>
            <div class="em_side_right">
                <button type="button" class="btn btn_meunSearch" id="saerch-On-header">
                    <i class="ri-search-2-line"></i>
                </button>
            </div>
        </header>
        <!-- End.main_haeder -->

        <!-- Start page_news -->
        <section class="page_news">
            <div class="emBlock__border padding-l-20 bg-snow">
                <ul class="nav navListProducts">
                    <li class="nav-item">
                        <a class="nav-link" href="/ticket/all">전체</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ticket/workout">헬스</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ticket/pt">PT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ticket/yoga">요가</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ticket/pilates">필라테스</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/ticket/golf">골프</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ticket/crossfit">크로스핏</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ticket/swimming">수영</a>
                    </li>
                </ul>
            </div>
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
                                    <h2>${obj.gymName}</h2>
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
                                            <span>${obj.gymAddress1}</span>
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
                                            <span>좋아요 ${obj.likecount}개 </span>
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
