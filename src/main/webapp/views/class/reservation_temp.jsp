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

    .bg-gradient-primary {
        background-image: linear-gradient(310deg, rgb(236, 210, 242) 0%, rgb(166, 175, 235) 100%);
    }

    .modal-body {
        max-height: 200px; /* 스크롤이 표시될 최대 높이 */
        overflow-y: auto; /* 세로 스크롤을 표시하고 필요한 경우에만 표시됨 */
    }

</style>

<form id="reservation_form" name="reservation_form">
    <input type="hidden" id="custNo" value="${logincust.custNo}" />
    <div id="wrapper">
        <div id="content">
            <div class="col-sm-12  text-left "> <!-- 12로 해주기 !! -->
                <div class="container">
                    <div class="row content">
                        <!-- 헤더에 가려서 빈 공간 주는 것 -->
                        <section class="emSection__payment pageCredit__Card">
                        </section>
                        <!-- 헤더에 가려서 빈 공간 주는 것 -->

                        <section class="row emTransactions__page np_Package_ac carousel__package padding-b-20 rounded">
                            <div class="col-12 bg-snow padding-10 border">
                                <div class="emTitle_co padding-20">
                                    <h2 class="size-16 weight-500 color-secondary mb-1">${logincust.custName}님, 수업 예약으로 매일매일 오운완 도전!</h2>
                                    <p class="size-12 color-text m-0">구매하신 이용권으로 예약 가능한 수업입니다</p>
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
                        <!-- 예약 입력창 -->
                        <section class="emTransactions__page np_Package_ac carousel__package padding-b-20">
                            <%--                        <div class="title d-flex justify-content-between align-items-center margin-b-30 pb-0">--%>
                            <%--                            <div class="container">--%>
                            <%--                                <h6>일자: <span id="tdate"></span></h6>--%>
                            <%--                                <h6>시간: <span id="ttime"></span></h6>--%>
                            <%--                                <h6 id="select_time">시간선택:<span id="stime"></span></h6>--%>
                            <%--                                <h6 id="next_btn"><a href="#" class="btn btn-sm btn-primary ml-lg-4">예약</a></h6>--%>
                            <%--                            </div>--%>
                            <%--                        </div>--%>
                            <section class="emSection__payment pageCredit__Card">
                                <form action="" class="form___inputCredit">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group input-lined relative">
                                                <input type="text" class="form-control"
                                                       placeholder="1234 1324 1234 1234"
                                                       id="cardNumber" type="text" pattern="[0-9]*" inputmode="numeric"
                                                       required>
                                                <label for="cardNumber">Card Number</label>
                                                <div class="absolute right-0 top-0 pt-3">
                                                    <svg id="ccicon" class="ccicon h-16 w-35" width="750" height="471"
                                                         viewBox="0 0 750 471" version="1.1"
                                                         xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    </svg>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group input-lined">
                                                <input type="text" class="form-control" maxlength="20" id="nameCard"
                                                       placeholder="John Doe" required>
                                                <label for="nameCard">Card Holder</label>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group input-lined">
                                                <input type="text" class="form-control" placeholder="-- / --"
                                                       id="expirationdate"
                                                       pattern="[0-9]*" inputmode="numeric" required>
                                                <label for="expirationdate">Expiry Date</label>

                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group input-lined">
                                                <input type="text" class="form-control" placeholder="1234"
                                                       id="securitycode"
                                                       pattern="[0-9]*" inputmode="numeric" required>
                                                <label for="securitycode">Security Code (CVV)</label>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                                <div class="buttons text-center">
                                    <a href="index.html" class="btn bg-primary rounded-pill btn__default">
                                        <span class="color-white">Verify Code</span>
                                        <div class="icon rounded-circle">
                                            <i class="tio-chevron_right"></i>
                                        </div>
                                    </a>
                                </div>
                            </section>
                            <!-- 예약 입력창 끝 -->
                    </div>
                    </section>
                    <!-- 예약 부분 끝 -->
                </div>
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
                <div class="modal-body">
                    <ul class="nav__listAddress itemSingle">
                        <li class="item">
                            <div class="personal__info">
                                <h1 class="size-15 color-secondary weight-400">수업명 : </h1>
                                <span class="size-13 color-text weight-400 d-inline-block" id="gymName">센터 : </span>
                                <span class="size-13 color-text weight-400 d-inline-block" id="trainerName">강사 : </span>
                                <p class="size-13 color-text weight-400" id="classTime">수업시간 : </p>
                                <span class="size-13 color-text weight-400 d-inline-block" id="sportsType">운동종목: </span>
                                <span class="size-13 color-text weight-400 d-inline-block" id="sportsClasstype">수업형태: </span>
                            </div>
                            <div class="areaRight">
                                <span class="circle_check"></span>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn_default_lg">예약하기</button>
                </div>
            </div>
        </div>
    </div>
</form>