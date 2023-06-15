<%--
  Created by IntelliJ IDEA.
  User: ohjeeyei
  Date: 2023/05/26
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
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
        color:#af9ad5;
    }

    .fc-day-wed a {
        color:#af9ad5;
    }

    .fc-day-thu a {
        color:#af9ad5;
    }

    .fc-day-fri a {
        color:#af9ad5;
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
        border: none !important;; /* 테두리 없애기 */
    }

    .card-calendar {
        border: none !important;; /* 테두리 없애기 */
    }

    .card-body {
        border: none !important;;
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

<head>
<%--    <link id="my-specific-section" href="../../assets/css/soft-ui-dashboard.css?v=1.1.1" rel="stylesheet"/>--%>
<%--    --%>
</head>

<div id="wrapper">
    <div id="content">

            <!-- Start 나의 정보 -->
            <section class="banner_swiper padding-t-70">
<%--                <div class="title_welcome">--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${logincust == null}">--%>
<%--                        <span class="color-secondary size-16 weight-500">Hi, there !--%>
<%--                        </span>--%>
<%--                            <br>--%>
<%--                            <span class="color-black">로그인 후 이용해주세요</span>--%>
<%--                            <a href="/cust/login" class="btn bg-primary rounded-pill btn__default"--%>
<%--                               style="width: 70PX; height: 30PX">--%>
<%--                                <span class="color-white">login</span>--%>
<%--                            </a>--%>
<%--                        </c:when>--%>
<%--                        <c:otherwise>--%>
<%--                            <div class="em__pkLink emBlock__border bg-white border-t-0">--%>
<%--                                <ul class="nav__list mb-0 emBlock__border bg-white py-4">--%>
<%--                                    <div class="group_collection">--%>
<%--                                        <li>--%>
<%--                                            <a href="/" class="item-link">--%>
<%--                                                <div class="group">--%>
<%--                                                    <div class="icon bg-primary">--%>
<%--                                                        <i class="ri-user-follow-line"></i>--%>
<%--                                                    </div>--%>
<%--                                                    <span class="path__name">--%>
<%--                                                        Hi, ${logincust.custName} 님!--%>
<%--                                                        <img class="w-20 h-20" src="/assets/img/1f590.png" alt="">--%>
<%--                                                    </span>--%>
<%--                                                </div>--%>
<%--                                                <div class="group">--%>
<%--                                                    <span class="short__name"></span>--%>
<%--                                                    <i class="tio-chevron_right -arrwo"></i>--%>
<%--                                                </div>--%>
<%--                                            </a>--%>
<%--                                        </li>--%>
<%--                                    </div>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>
<%--                </div>--%>
            </section>
            <!-- End. 나의 정보 -->

            <!-- Start 오늘의 일정 -->
            <section class="npBalabce_section padding-20 pb-0">
                <div class="content_balance bg-white border border-snow">
                    <div class="txt">
                        <span class="text_b color-text">
                            오늘의 일정
                            <img class="w-20 h-20" src="assets/img/icon/working-hours.svg" alt="">
                        </span>

                        <h3 class="color-secondary"> !!!!!!!! 19시  </h3>
                        <p class="date color-snow"> !!!!! 센터명 , 종목명 ... 등등 </p>
                    </div>
                    <div class="action">
                        <a href="#" class="btn">
                            + 일정 추가하기
                        </a>
                    </div>
                </div>
            </section>
            <br/>
            <br/>
            <!-- End. 오늘의 일정 -->
            <!-- Start 수업 예약-->
        <section class="pt_simpleDetails emBlock__border rounded-0 mt-0 padding-b-30">
            <div class="emCommentCusomers">
                <div class="title"></div>
                <section class="banner_swiper bg-white np__ServicePackage padding-t-0 mt-0 padding-b-10">
                    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
                        <div>
                            <h3 class="size-18 weight-500 color-secondary m-0">운동완료 체크</h3>
                            <span class="text_b color-text">매일매일 오운완 하기~ 약쏙!</span>
                        </div>
                    </div>
                    <div class="col-xl-9">
                        <div class="card card-calendar">
                            <div class="card-body p-3">
                                <div class="calendar" data-bs-toggle="calendar" id="calendar_check"></div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </section>
        <!-- End. 수업 예약-->
        <!-- Start 나의 이용권 -->
        <section class="pt_simpleDetails emBlock__border rounded-0 mt-0 padding-b-30">
            <div class="emCommentCusomers">
                <div class="title"></div>
                <section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">
                    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
                        <div>
                            <h3 class="size-18 weight-500 color-secondary m-0"> 나의 이용권</h3>
                        </div>
                        <a href="/mypage/mypurchase" class="d-block color-blue size-14 m-0 hover:color-blue">모두 보기</a>
                    </div>
                    <div class="owl-carousel owl-theme owlServiceProvider em_owl_swipe">
                        <c:forEach var="obj" items="${clist}">
                            <c:if test="${obj.custNo == sessionScope.logincust.custNo}">
                                <a href="#" class="link_service text-decoration-none">
                                    <div class="item em_item">
                                        <div class="link_service text-decoration-none">

                                        </div>
                                    </div>
                                </a>
                            </c:if>
                        </c:forEach>
                    </div>
                </section>
            </div>
        </section>
    </div>
</div>
<!-- End. 나의 이용권 -->

<!-- calendar 관련 -->
<script src="/assets/js/plugins/fullcalendar.min.js"></script>
<script src="/assets/js/userjs/calendar_check.js"></script>