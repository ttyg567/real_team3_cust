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

</style>

<head>
<%--    <link id="my-specific-section" href="../../assets/css/soft-ui-dashboard.css?v=1.1.1" rel="stylesheet"/>--%>
<%--    --%>
</head>

<div id="wrapper">
    <div id="content">

            <!-- Start 나의 정보 -->
            <section class="banner_swiper padding-t-70">
                <div class="title_welcome">
                    <c:choose>
                        <c:when test="${logincust == null}">
                        <span class="color-secondary size-16 weight-500">Hi, there !
                        </span>
                            <br>
                            <span class="color-black">로그인 후 이용해주세요</span>
                            <a href="/cust/login" class="btn bg-primary rounded-pill btn__default"
                               style="width: 70PX; height: 30PX">
                                <span class="color-white">login</span>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <div class="em__pkLink emBlock__border bg-white border-t-0">
                                <ul class="nav__list mb-0 emBlock__border bg-white py-4">
                                    <div class="group_collection">
                                        <li>
                                            <a href="/" class="item-link">
                                                <div class="group">
                                                    <div class="icon bg-primary">
                                                        <i class="ri-user-follow-line"></i>
                                                    </div>
                                                    <span class="path__name">
                                                        Hi, ${logincust.custName} 님!
                                                        <img class="w-20 h-20" src="/assets/img/1f590.png" alt="">
                                                    </span>
                                                </div>
                                                <div class="group">
                                                    <span class="short__name"></span>
                                                    <i class="tio-chevron_right -arrwo"></i>
                                                </div>
                                            </a>
                                        </li>
                                    </div>
                                </ul>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
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
                                                <div class="cover_img">
                                                    <img src="/assets/img/gym/gymticket.jpg" alt="">
                                                </div>

                                                <div class="txt">
                                                    <span class="type">
                                                      <c:choose>
                                                          <c:when test="${obj.ticketType == 1}">
                                                              <p>기간권</p>
                                                          </c:when>
                                                          <c:when test="${obj.ticketType == 2}">
                                                              <p>횟수권</p>
                                                          </c:when>
                                                      </c:choose>
                                                    </span>
                                                    <div class="details">
                                                        <h2 style="color: purple">
                                                                ${obj.purchasePrice}원</h2>
                                                        <p style="color: purple">
                                                            <c:choose>
                                                                <c:when test="${obj.ticketType == 1}">
                                                                    <h5>${obj.ticketMonth}개월 </h5>
                                                                </c:when>
                                                                <c:when test="${obj.ticketType == 2}">
                                                                    <h5>${obj.ticketNumber}회</h5>
                                                                </c:when>
                                                            </c:choose>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </c:if>
                            </c:forEach>
                        </div>
                    </section>
                </div>
            </section>
            <!-- End. 나의 이용권 -->

            <!-- Start 추천 이용권 -->
            <section class="banner_swiper bg-snow np__ServicePackage padding-t-10 mt-0 padding-b-10">
                <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
                    <div>
                        <h3 class="size-18 weight-500 color-secondary m-0">Recommendation</h3>
                        <p class="size-13 color-text m-0 pt-1">The best recommendations for you!</p>
                    </div>
                    <a href="#" class="d-block color-blue size-14 m-0 hover:color-blue">모두 보기</a>
                </div>
                <!-- Swiper -->
                <div class="owl-carousel owl-theme owlServiceProvider em_owl_swipe">
                    <div class="item em_item">
                        <a href="#" class="link_service text-decoration-none">
                            <div class="cover_img">
                                <img src="assets/img/card02.jpg" alt="">
                            </div>
                            <div class="txt">
                                <span class="type">Roaming Lite</span>
                                <div class="details">
                                    <h2>5 GB</h2>
                                    <p>30-day active period</p>
                                </div>
                                <button type="button" class="btn btn_buy">
                                    Buy! 9 USD
                                </button>
                            </div>
                        </a>
                    </div>
                </div>
            </section>
            <!-- End. 추천 이용권 -->

            <!-- Start 수업 예약-->
            <section class="emTransactions__page np_Package_ac carousel__package padding-b-20">
                <div class="col-xl-9 my-specific-section">
                    <div class="title d-flex justify-content-between align-items-center margin-b-30 pb-0">
                        <div>
                            <h3 class="size-18 weight-500 color-secondary m-0">수업 예약 내역</h3>
                            <p class="size-13 color-text m-0 pt-1">The last packages purchased</p>
                        </div>
                        <a href="#" class="d-block color-blue size-14 m-0 hover:color-blue">모두 보기</a>
                    </div>
                    <div class="col-xl-9">
                        <div class="card card-calendar soft-ui-dashboard">
                            <div class="card-body p-3">
                                <div class="calendar" data-bs-toggle="calendar" id="calendar"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End. 수업 예약-->

    </div>
