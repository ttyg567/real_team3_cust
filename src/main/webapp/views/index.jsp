<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <meta name="format-detection" content="telephone=no">

    <meta name="theme-color" content="#ffffff">
    <title>Nepro – The Multipurpose Mobile HTML5 Template</title>
    <meta name="description" content="Nepro – The Multipurpose Mobile HTML5 Template">
    <meta name="keywords"
          content="bootstrap 4, mobile template, 404, chat, about, cordova, phonegap, mobile, html, ecommerce, shopping, store, delivery, wallet, banking, education, jobs, careers, distance learning"/>

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
    <link rel="manifest" href="_manifest.json"/>
    <!-- jquery(위치변경) -->
    <script src="/assets/js/jquery-3.6.0.js"></script>
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- 카카오지도 성영 -->
        <script type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fedd7ae53186e30e0b2f11f102dd9180&libraries=services"></script>
    <!-- 카카오지도 인보 -->
<%--    <script type="text/javascript"--%>
<%--            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4617571d8f9917ae900e8b494a093c31&libraries=services"></script>--%>
    <%--    <script type="text/javascript"--%>
    <%--            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	0f0752ec20b8a0352c5794754058b576&libraries=services"></script>--%>

    <!-- Calendar CDN 설치 -->
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet'/>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>

    <!--Websocket 관련 library 추가-->
    <script src="/webjars/sockjs-client/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/stomp.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="/assets/js/userjs/countup.min.js"></script>
    <style>
        #map img{
            border-radius: 15px;
            width: 100%;
            height: 100%;
            border: #9f9f9f 1px solid;
        }
<%--  모달창 안에 아이콘 정렬  --%>
    .embody__content svg{
        margin-right: 15px;
    }
    .joincontent{
        margin-bottom: 15px;
    }

 .nav-item .title_link {

     width: 100%; /* 원하는 너비 값으로 변경하세요 */
     display: inline-block;
     overflow: hidden;
     white-space: nowrap;
     text-overflow: ellipsis;
 }
.title_link {
    display: inline-block;
    width: 100px; /* Adjust the width as needed */
}

np_balanceDefault {
     background-color: purple;
     color: white;
     padding: 20px;
     border-radius: 10px;
 }

.np_balanceDefault .title_sm {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 10px;
}

.np_balanceDefault .txt h8 {
    margin: 5px 0;
}

.np_balanceDefault .action .btn {
    background-color: violet;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
}

.nav.flex-column.-links {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

.nav.flex-column.-links .nav-item {
    display: flex;
    align-items: center;

}
<!-- 토글 이진 -->
.toggle-switch {
    position: relative;
    display: inline-block;
    width: 60px;
    height: 30px;
    background-color: #ccc;
    border-radius: 15px;
    overflow: hidden;
}

.toggle-checkbox {
    display: none;
}

.toggle-handle {
    position: absolute;
    top: 2px;
    left: 2px;
    width: 26px;
    height: 26px;
    background-color: #fff;
    border-radius: 50%;
    transition: transform 0.3s;
}

.toggle-checkbox:checked + .toggle-handle {
    transform: translateX(30px);
}
/* 지피티 둥둥효과 */
@keyframes bounce {
    0% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(-5px);
    }
    100% {
        transform: translateY(0);
    }
}

.animated-bounce {
    animation: bounce 1.5s infinite;
}

#chatbot:hover {
    transform: scale(1.1); /* 이미지를 1.1배 크기로 확대 */
    transition: transform 0.3s; /* 확대/축소 효과에 0.3초의 전환 효과 적용 */
}

#candy_list {
    display: flex;
    flex-direction: column;
}

.image_list {
    display: flex;
    flex-direction: row;
    box-sizing: border-box;
}

.candy {
    width: 20%;
    padding: 5px;
}

.image_list .candy[id^="day"]:first-child {
    position: relative;
}

.image_list .candy[id^="day"]:first-child:before {
    content: attr(id);
    position: absolute;
    top: 0;
    left: 0;
    background: rgba(255, 255, 255, 0.8);
    padding: 5px;
    font-size: 12px;
    font-weight: bold;
    color: black;
}

@keyframes moveText {
    0% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(-5px);
    }
    100% {
        transform: translateY(0);
    }
}

/* Apply the animation to the moving text */
.moving-text {
    animation: moveText 2s infinite;
}
</style>

<body>

