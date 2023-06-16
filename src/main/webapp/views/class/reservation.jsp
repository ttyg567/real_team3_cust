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
    }

    .card-body {
        border: none;
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

    /*.fc-toolbar .fc-prev-button.active,*/
    /*.fc-toolbar .fc-next-button.active {*/
    /*    background-color: #cbb3fd; !* 클릭 시 버튼의 배경색 *!*/
    /*    border-color: #cbb3fd;*/
    /*    color: white; !* 클릭 시 버튼의 텍스트색 *!*/
    /*}*/

    .circle_check.active {
        background-color: var(--bg-green) !important;
        border-color: var(--border-green) !important;
    }

    .circle_check.active::before {
        opacity: 1 !important;
        background-position: center !important; /* 배경 이미지를 가운데로 정렬 */
    }

</style>
<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/">
            <i class="tio-chevron_left size-24 color-text"></i>
            <span class="color-text size-14">Back</span>
        </a>
    </div>
    <div class="title_page">
        <span class="page_name">헬쓱</span>
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
                                    <a class="nav-link active" href="/class/reservation">수업예약</a>
                                </li>
                            </ul>
                        </div>
                        <div class="emBlock__border padding-l-20 bg-snow col-6">
                            <ul class="nav navListProducts">
                                <li class="nav-item">
                                    <a class="nav-link" href="/class/my_reservation">예약내역조회</a>
                                </li>
                            </ul>
                        </div>
                    </section>
                    <section class="row">
                        <div class="col-12 content_balance bg-white border border-snow padding-10 ">
                            <div class="emTitle_co padding-20">
                                <h2 class="size-16 weight-500 color-secondary mb-1">${logincust.custName}님, 수업
                                    예약으로
                                    매일매일 오운완 도전!</h2>
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
                                <div class="personal__info">
                                    <h1 class="size-15 color-secondary weight-400">수업명 : </h1>
                                    <span class="size-13 color-text weight-400 d-inline-block" id="gymName">센터 : </span>
                                    <span class="size-13 color-text weight-400 d-inline-block"
                                          id="trainerName">강사 : </span>
                                    <p class="size-13 color-text weight-400" id="classTime">수업시간 : </p>
                                    <span class="size-13 color-text weight-400 d-inline-block"
                                          id="sportsType">운동종목: </span>
                                    <span class="size-13 color-text weight-400 d-inline-block"
                                          id="sportsClasstype">수업형태: </span>
                                </div>
                                <div class="areaRight">
                                    <span class="circle_check"></span>
                                </div>
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

<!-- calendar 관련 -->
<script src="/assets/js/plugins/fullcalendar.min.js"></script>
<script src="/assets/js/userjs/calendar.js"></script>