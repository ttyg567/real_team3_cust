<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
    .slideshow-container {
        position: relative;
        width: 100%;
        height: 150px;
        margin: 0 auto;
        overflow: hidden;
    }

    .slide {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .item_img_top {
        width: 100%;
        height: 200px;
    }

    .prev,
    .next {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        width: 50px;
        height: 50px;
        color: #92bce0;
        font-size: 24px;
        line-height: 50px;
        text-align: center;
        cursor: pointer;
        text-decoration: none;
    }

    .prev {
        left: 10px;
    }

    .next {
        right: 10px;
    }

    .slide-counter {
        position: absolute;
        bottom: 10px;
        left: 50%;
        font-size: 14px;
    }

    .fc-day-mon a {
        color: #af9ad5;
    }

    .fc-day-tue a {
        color: #af9ad5;
    }

    .fc-day-wed a {
        color: #af9ad5;
    }

    .fc-day-thu a {
        color: #af9ad5;
    }

    .fc-day-fri a {
        color: #af9ad5;
    }

    .fc-day-sun a {
        color: #f1aeb4;
    }

    .fc-day-sat a {
        color: #99c0e3;
    }

    /* 사용자 정의 CSS */
    .fc-dayGridMonth-view .fc-day,
    .fc-timeGridWeek-view .fc-day {
        /* 일자 정사각형 스타일 변경 */
        /* 예시: 정사각형으로 표시하기 위해 width와 padding을 동일하게 설정 */
        width: 2px !important;
        height: 2px !important;
        /*border: none; !* 테두리 없애기 *!*/
    }

    .card-calendar {
        border: none; /* 테두리 없애기 */
        padding-left: 0;
        padding-right: 0;
    }

    .card-body {
        border: none;
        padding-left: 0;
        padding-right: 0;
    }

    .bg-gradient-primary {
        background-image: linear-gradient(310deg, rgb(236, 210, 242) 0%, rgb(166, 175, 235) 100%);
    }

    .modal-body {
        max-height: 200px; /* 스크롤이 표시될 최대 높이 */
        overflow-y: auto; /* 세로 스크롤을 표시하고 필요한 경우에만 표시됨 */
    }

    .fc-toolbar .fc-prev-button, /* prev 버튼 */
    .fc-toolbar .fc-next-button { /* next 버튼 */
        background-color: #9f4efd; /* 버튼의 배경색 */
        border-color: #9f4efd;
        color: white; /* 버튼의 텍스트색 */
    }

    .circle_check.active::before {
        content: "" !important;
        background-image: url("data:image/svg+xml,%3Csvg id='done' xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'%3E%3Cpath id='Icon_color' data-name='Icon color' d='M8.424.782l-5.3,5.3a.25.25,0,0,1-.355,0L.074,3.387a.25.25,0,0,1,0-.355l.35-.35a.25.25,0,0,1,.355,0L2.944,4.847,7.719.072a.255.255,0,0,1,.355,0l.35.355a.25.25,0,0,1,0,.355Z' transform='translate(1.501 2.843)' fill='%23fff' stroke='%23fff' stroke-miterlimit='10' stroke-width='0.5'/%3E%3C/svg%3E%0A") !important;
        background-repeat: no-repeat !important;
        width: 12px !important;
        height: 12px !important;
        background-size: 12px !important;
        position: absolute !important;
        opacity: 0 !important;
        -webkit-transform: scale(1.1, -1.2) !important;
        -moz-transform: scale(1.1, -1.2) !important;
        -o-transform: scale(1.1, -1.2) !important;
        -ms-transform: scale(1.1, -1.2) !important;
        transform: scale(1.1, -1.2) !important;
    }
    .circle_check.active {
        background-color: var(--bg-green) !important;
        border-color: var(--border-green) !important;
        -webkit-animation: flip-horizontal-bottom 0.4s cubic-bezier(0.455, 0.03, 0.515, 0.955) both !important;
        -moz-animation: flip-horizontal-bottom 0.4s cubic-bezier(0.455, 0.03, 0.515, 0.955) both !important;
        -o-animation: flip-horizontal-bottom 0.4s cubic-bezier(0.455, 0.03, 0.515, 0.955) both !important;
        -ms-animation: flip-horizontal-bottom 0.4s cubic-bezier(0.455, 0.03, 0.515, 0.955) both !important;
        animation: flip-horizontal-bottom 0.4s cubic-bezier(0.455, 0.03, 0.515, 0.955) both !important;
    }
    .circle_check.active::before {
        opacity: 1 !important;
    }

</style>
<%-- 헤더 --%>
<header class="main_haeder header-sticky multi_item">
    <div class="em_menu_sidebar">
        <button type="button" class="btn btn_menuSidebar item-show" data-toggle="modal"
                data-target="#mdllSidebarMenu-background">
            <i class="ri-menu-fill"></i>
        </button>
    </div>
    <div class="title_page">
                    <span class="page_name">
                        운동수업
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
<!-- Start page_news -->
<section class="page_news">
    <form id="reservation_form" name="reservation_form">
        <input type="hidden" id="custNo" value="${logincust.custNo}"/>
        <div id="wrapper">
            <div id="content">
                <div class="col-sm-12 text-left "> <!-- 12로 해주기 !! -->
                    <section class="row">
                        <div class="emBlock__border padding-l-20 bg-snow col-6">
                            <ul class="nav navListProducts">
                                <li class="nav-item">
                                    <a id="reservationLink1" class="nav-link active" href="/class/reservation">수업예약</a>
                                </li>
                            </ul>
                        </div>
                        <div class="emBlock__border padding-l-20 bg-snow col-6">
                            <ul class="nav navListProducts">
                                <li class="nav-item">
                                    <a id="myReservationLink1" class="nav-link" href="/class/my_reservation">예약내역</a>
                                </li>
                            </ul>
                        </div>
                    </section>
                    <section class="row">
                        <div class="col-12 content_balance bg-white border border-snow padding-10 ">
                            <div class="emTitle_co padding-20">
                                <h2 class="size-16 weight-500 color-secondary mb-1">${logincust.custName}님, 매일매일 오운완 도전!</h2>
                                <p class="size-12 color-text m-0">날짜를 클릭하시면 예약 가능한 수업이 보여집니다.</p>
                            </div>
                            <!-- 달력 부분 -->
                            <div class="col-12 d-flex justify-content-center"> <!-- 중앙 정렬 스타일 추가 -->
                                <div class="card card-calendar soft-ui-dashboard">
                                    <div class="card-body p-3">
                                        <div class="calendar_reserve" data-bs-toggle="calendar_reserve"
                                             id="calendar_reserve"></div>
                                    </div>
                                </div>
                            </div>
                            <!-- 달력 끝 -->
                        </div>
                    </section>
                    <!-- 예약 부분 끝 -->
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal defaultModal modalCentered change__address fade" id="mdllAdd_Address" tabindex="-1"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                        <div class="itemProduct_sm">
                            <h1 class="size-18 weight-600 color-secondary m-0" id="tdate">일자 수업</h1>
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="tio-clear"></i>
                        </button>
                    </div>
                    <div class="modal-body emPage__shippingAddress withBorder__sm bg-white">
                        <ul class="nav__listAddress itemSingle">
                            <li class="item">
<%--                                <div class="personal__info">--%>
<%--                                    <h1 class="size-15 color-secondary weight-400">수업명 : </h1>--%>
<%--                                    <span class="size-13 color-text weight-400 d-inline-block" id="gymName">센터 : </span>--%>
<%--                                    <span class="size-13 color-text weight-400 d-inline-block"--%>
<%--                                          id="trainerName">강사 : </span>--%>
<%--                                    <p class="size-13 color-text weight-400" id="classTime">수업시간 : </p>--%>
<%--                                    <span class="size-13 color-text weight-400 d-inline-block"--%>
<%--                                          id="sportsType">운동종목: </span>--%>
<%--                                    <span class="size-13 color-text weight-400 d-inline-block"--%>
<%--                                          id="sportsClasstype">수업형태: </span>--%>
<%--                                </div>--%>
<%--                                <div class="areaRight">--%>
<%--                                    <span class="circle_check"></span>--%>
<%--                                </div>--%>
                            </li>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn_default_lg" id="reserve_btn">예약하기</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</section>

<script src="/assets/js/userjs/calendar.js"></script>