<div id="wrapper">

    <!-- 로딩될 때 로딩이미지 -->
    <section class="em_loading" id="loaderPage">
        <div class="spinner_flash"></div>
    </section>

    <!-- End. em_loading -->


    <%-- center 시작 --%>
    <c:choose>
        <c:when test="${center == null}">
            <jsp:include page="center.jsp"/>
        </c:when>
        <c:otherwise>
            <jsp:include page="${center}.jsp"/>
        </c:otherwise>
    </c:choose>
    <%-- center 끝 --%>

    <!-- 맨 밑 이동 아이콘 5개 : em_main_footer -->
    <footer class="em_main_footer ouline_footer with__text">
        <div class="em_body_navigation -active-links">
            <div class="item_link">
                <a href="/class/reservation" class="btn btn_navLink">
                    <div class="icon_current">
                        <svg id="Iconly_Curved_Document" data-name="Iconly/Curved/Document"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Document" transform="translate(3.61 2.75)">
                                <path id="Stroke_1" data-name="Stroke 1" d="M7.22.5H0"
                                      transform="translate(4.766 12.446)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_2" data-name="Stroke 2" d="M7.22.5H0"
                                      transform="translate(4.766 8.686)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_3" data-name="Stroke 3" d="M2.755.5H0"
                                      transform="translate(4.766 4.927)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_4" data-name="Stroke 4"
                                      d="M0,9.25c0,6.937,2.1,9.25,8.391,9.25s8.391-2.313,8.391-9.25S14.685,0,8.391,0,0,2.313,0,9.25Z"
                                      transform="translate(0)" fill="none" stroke="#9498ac" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"/>
                            </g>
                        </svg>
                    </div>
                    <div class="txt__tile" style="width: 60px;">수업예약</div>
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
                                      stroke-width="1.5"/>
                                <path id="Stroke_11" data-name="Stroke 11" d="M.5.5H.5"
                                      transform="translate(12.709 11.4)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="2"/>
                                <path id="Stroke_13" data-name="Stroke 13" d="M.5.5H.5"
                                      transform="translate(9.709 7.4)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="2"/>
                                <path id="Stroke_15" data-name="Stroke 15" d="M.5.5H.5"
                                      transform="translate(6.7 11.4)" fill="none" stroke="#9498ac"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="2"/>
                            </g>
                        </svg>
                    </div>

                    <div class="txt__tile" style="width: 60px;">이용권구매</div>
                </a>
            </div>
            <div class="item_link">
                <a href="/" class="btn btn_navLink without_active">
                    <button type="button" class="btn btnCircle_default rounded-10" style="background-color: blueviolet">
                        <svg id="Iconly_Curved_Home" data-name="Iconly/Curved/Home"
                             xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                            <g id="Home" transform="translate(2 1.667)">
                                <path id="Stroke_1" data-name="Stroke 1" d="M0,.5H4.846"
                                      transform="translate(5.566 11.28)" fill="none" stroke="#fff"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_2" data-name="Stroke 2"
                                      d="M0,9.761C0,5.068.512,5.4,3.266,2.842,4.471,1.872,6.346,0,7.965,0S11.5,1.862,12.712,2.842c2.754,2.554,3.265,2.227,3.265,6.919,0,6.906-1.633,6.906-7.988,6.906S0,16.667,0,9.761Z"
                                      transform="translate(0)" fill="none" stroke="#fff" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"/>
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
                                      transform="translate(4.755 0)" fill="none" stroke="blueviolet"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_3" data-name="Stroke 3" d="M.523.5H.477"
                                      transform="translate(11.5 8.324)" fill="none" stroke="blueviolet"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_5" data-name="Stroke 5" d="M.523.5H.477"
                                      transform="translate(5.669 8.324)" fill="none" stroke="blueviolet"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_7" data-name="Stroke 7"
                                      d="M9.084,14.934c-6.508,0-7.257-2.05-8.718-7.467C-1.1,2.033,1.841,0,9.084,0S19.268,2.033,17.8,7.467C16.341,12.884,15.592,14.934,9.084,14.934Z"
                                      transform="translate(0 4.006)" fill="none" stroke="blueviolet"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                            </g>
                        </svg>
                    </div>
                    <div class="txt__tile" style="width: 60px;">조인</div>
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
                                      stroke-miterlimit="10" stroke-width="1.5"/>
                                <path id="Stroke_3" data-name="Stroke 3"
                                      d="M16.668,4.75h0a2.464,2.464,0,0,0-3.379-.912,1.543,1.543,0,0,1-2.314-1.346A2.484,2.484,0,0,0,8.5,0h0A2.484,2.484,0,0,0,6.025,2.492,1.543,1.543,0,0,1,3.712,3.839a2.465,2.465,0,0,0-3.38.912,2.5,2.5,0,0,0,.906,3.4,1.56,1.56,0,0,1,0,2.692,2.5,2.5,0,0,0-.906,3.4,2.465,2.465,0,0,0,3.379.913h0a1.542,1.542,0,0,1,2.313,1.345h0A2.484,2.484,0,0,0,8.5,19h0a2.484,2.484,0,0,0,2.474-2.492h0a1.543,1.543,0,0,1,2.314-1.345,2.465,2.465,0,0,0,3.379-.913,2.5,2.5,0,0,0-.905-3.4h0a1.56,1.56,0,0,1,0-2.692A2.5,2.5,0,0,0,16.668,4.75Z"
                                      fill="none" stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                      stroke-miterlimit="10" stroke-width="1.5"/>
                            </g>
                        </svg>

                    </div>

                    <div class="txt__tile" style="width: 60px;">마이페이지</div>
                </a>
            </div>
        </div>
    </footer>
    <!-- End. em_main_footer -->

    <!-- 모달 좌측메뉴 nav바 : Modal Sidebar Menu -->
    <div class="modal sidebarMenu -left fade" id="mdllSidebarMenu-background" tabindex="-1"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header d-block" style="margin-bottom: -20px">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="tio-clear"></i>
                    </button>
                    <div class="em_profile_user">
                        <div class="media">
                            <a href="/cust/pic">
                                <div class="letter bg-purple">
                                <!-- You can use an image -->
                                    <c:choose>
                                        <c:when test="${logincust == null || logincust.custImgName == null}">
                                            <p style="color: white; font-size: 7px; margin-top: 5px">Healssg</p>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="/uimg/${logincust.custImgName}"
                                                 alt="User Image" style="border-radius: 50%; width: 100%; height: 100%">

                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </a>
                            <div class="media-body">
                                <div class="txt">
                                    <!--로그인 여부에따라-->
                                    <c:choose>
                                    <c:when test="${logincust == null}">
                                        <h3>로그인을 해주세요 </h3>
                                        <a href="/cust/login" class="btn btn_logOut"
                                        style="background-color: #DAD2E9;  width: 8px; height: 30px;">로그인</a>
                                    </c:when>
                                    <c:otherwise>
                                        <h3>${logincust.custName}</h3>
                                        <p>${logincust.custPhone}</p>
                                        <a href="/cust/logoutimpl" class="btn btn_logOut"
                                           style="background-color: #DAD2E9">로그아웃</a>
                                    </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
