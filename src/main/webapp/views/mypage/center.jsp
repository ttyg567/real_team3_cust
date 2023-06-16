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

<section class="page_news">

    <div id="wrapper">
        <div id="content">
            <!-- Start 오늘의 일정 -->
            <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
                <section class="npBalabce_section padding-5 pb-0">
                    <div class="content_balance bg-white border border-snow">
                        <div class="txt">
                            <h6 class="color-text">
                                오늘의 운동 일정</h6>
                            <h6 class="color-secondary">센터</h6>
                            <h7 class="color-snow">수업일시</h7>
                        </div>
                        <div class="action">
                            <a href="/class/my_reservation" class="btn">
                                나의 일정 보기
                            </a>
                        </div>
                    </div>
                </section>
                <section class="npBalabce_section padding-5 pb-0">
                    <div class="content_balance bg-white border border-snow">
                        <div class="txt">
                            <h6 class="color-text">
                                내일의 운동 일정</h6>
                            <h6 class="color-secondary">센터</h6>
                            <h7 class="color-snow">수업일시</h7>
                        </div>
                        <div class="action">
                            <a href="/class/my_reservation" class="btn">
                                나의 일정 보기
                            </a>
                        </div>
                    </div>
                </section>
            </div>
            <hr>
            <!-- End. 오늘의 일정 -->
            <!-- Start. 운동 완료 별사탕 -->
            <section class="npBalabce_section padding-20 pb-0">
                <div class="content_balance bg-white border border-snow">
                    <div class="txt">
                        <h6 class="color-text">
                            이 달의 운동 사탕</h6>
                        <h6 class="color-secondary">매일매일 건강도 챙기고, 혜택도 챙겨가자!</h6>
                        <h7 class="color-snow">월급날에 운동하면 혜택이 더 빵빵하다구!!</h7>
                        <br>
                        <h7 id="candyCount" class="color-snow"></h7>
                    </div>
                </div>
                <br>
                <div class="content_balance bg-white border border-snow" id="candy_list">
                    <div class="image_list">
                        <img src="/assets/img/candy/star_default_01.png" id="day1" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_02.png" id="day2" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_03.png" id="day3" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_04.png" id="day4" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_05.png" id="day5" class="candy" alt="candy">
                    </div>
                    <div class="image_list">
                        <img src="/assets/img/candy/star_default_06.png" id="day6" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_07.png" id="day7" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_08.png" id="day8" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_09.png" id="day9" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_10.png" id="day10" class="candy" alt="candy">
                    </div>
                    <div class="image_list">
                        <img src="/assets/img/candy/star_default_11.png" id="day11" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_12.png" id="day12" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_13.png" id="day13" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_14.png" id="day14" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_15.png" id="day15" class="candy" alt="candy">
                    </div>
                    <div class="image_list">
                        <img src="/assets/img/candy/star_default_16.png" id="day16" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_17.png" id="day17" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_18.png" id="day18" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_19.png" id="day19" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_20.png" id="day20" class="candy" alt="candy">
                    </div>
                    <div class="image_list">
                        <img src="/assets/img/candy/star_default_21.png" id="day21" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_22.png" id="day22" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_23.png" id="day23" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_24.png" id="day24" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_25.png" id="day25" class="candy" alt="candy">
                    </div>
                    <div class="image_list">
                        <img src="/assets/img/candy/star_default_26.png" id="day26" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_27.png" id="day27" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_28.png" id="day28" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_29.png" id="day29" class="candy" alt="candy">
                        <img src="/assets/img/candy/star_default_30.png" id="day30" class="candy" alt="candy">
                    </div>
                </div>
            </section>
            <!-- End. 운동 완료 별사탕 -->
            <hr>
            <!-- End. 수업 예약-->
            <!-- Start 오늘의 일정 -->
            <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
                <section class="npBalabce_section padding-5 pb-0">
                    <div class="content_balance bg-white border border-snow">
                        <div class="txt">
                            <h6 class="color-text">
                                나의 이용권</h6>
                            <h6 class="color-secondary">센터</h6>
                            <h7 class="color-snow">이용권 이름: </h7>
                            <h7 class="color-snow">잔여횟수: </h7>
                        </div>
                    </div>
                </section>
            </div>
            <hr>
            <!-- End. 오늘의 일정 -->

            <%--            <!-- Start 나의 이용권 -->--%>
            <%--            <section class="pt_simpleDetails emBlock__border rounded-0 mt-0 padding-b-30">--%>
            <%--                <div class="emCommentCusomers">--%>
            <%--                    <div class="title"></div>--%>
            <%--                    <section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">--%>
            <%--                        <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">--%>
            <%--                            <div>--%>
            <%--                                <h3 class="size-18 weight-500 color-secondary m-0"> 나의 이용권</h3>--%>
            <%--                            </div>--%>
            <%--                            <a href="/mypage/mypurchase" class="d-block color-blue size-14 m-0 hover:color-blue">모두--%>
            <%--                                보기</a>--%>
            <%--                        </div>--%>
            <%--                        <div class="owl-carousel owl-theme owlServiceProvider em_owl_swipe">--%>
            <%--                            <c:forEach var="obj" items="${clist}">--%>
            <%--                                <c:if test="${obj.custNo == sessionScope.logincust.custNo}">--%>
            <%--                                    <a href="#" class="link_service text-decoration-none">--%>
            <%--                                        <div class="item em_item">--%>
            <%--                                            <div class="link_service text-decoration-none">--%>

            <%--                                            </div>--%>
            <%--                                        </div>--%>
            <%--                                    </a>--%>
            <%--                                </c:if>--%>
            <%--                            </c:forEach>--%>
            <%--                        </div>--%>
            <%--                    </section>--%>
            <%--                </div>--%>
            <%--            </section>--%>
        </div>
    </div>