</div>

<!--   Core JS Files   -->
<script src="/assets/js/plugins/fullcalendar.min.js"></script>

<script>
    var calendar = new FullCalendar.Calendar(document.getElementById("calendar"), {
        contentHeight: 'auto',
        initialView: "dayGridMonth",
        headerToolbar: {
            start: 'title', // will normally be on the left. if RTL, will be on the right
            center: '',
            end: 'today prev,next' // will normally be on the right. if RTL, will be on the left
        },
        selectable: true,
        editable: true,
        initialDate: '2020-12-01',
        events: [{
            title: 'Call with Dave',
            start: '2020-11-18',
            end: '2020-11-18',
            className: 'bg-gradient-danger'
        },

            {
                title: 'Lunch meeting',
                start: '2020-11-21',
                end: '2020-11-22',
                className: 'bg-gradient-warning'
            },

            {
                title: 'All day conference',
                start: '2020-11-29',
                end: '2020-11-29',
                className: 'bg-gradient-success'
            },

            {
                title: 'Meeting with Mary',
                start: '2020-12-01',
                end: '2020-12-01',
                className: 'bg-gradient-info'
            },

            {
                title: 'Winter Hackaton',
                start: '2020-12-03',
                end: '2020-12-03',
                className: 'bg-gradient-danger'
            },

            {
                title: 'Digital event',
                start: '2020-12-07',
                end: '2020-12-09',
                className: 'bg-gradient-warning'
            },

            {
                title: 'Marketing event',
                start: '2020-12-10',
                end: '2020-12-10',
                className: 'bg-gradient-primary'
            },

            {
                title: 'Dinner with Family',
                start: '2020-12-19',
                end: '2020-12-19',
                className: 'bg-gradient-danger'
            },

            {
                title: 'Black Friday',
                start: '2020-12-23',
                end: '2020-12-23',
                className: 'bg-gradient-info'
            },

            {
                title: 'Cyber Week',
                start: '2020-12-02',
                end: '2020-12-02',
                className: 'bg-gradient-warning'
            },

        ],
        views: {
            month: {
                titleFormat: {
                    month: "long",
                    year: "numeric"
                }
            },
            agendaWeek: {
                titleFormat: {
                    month: "long",
                    year: "numeric",
                    day: "numeric"
                }
            },
            agendaDay: {
                titleFormat: {
                    month: "short",
                    year: "numeric",
                    day: "numeric"
                }
            }
        },
    });

    calendar.render();

    var ctx1 = document.getElementById("chart-line-1").getContext("2d");

    var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

    gradientStroke1.addColorStop(1, 'rgba(255,255,255,0.3)');
    gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
    gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

    new Chart(ctx1, {
        type: "line",
        data: {
            labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [{
                label: "Visitors",
                tension: 0.5,
                borderWidth: 0,
                pointRadius: 0,
                borderColor: "#fff",
                borderWidth: 2,
                backgroundColor: gradientStroke1,
                data: [50, 45, 60, 60, 80, 65, 90, 80, 100],
                maxBarThickness: 6,
                fill: true
            }],
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: false,
                }
            },
            interaction: {
                intersect: false,
                mode: 'index',
            },
            scales: {
                y: {
                    grid: {
                        drawBorder: false,
                        display: false,
                        drawOnChartArea: false,
                        drawTicks: false,
                    },
                    ticks: {
                        display: false
                    }
                },
                x: {
                    grid: {
                        drawBorder: false,
                        display: false,
                        drawOnChartArea: false,
                        drawTicks: false,
                    },
                    ticks: {
                        display: false
                    }
                },
            },
        },
    });
</script>