<%--                    <div class="content_balance bg-white border border-snow"--%>
<%--                         style="background-color: lightgoldenrodyellow;">--%>
<%--                        <div class="txt">--%>
<%--                            <span class="title_sm">나의 일정</span>--%>
<%--                            <div class="txt">--%>
<%--                                <h8 class="color-white">--%>
<%--                                    ${logincust.custName}님의 운동 일정이 당분간 없어요</h8>--%>
<%--                                <h8 class="color-snow">바로 수업 예약하세요</h8>--%>
<%--                            </div>--%>
<%--                            <div class="action">--%>
<%--                                <a href="/class/reservation" class="btn">--%>
<%--                                    수업 예약하기--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                    </div>--%>

                </div>
                <!--좌측 메뉴 이진 -->
                <div class="modal-body" >
                    <ul class="nav flex-column -links"
                    style="margin-left: 10px ; margin-top: 0px">
                        <li class="nav-item">
                            <a class="nav-link" href="/">
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
                                                      stroke-miterlimit="10" stroke-width="1.5"/>
                                                <path id="Stroke_3" data-name="Stroke 3"
                                                      d="M0,5.5,1.312,1.312,5.5,0,4.192,4.191Z"
                                                      transform="translate(4.957 4.957)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5"/>
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="title_link">헬쓱 홈</span>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/like1check">
                                <div class="">
                                    <div class="icon_current">
                                        <?xml version="1.0" encoding="utf-8"?><!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
                                        <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                            <path fill="#555" d="M13.6816069,1.68151414 C15.6886881,1.20225236 17.3492986,1.70793555 18.5305552,2.77637221 C19.5626391,3.70988338 20.1587415,5.33450059 19.9630126,7.16572033 C19.8161255,8.53998089 19.0697083,9.93491864 17.720706,11.386568 L10.4473397,18.3091773 C10.1789774,18.5645979 9.75131756,18.5634627 9.48437469,18.306621 L2.26602773,11.360285 C1.19796664,10.2267143 0.516216376,9.15006254 0.232531945,8.11775634 C-0.179041108,6.62007311 -0.0389102525,5.1069236 0.610402012,3.87469373 C1.38014048,2.41392548 2.91616709,1.54639939 5.14169869,1.54639939 C6.66436262,1.54639939 8.26181311,2.29873453 9.94732517,3.76705682 C11.0946237,2.70056091 12.3405404,2.00174132 13.6816069,1.68151414 Z M9.96986805,16.8832036 L16.7307562,10.4500428 C17.8683506,9.22426481 18.4802442,8.08073063 18.593038,7.02544401 C18.7443646,5.60964799 18.3027389,4.40604174 17.5956909,3.76652276 C16.7370508,2.98989 15.5402429,2.62544232 14.0080827,2.99129989 C12.7513412,3.29139148 11.5737369,4.01053975 10.4701027,5.16500603 C10.2073896,5.43981945 9.76565601,5.45085998 9.4889549,5.1895285 C7.85204028,3.64353785 6.39709722,2.89460061 5.14169869,2.89460061 C3.41950102,2.89460061 2.36199017,3.49186778 1.83462163,4.49267941 C1.34644218,5.41912009 1.23828402,6.58702475 1.56270689,7.76757505 C1.78126554,8.56289346 2.34931983,9.45999126 3.25514439,10.4225684 L9.96986805,16.8832036 Z"/>
                                        </svg>
                                    </div>
                                    <span class="title_link">나의 찜</span>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/groupboard/my_applyjoin?custNo=${logincust.custNo}">
                                <div class="">
                                    <div class="icon_current">

                                        <?xml version="1.0" ?><!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
                                        <svg width="800px" height="800px" viewBox="0 0 32 32" data-name="Layer 1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"><defs><style>.cls-1{fill:#4d4d4d;}</style></defs><title/><path class="cls-1" d="M30.68,19.05l-1.9.64-1.65-9.06,4.24-1.7a1,1,0,1,0-.74-1.86l-5,2A1,1,0,0,0,25,10.18l0,.18-2.39,1.19a1,1,0,0,1-1.05-.09L19.13,9.6a3,3,0,0,0-1.8-.6H14.62a2,2,0,0,0-1.78,1.09L11.05,10a1,1,0,0,0-.5.11l-1.67.83L6,10.22l0-.13a1,1,0,0,0-.55-1l-4-2a1,1,0,0,0-.9,1.78l3.39,1.7-.82,9.06-1.8-.6A1,1,0,1,0,.68,21l3,1A1.19,1.19,0,0,0,4,22a1.1,1.1,0,0,0,.55-.16A1,1,0,0,0,5,21.09l.08-.93,1.29.64a3.07,3.07,0,0,0,1.09,1.89l5.77,4.14a2,2,0,0,0,2.84-.3,2.91,2.91,0,0,0,2.36-.13l5.41-2.7A2.31,2.31,0,0,0,25.08,22a1.71,1.71,0,0,0,0-.32l1.9-.63,0,.12a1,1,0,0,0,.47.68A1,1,0,0,0,28,22a1.19,1.19,0,0,0,.32-.05l3-1a1,1,0,1,0-.64-1.9Zm-22,2.06A1,1,0,0,1,8.38,20a.2.2,0,0,1,.15-.14c.06,0,.14,0,.26.08l6.05,4.37-.33,1,0,0Zm14.26.8-5.41,2.7a1,1,0,0,1-.76.06,2,2,0,0,0-.72-1.92l-6-4.37A2.22,2.22,0,0,0,8,18a2.19,2.19,0,0,0-1.18.84l-1.36-.68a.61.61,0,0,0-.18-.05l.53-5.83,3,.74L9,13a1,1,0,0,0,.45-.11L11.21,12l.65,0-.75,1.51a1,1,0,0,0,.44,1.34l.21.11a3,3,0,0,0,3.83-1h1l6.38,7.29a1.19,1.19,0,0,0,.09.15.26.26,0,0,1,.08.25A.27.27,0,0,1,23,21.91Zm1.36-2.07-6.56-7.5A1,1,0,0,0,17,12H15a1,1,0,0,0-.89.55l-.11.21a1,1,0,0,1-.5.47L14.62,11h2.71a1,1,0,0,1,.6.2l2.48,1.86a3,3,0,0,0,3.14.28l1.87-.93,1.21,6.66Z"/></svg>
                                    </div>
                                    <span class="title_link">나의 조인</span>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/coupon/my_coupon?custNo=${logincust.custNo}">
                                <div class="">
                                    <div class="icon_current">
                                    <?xml version="1.0" encoding="iso-8859-1"?>
                                    <!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
                                    <svg fill="#000000" height="800px" width="800px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                         viewBox="0 0 503.607 503.607" xml:space="preserve">
                                    <g>
                                        <g>
                                            <g>
                                                <path d="M176.357,209.836c-16.999,0-32.127,8.591-42.084,21.753c-9.955-13.163-25.078-21.753-42.077-21.753
                                                    c-49.511,0-67.141,61.416-31.423,98.022c13.603,13.956,65.013,65.252,68.226,67.916c3.313,2.746,8.167,2.542,11.237-0.473
                                                    c1.609-1.58,5.979-5.884,10.572-10.416c6.815-6.725,13.784-13.617,20.448-20.229c18.6-18.456,31.724-31.646,36.655-36.936
                                                    C243.39,269.673,225.981,209.836,176.357,209.836z M195.634,296.272c-4.714,5.057-17.809,18.219-36.201,36.467
                                                    c-6.651,6.6-13.61,13.482-20.414,20.196c-1.649,1.627-3.269,3.224-4.741,4.676c-14.068-13.809-50.851-50.563-61.486-61.474
                                                    c-26.146-26.796-13.883-69.515,19.405-69.515c15.032,0,28.348,10.354,34.302,24.987c2.837,6.973,12.711,6.973,15.549,0
                                                    c5.953-14.63,19.276-24.987,34.31-24.987C209.859,226.623,221.921,268.081,195.634,296.272z"/>
                                                <path d="M468.211,67.147H35.395C15.844,67.147,0,82.992,0,102.543v56.933v241.588c0,19.551,15.844,35.395,35.395,35.395h432.816
                                                    c19.551,0,35.395-15.844,35.395-35.395V159.475v-56.933C503.607,82.992,487.762,67.147,468.211,67.147z M16.787,102.543
                                                    c0-10.28,8.329-18.608,18.608-18.608h432.816c10.28,0,18.608,8.329,18.608,18.608v48.539H16.787V102.543z M468.211,419.672
                                                    H35.395c-10.28,0-18.608-8.329-18.608-18.608V167.869H486.82v233.195C486.82,411.343,478.491,419.672,468.211,419.672z"/>
                                                <path d="M360.918,251.803c0-18.544-15.03-33.574-33.574-33.574c-18.543,0-33.574,15.03-33.574,33.574s15.03,33.574,33.574,33.574
                                                    C345.888,285.377,360.918,270.347,360.918,251.803z M310.557,251.803c0-9.272,7.515-16.787,16.787-16.787
                                                    c9.272,0,16.787,7.515,16.787,16.787c0,9.272-7.514,16.787-16.787,16.787C318.072,268.59,310.557,261.076,310.557,251.803z"/>
                                                <path d="M411.279,302.164c-18.543,0-33.574,15.03-33.574,33.574c0,18.544,15.03,33.574,33.574,33.574
                                                    c18.544,0,33.574-15.03,33.574-33.574C444.852,317.194,429.822,302.164,411.279,302.164z M411.279,352.525
                                                    c-9.272,0-16.787-7.515-16.787-16.787c0-9.272,7.515-16.787,16.787-16.787c9.272,0,16.787,7.515,16.787,16.787
                                                    C428.066,345.01,420.551,352.525,411.279,352.525z"/>
                                                <path d="M424.708,219.908c-3.708-2.781-8.969-2.03-11.751,1.679L312.236,355.882c-2.781,3.708-2.03,8.969,1.679,11.751
                                                    c3.708,2.781,8.969,2.03,11.751-1.679l100.721-134.295C429.168,227.951,428.417,222.689,424.708,219.908z"/>
                                            </g>
                                        </g>
                                    </g>
                                    </svg>
                                    </div>
                                    <span class="title_link">나의 쿠폰</span>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/cust/bmi">
                                <div class="">
                                    <div class="icon_current">
                                        <?xml version="1.0" encoding="iso-8859-1"?>
                                        <!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
                                        <svg fill="#000000" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                             viewBox="0 0 512 512" xml:space="preserve">
<g>
    <g>
        <path d="M315.429,146.286h-4.937c8.722-9.719,14.08-22.51,14.08-36.571c0-30.254-24.603-54.857-54.857-54.857
			s-54.857,24.603-54.857,54.857c0,14.062,5.358,26.853,14.08,36.571H224c-25.207,0-45.714,20.507-45.714,45.714v128
			c0,5.047,4.087,9.143,9.143,9.143h27.429v173.714c0,5.047,4.087,9.143,9.143,9.143h45.714h9.143
			c25.207,0,45.714-20.507,45.714-45.714V329.143H352c5.056,0,9.143-4.096,9.143-9.143V192
			C361.143,166.793,340.635,146.286,315.429,146.286z M269.714,73.143c20.169,0,36.571,16.402,36.571,36.571
			s-16.402,36.571-36.571,36.571s-36.571-16.402-36.571-36.571S249.545,73.143,269.714,73.143z M275.319,164.571l-5.605,16.805
			l-5.605-16.805H275.319z M342.857,310.857h-18.286V192h-18.286v274.286c0,15.122-12.306,27.429-27.429,27.429V329.143h-18.286
			v164.571h-27.429V192h-18.286v118.857h-18.286V192c0-15.122,12.306-27.429,27.429-27.429h20.846l16.201,48.603
			c1.243,3.739,4.727,6.254,8.667,6.254s7.424-2.514,8.667-6.254l16.201-48.603h20.846c15.122,0,27.429,12.306,27.429,27.429
			V310.857z"/>
    </g>
</g>
                                            <g>
                                                <g>
                                                    <path d="M150.857,0H59.429c-5.056,0-9.143,4.096-9.143,9.143v493.714c0,5.047,4.087,9.143,9.143,9.143h91.429
			c5.056,0,9.143-4.096,9.143-9.143V9.143C160,4.096,155.913,0,150.857,0z M141.714,54.857h-18.286v18.286h18.286v36.571h-36.571
			V128h36.571v36.571h-18.286v18.286h18.286v36.571h-36.571v18.286h36.571v36.571h-18.286v18.286h18.286v36.571h-36.571v18.286
			h36.571V384h-18.286v18.286h18.286v36.571h-36.571v18.286h36.571v36.571H68.571V18.286h73.143V54.857z"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="178.286" y="18.286" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="214.857" y="18.286" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="251.429" y="18.286" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="288" y="18.286" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="324.571" y="18.286" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="361.143" y="18.286" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="333.714" y="493.714" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="370.286" y="493.714" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="406.857" y="493.714" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
                                            <g>
                                                <g>
                                                    <rect x="443.429" y="493.714" width="18.286" height="18.286"/>
                                                </g>
                                            </g>
</svg>
                                    </div>
                                    <span class="title_link">나의 BMI 지수</span>
                                </div>
                            </a>
                        </li>

                        <label class="title__label">내 정보</label>
                        <li class="nav-item">
                            <c:choose>
                            <c:when test="${logincust == null}">
                                <!--로그인정보 없으면 로그인-->
                                    <a class="nav-link" href="/cust/login">
                                </c:when>
                                <c:otherwise>
                                    <!--로그인정보 있으면 정보수정 페이지-->
                                    <a class="nav-link" href="/cust/information">
                                </c:otherwise>
                                </c:choose>
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
                                                      stroke-miterlimit="10" stroke-width="1.5"/>
                                                <path id="Stroke_3" data-name="Stroke 3"
                                                      d="M13.89,3.959h0a2.053,2.053,0,0,0-2.816-.76A1.286,1.286,0,0,1,9.145,2.077,2.07,2.07,0,0,0,7.083,0h0A2.07,2.07,0,0,0,5.021,2.077,1.286,1.286,0,0,1,3.093,3.2a2.054,2.054,0,0,0-2.817.76A2.085,2.085,0,0,0,1.031,6.8a1.3,1.3,0,0,1,0,2.243,2.085,2.085,0,0,0-.755,2.837,2.054,2.054,0,0,0,2.816.761h0a1.285,1.285,0,0,1,1.928,1.121h0a2.07,2.07,0,0,0,2.062,2.077h0a2.07,2.07,0,0,0,2.062-2.077h0a1.286,1.286,0,0,1,1.929-1.121,2.054,2.054,0,0,0,2.816-.761,2.085,2.085,0,0,0-.754-2.837h0a1.3,1.3,0,0,1,0-2.243A2.085,2.085,0,0,0,13.89,3.959Z"
                                                      transform="translate(0)" fill="none" stroke="#9498ac"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5"/>
                                            </g>
                                        </svg>
                                    </div>

                                        <!--로그인정보 있으면 정보수정 페이지-->
                                            <span class="title_link">  내 정보 수정</span>

                                </div>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/cust/pic">
                                <div class="">
                                    <div class="icon_current">
                                        <?xml version="1.0" encoding="utf-8"?><!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
                                        <svg width="800px" height="800px" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg"><defs><style>.a{fill:none;stroke:#000000;stroke-linecap:round;stroke-linejoin:round;}</style></defs><path class="a" d="M19.8665,14.7011V11.5046H12.2856v3.1965"/><circle class="a" cx="26.956" cy="25.9237" r="12.6998"/><path class="a" d="M22.6634,37.876H6.7749a2.26,2.26,0,0,1-2.26-2.26h0V13.9714H22.6634m8.5852,0H43.5145V35.6156a2.26,2.26,0,0,1-2.26,2.26H31.2486"/><path class="a" d="M42.7153,13.9714V10.4781H34.4306v3.4933"/><path class="a" d="M34.4306,13.9714V10.8107L31.9418,6.5H21.97l-2.4888,4.3107v3.1607"/><circle class="a" cx="26.956" cy="25.9274" r="6.5725"/><circle class="a" cx="26.956" cy="25.9274" r="10.1727"/><path class="a" d="M34.4306,11.4168H19.4814"/></svg>
                                    </div>
                                    <span class="title_link" >나의 프로필 사진</span>
                                </div>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/cust/password">
                                <div class="">
                                    <div class="icon_current">
                                        <?xml version="1.0" encoding="utf-8"?><!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
                                        <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M16.9499909,19 C16.7183558,20.1411202 15.709479,21 14.5,21 L5.5,21 C4.11928813,21 3,19.8807119 3,18.5 L3,11.5 C3,10.290521 3.85887984,9.28164422 5,9.05000906 L5,8 C5,5.23857625 7.23857625,3 10,3 C12.7614237,3 15,5.23857625 15,8 L15,9.05000906 C16.1411202,9.28164422 17,10.290521 17,11.5 L17,13 L18.5,13 C19.8807119,13 21,14.1192881 21,15.5 L21,16.5 C21,17.8807119 19.8807119,19 18.5,19 L16.9499909,19 L16.9499909,19 Z M15.9146471,19 L11.5,19 C10.1192881,19 9,17.8807119 9,16.5 L9,15.5 C9,14.1192881 10.1192881,13 11.5,13 L16,13 L16,11.5 C16,10.710487 15.3900375,10.0634383 14.6156506,10.0043921 C14.5785296,10.0131823 14.5398081,10.0178344 14.5,10.0178344 C14.4540106,10.0178344 14.4094714,10.0116254 14.367175,10 L5.5,10 C4.67157288,10 4,10.6715729 4,11.5 L4,18.5 C4,19.3284271 4.67157288,20 5.5,20 L14.5,20 C15.1531094,20 15.7087289,19.5825962 15.9146471,19 L15.9146471,19 Z M6,9 L14,9 L14,8 C14,5.790861 12.209139,4 10,4 C7.790861,4 6,5.790861 6,8 L6,9 Z M20,16.5 L20,15.5 C20,14.6715729 19.3284271,14 18.5,14 L11.5,14 C10.6715729,14 10,14.6715729 10,15.5 L10,16.5 C10,17.3284271 10.6715729,18 11.5,18 L18.5,18 C19.3284271,18 20,17.3284271 20,16.5 Z M11.5,15 L12.5,15 C12.7761424,15 13,15.2238576 13,15.5 L13,16.5 C13,16.7761424 12.7761424,17 12.5,17 L11.5,17 C11.2238576,17 11,16.7761424 11,16.5 L11,15.5 C11,15.2238576 11.2238576,15 11.5,15 Z M14.5,15 L15.5,15 C15.7761424,15 16,15.2238576 16,15.5 L16,16.5 C16,16.7761424 15.7761424,17 15.5,17 L14.5,17 C14.2238576,17 14,16.7761424 14,16.5 L14,15.5 C14,15.2238576 14.2238576,15 14.5,15 Z M17.5,15 L18.5,15 C18.7761424,15 19,15.2238576 19,15.5 L19,16.5 C19,16.7761424 18.7761424,17 18.5,17 L17.5,17 C17.2238576,17 17,16.7761424 17,16.5 L17,15.5 C17,15.2238576 17.2238576,15 17.5,15 Z"/>
                                        </svg>
                                    </div>
                                    <span class="title_link">비밀번호 변경</span>
                                </div>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/cust/notification">
                                <div class="">
                                    <div class="icon_current">
                                        <svg width="800px" height="800px" viewBox="0 0 512 512" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <title>alarm-bell</title>
                                            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                <g id="notification" fill="#000000" transform="translate(64.000000, 42.666667)">
                                                    <path d="M234.666667,341.333333 C234.666667,364.897483 215.564149,384 192,384 C168.435851,384 149.333333,364.897483 149.333333,341.333333 L234.666667,341.333333 M192,7.10542736e-15 C109.44,7.10542736e-15 42.6666667,76.3733333 42.6666667,170.666667 L42.6666667,219.52 L1.42108547e-14,341.333333 L106.666667,341.333333 C106.666667,388.461632 144.871701,426.666667 192,426.666667 C239.128299,426.666667 277.333333,388.461632 277.333333,341.333333 L384,341.333333 L341.333333,219.52 L341.333333,176.853333 C341.333333,96 294.186667,21.9733333 225.066667,6.18666667 C214.336364,2.79014004 203.232451,0.712633806 192,7.10542736e-15 Z M60.16,298.666667 L82.9866667,234.666667 L85.3333333,226.773333 L85.3333333,170.666667 C85.3333333,100.053333 133.12,42.6665446 192,42.6665446 C199.693665,42.6542739 207.3598,43.5856735 214.826667,45.44 C262.613333,57.1733333 298.666667,113.28 298.666667,175.786667 L298.666667,226.773333 L301.013333,233.6 L323.84,298.666667 L60.16,298.666667 Z">

                                                    </path>
                                                </g>
                                            </g>
                                        </svg>
                                        <!-- SVG 아이콘 코드 -->
                                    </div>
                                    <span class="title_link">알림설정</span>
                                </div>
                            </a>
                            <div>
                            </div>
                        </li>
                    </ul>
                </div>
                <hr>
                <div class="modal-footer" style="margin-bottom: 10px">
                    <div class="em_darkMode_menu">
                        <label class="text" for="switchDarkMode">
                            <h3>다크모드로 전환</h3>
                            <p style="font-size: 11px">눈의 피로를 덜어 드려요</p>
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
    <!-- Modal로 보여지는 창 : mdllJobDetails -->
    <!-- Modal : center 에서 사용한 것 처럼 모달로 각 조인들 상세보기-->
    <!-- 조인 상세보기를 위해선 forEach 한번 더! -->
    <c:forEach  var="obj" items="${alljoin}" >
        <%-- join 신청하는 기능이 페이지에 있을 땐, from 태그와, input hidden이 꼭 있어야해
         action -> 기재된 컨트롤러에서 처리 --%>
        <form id="join_form" action="/groupboard/success_apply" method="get">
            <input type="hidden" name="custNo" value="${logincust.custNo}"/>
            <input type="hidden" name="groupboardNo" value="${obj.groupboardNo}"/>
            <input type="hidden" name="gymNo" value="${obj.gymNo}"/>
            <div class="modal transition-bottom screenFull defaultModal mdllJobs_details fade" id="mdllJobDetails${obj.groupboardNo}"
                 tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header padding-l-20 padding-r-50">
                                <%-- 이미지 넣을 맨 상단 구간 --%>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <i class="tio-clear"></i>
                            </button>

                        </div>
                        <div class="modal-body p-0"><%-- 제목~내용 구간  --%>
                            <div id="wrapper">

                                <div id="content">
                                    <!-- Start emPage__detailsBlog -->
                                    <section class="emPage__detailsBlog" style="margin-top: -100px">
                                        <div class="emheader_cover">
                                            <div class="cover">
                                                <img src="/assets/img/${obj.groupboardImgname}" alt="" style="height:450px" >
                                            </div>
                                            <div class="title">
                                                <div class="size-18 weight-600 color-primary"style="text-align: right">
                                                    <span class="color-text"></span>
                                                    <c:choose>
                                                        <c:when test="${obj.groupboardStatus == 1}">
                                                            <p>모집중</p>
                                                        </c:when>
                                                        <c:when test="${obj.groupboardStatus == 2}">
                                                            <p>모집취소</p>
                                                        </c:when>
                                                        <c:when test="${obj.groupboardStatus == 3}">
                                                            <p>신청중</p>
                                                        </c:when>
                                                        <c:when test="${obj.groupboardStatus == 4}">
                                                            <p>신청취소</p>
                                                        </c:when>
                                                        <c:otherwise><!-- groupboardStatus == 5 -->
                                                            <p>확정</p>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                                <div class="em__header">
                                                    <h3 class="">${obj.groupboardTitle}</h3>
                                                </div>

                                                <div class="item__auther emBlock__border">
                                                    <div class="item_person">
                                                        <img src="/assets/img/${obj.groupboardImgname}" alt="">
                                                            <%-- 조인을 만든 고객 이름   --%>
                                                        <h2>${obj.custName}</h2>
                                                    </div>
                                                    <div class="sideRight">
                                                        <div class="time">
                                                            <div class="icon">
                                                                <svg id="Iconly_Curved_Time_Square" data-name="Iconly/Curved/Time Square"
                                                                     xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                                     viewBox="0 0 15 15">
                                                                    <g id="Time_Square" data-name="Time Square"
                                                                       transform="translate(1.719 1.719)">
                                                                        <path id="Stroke_1" data-name="Stroke 1"
                                                                              d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                                              fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                              stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                                                        <path id="Stroke_3" data-name="Stroke 3" d="M2.119,3.99,0,2.726V0"
                                                                              transform="translate(5.781 3.053)" fill="none" stroke="#cbcdd8"
                                                                              stroke-linecap="round" stroke-linejoin="round"
                                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                                    </g>
                                                                </svg>
                                                            </div>
                                                            <span>${obj.writeDate}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                            <%-- 조인모집 작성내용 적히는 공간  --%>
                                        <div class="embody__content">
                                            <div style="height: 180px;  display: flex; flex-wrap: wrap; flex-direction: column; align-content: flex-start; align-items: flex-start;">
                                                <div class="joincontent" style=" display: flex; align-items: center;">
                                                        <%-- 센터정보 : 이름 / 위치 --%>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-geo-alt color-primary" viewBox="0 0 16 16">
                                                        <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                                                        <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                                    </svg>

                                                    <span>${obj.gymName}  ${obj.gymAddress3}</span>
                                                </div>

                                                    <%-- 이용권정보 : 이용권명 / 가격 / 할인율 --%>
                                                <c:choose>
                                                    <c:when test="${obj.ticketType == '1'}">
                                                        <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-ticket-perforated color-primary" viewBox="0 0 16 16">
                                                                <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                                                <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                                            </svg>
                                                            <span>기간권</span> <span>${obj.ticketMonth}개월 이용권</span>
                                                        </div>
                                                        <%-- 조인 확정시 할인 예상금액 / 기본 할인 0% + 10% --%>
                                                        <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                            </svg>
                                                            <c:set var="joinDiscount" value="${obj.ticketDiscount + 10}" />
                                                            <span style="color: blueviolet; font-weight: bold">조인 헬쓱 회원가 <fmt:formatNumber value="${obj.ticketJoinPrice}" pattern="###,### 원" /> (<fmt:formatNumber value="${joinDiscount}"/>% 적용)</span>
                                                        </div>
                                                        <%-- 정상금액 --%>
                                                        <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                            </svg>

                                                            <span class="item_price">
                              일반 회원가
                              <span class="price_old">
                                  <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" />
                              </span>
                          </span>
                                                        </div>
                                                    </c:when>
                                                    <c:when test="${obj.ticketType == '2'}">
                                                        <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-ticket-perforated color-primary" viewBox="0 0 16 16">
                                                                <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                                                <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                                            </svg>
                                                            <span>횟수권</span> <span>${obj.ticketNumber}회 이용권</span>
                                                        </div>
                                                        <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                            </svg>
                                                            <span style="color: blueviolet; font-weight: bold">조인 헬쓱 회원가 <fmt:formatNumber value="${obj.ticketJoinPrice}" pattern="###,### 원" /> (<fmt:formatNumber value="${joinDiscount}"/>% 적용)</span>
                                                        </div>
                                                        <%-- 정상금액 --%>
                                                        <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                            </svg>
                                                            <span class="item_price">
                              일반 회원가
                              <span class="price_old">
                                  <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" />
                              </span>
                          </span>
                                                        </div>
                                                    </c:when>
                                                </c:choose>

                                                <div class="joincontent">
                                                        <%-- 모집인원 정보 --%>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-person color-primary" viewBox="0 0 16 16">
                                                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                                                    </svg>
                                                    <span>신청 인원  <span style="color: #8890E8; font-weight: bolder"> ${obj.confirmMember}명</span></span> |<span> 모집 인원 ${obj.expectMember}명</span>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="title">
                                                <h6>센터 상세정보</h6>
                                                    <%--  센터 지도 이미지 --%>
                                                <div id="map" style="width: 100%; height: 250px;">
                                                <img src="/assets/img/gym1_map.jpg" alt="">
                                                </div>
                                            </div>
                                            <div style="height: 100px; margin-top: 20px;  display: flex; flex-wrap: wrap; flex-direction: column; align-content: flex-start; align-items: flex-start;">

                                                    <%--  센터 주소와 연락처 --%>
                                                <div class="joincontent" style=" display: flex; align-items: center;">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building color-primary" viewBox="0 0 16 16">
                                                        <path d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1ZM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Z"/>
                                                        <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V1Zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3V1Z"/>
                                                    </svg>
                                                    <span>상세 주소 : ${obj.gymAddress1}, ${obj.gymAddress2}</span>
                                                </div>
                                                <div class="joincontent" style=" display: flex; align-items: center;">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone color-primary" viewBox="0 0 16 16">
                                                        <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                                                    </svg>
                                                    <span>연락처 : ${obj.gymPhone}</span>
                                                </div>

                                            </div>
                                            <hr>
                                            <div class="title">
                                                <h6>모집 소개내용</h6>
                                                <p>
                                                        ${obj.groupboardContents}
                                                </p>
                                            </div>
                                        </div>
                                    </section>

                                        <%--  모달 맨 밑 푸터   --%>
                                    <div class="modal-footer" style="width: 100%;">
                                        <div class="em__footer" style="width: 100%;">
                                            <div class="em_footerinner" style="width: 100%;">
                                                <div class="emfo_button __withIcon">
                                                        <%-- get 방식의 submit으로 정보 전송 --%>
                                                    <button type="submit" id="join_addbtn" style="background-color: blueviolet; color: white; width: 100%"
                                                            class="btn btn__icon color-white min-w-175">
                                                        조인 신청하기
                                                        <a href="/groupboard/success_apply" >
                                                        </a>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div><%-- 제목~내용 구간 끝. --%>

                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </form>
    </c:forEach>
    <!-- /.modal -->

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
<!-- calendar 관련 -->
<%--<script src="/assets/js/plugins/fullcalendar.min.js"></script>--%>

</body>

</html>