</section>

<script>
    $(document).ready(function () {
        getCompleted();
        // displayNumberOnImage();
    });

    function getCompleted() {

        let uniqueImageIds = []; // 중복되지 않은 imageId를 저장할 배열

        // GET 요청으로 운동완료 정보를 받아오기
        $.ajax({
            url     : '/mypage/getCompleted',
            dataType: 'json',
            success : function (response) {
                console.log("==== 응답을 찍어보겠습니다 ====" + response);
                // 운동 완료 정보를 받아온 후 이미지를 변경합니다.
                response.forEach(function (item) {
                    var date = item.date.split(' ')[0];
                    var completed = item.completed;
                    var imageId = "day" + date.split('-')[2]; // 이미지의 id를 구성합니다.

                    console.log("date는 " + date);
                    console.log("completed는 " + completed);
                    console.log("imageId는 " + imageId);

                    // 이미지의 src 속성을 변경하여 이미지를 표시합니다.
                    $("#" + imageId).attr("src", "/assets/img/candy/star_active.png");

                    if (!uniqueImageIds.includes(imageId)) { // 중복되지 않은 imageId인 경우에만 배열에 추가합니다.
                        uniqueImageIds.push(imageId);
                    }
                });

                // JavaScript
                var candyCountElement = $("#candyCount");
                candyCountElement.text("내가 모은 별사탕: " + uniqueImageIds.length + "개 / 30개");
                console.log("별사탕 갯수" + uniqueImageIds.length);

            },
            error   : function (error) {
                console.log("==== 실패 ====" + error);
            }
        });
    }

    function displayNumberOnImage() {
        // 이미지 요소들을 선택합니다.
        const images = document.querySelectorAll('.image_list .candy');

        // 각 이미지 요소에 대해서 반복합니다.
        images.forEach((image) => {
            // 이미지의 src 속성을 가져옵니다.
            const src = image.getAttribute('src');

            // src 속성에 'star_default.png'이 포함되어 있는 경우에만 처리합니다.
            if (src.includes('star_default.png')) {
                // 이미지의 id에서 숫자를 추출합니다.
                const number = image.id.match(/\d+/)[0];

                // 이미지 요소를 감싸는 div 요소를 생성합니다.
                const imageWrapper = document.createElement('div');
                imageWrapper.style.position = 'relative';
                imageWrapper.style.display = 'inline-block';

                // 이미지 요소를 생성한 div 요소에 추가합니다.
                image.parentNode.insertBefore(imageWrapper, image);

                // 숫자를 표시할 div 요소를 생성합니다.
                const numberWrapper = document.createElement('div');
                numberWrapper.innerText = number;
                numberWrapper.style.position = 'absolute';
                numberWrapper.style.left = '0';
                numberWrapper.style.top = '0';
                numberWrapper.style.transform = 'translate(-50%, -50%)';
                numberWrapper.style.display = 'flex';
                numberWrapper.style.justifyContent = 'center';
                numberWrapper.style.alignItems = 'center';
                numberWrapper.style.backgroundColor = 'rgba(255, 255, 255, 0.8)';
                numberWrapper.style.borderRadius = '5px';
                numberWrapper.style.padding = '5px';
                numberWrapper.style.fontWeight = 'bold';
                numberWrapper.style.fontSize = '18px';
                imageWrapper.appendChild(numberWrapper);

                // 이미지를 생성한 div 요소에 추가합니다.
                imageWrapper.appendChild(image);
            }
        });
    }


</script>
