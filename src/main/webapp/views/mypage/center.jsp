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
<%--  챗봇 둥둥효과는 index파일로 이동시킴. : 인보 --%>
    .nav-pills .nav-item .nav-link {
        color: white; /* 원하는 글씨 색상으로 변경 */
    }
    .nav-pills .nav-item .nav-link.active {
        color: black; /* 선택된 탭 글씨 색상 */;
    }
.content_balance1 {
    height: 150px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    border-radius: 10px;
}
</style>

<c:choose>
    <c:when test="${logincust == null}">
        <div style="display: flex; justify-content: center; height: 100vh; margin-top: 200px;">
            <div id="content1">
                <section class="emPage__ResultPayment">
                    <div class="em__seccess">
                        <h2 class="size-20 weight-500 color-secondary margin-b-10">로그인 후 이용해주세요</h2>
                        <p class="size-15 color-text margin-b-10 moving-text">▼ 저를 클릭해주세요! ▼</p>
                    </div>
                    <div id="notification" style="text-align: center;">
                        <img id="loginplzIcon" src="/assets/img/login/loginplz.gif" style="cursor: pointer;">
                    </div>
                </section>
            </div>
        </div>
    </c:when>
    <c:otherwise>
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
                        마이페이지
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

        <!-- Start 나의 이용권 -->
<%--        <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe"--%>
<%--        style=" padding-top: 80px;  padding-bottom:60px; background: linear-gradient(to bottom, #444B9C, #181d5e);">--%>
            <c:choose>
                <c:when test="${my_ticket_list != '[]'}">
                <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe"
                     style=" padding-top: 80px;  padding-bottom:20px; background: linear-gradient(to bottom, #BE95EF, #E499CF);">
                <c:forEach var="obj2" items="${my_ticket_list}">
                 <section class="npBalabce_section padding-5 pb-0">
                            <div class="content_balance bg-white"
                                 style=" height: 180px; background: linear-gradient(to bottom, #BB8EEC, #DB91D2);
                                    border: none; margin: 2px 2px 5px 2px;
                                    box-shadow: 0 8px 10px -5px rgba(0, 0, 0, 0.2), 4px 4px 6px -3px rgba(0, 0, 0, 0.1);
                                    ">

                                <div class="txt">
                                    <h6 style="color: white">잔여 이용권</h6>
                                    <h6 class="color-black" style="font-weight: bold">
                                            ${obj2.gymName}
                                        <c:choose>
                                            <c:when test="${obj2.ticketType == '1'}">
                                                기간권 ${obj2.ticketMonth}개월
                                            </c:when>
                                            <c:when test="${obj2.ticketType == '2'}">
                                                횟수권 ${obj2.ticketNumber}회
                                            </c:when>
                                        </c:choose>
                                    </h6>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                         fill="currentColor" class="bi bi-ticket-detailed color-snow"
                                         viewBox="0 0 16 16">
                                        <path d="M4 5.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5Zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5ZM5 7a1 1 0 0 0 0 2h6a1 1 0 1 0 0-2H5Z"/>
                                        <path d="M0 4.5A1.5 1.5 0 0 1 1.5 3h13A1.5 1.5 0 0 1 16 4.5V6a.5.5 0 0 1-.5.5 1.5 1.5 0 0 0 0 3 .5.5 0 0 1 .5.5v1.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 11.5V10a.5.5 0 0 1 .5-.5 1.5 1.5 0 1 0 0-3A.5.5 0 0 1 0 6V4.5ZM1.5 4a.5.5 0 0 0-.5.5v1.05a2.5 2.5 0 0 1 0 4.9v1.05a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-1.05a2.5 2.5 0 0 1 0-4.9V4.5a.5.5 0 0 0-.5-.5h-13Z"/>
                                    </svg>
                                    <h7 class="color-black">
                                        <c:choose>
                                            <c:when test="${obj2.ticketType == '1'}">
                                                사용 : ${obj2.usedCnt}회
                                            </c:when>
                                            <c:when test="${obj2.ticketType == '2'}">
                                                잔여 : ${obj2.remaining}회 / ${obj2.ticketNumber}회
                                            </c:when>
                                        </c:choose>
                                    </h7>
                                    <br>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                         fill="currentColor" class="bi bi-calendar2-x color-snow"
                                         viewBox="0 0 16 16">
                                        <path d="M6.146 8.146a.5.5 0 0 1 .708 0L8 9.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 10l1.147 1.146a.5.5 0 0 1-.708.708L8 10.707l-1.146 1.147a.5.5 0 0 1-.708-.708L7.293 10 6.146 8.854a.5.5 0 0 1 0-.708z"/>
                                        <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
                                        <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
                                    </svg>
                                    <h7 class="color-black"> 만료 : ${obj2.purchaseDate_str}</h7>

                                    <button type="button" class="btn btn_smView" data-toggle="modal"
                                            data-target="#mdllAddRate-${obj2.gymNo}" id="review-link"
                                            style="margin-top: 7px; color: white; background-color: #a361e9; border: none; border-radius: 7px; cursor: pointer; padding: 4px 8px;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-postcard-heart-fill"
                                             viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
                                                  d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2Zm6 2.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7Zm3.5.878c1.482-1.42 4.795 1.392 0 4.622-4.795-3.23-1.482-6.043 0-4.622ZM2 5.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5Z"/>
                                        </svg>
                                        <span style="margin-left: 4px; ">이용후기 남기기</span>
                                    </button>
                                </div>
                            </div>
                        </section>
                    </c:forEach>
                </div>
                </c:when>
                <c:otherwise>
                    <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe"
                    style=" padding-top: 80px;  padding-bottom:20px; background: linear-gradient(to bottom, #444B9C, #181d5e);">

                    <section class="npBalabce_section padding-5 pb-0">
                        <div class="content_balance1 bg-white"
                        style="  background: linear-gradient(to bottom, #565FAA, #252C86);
                        border: none; height: 180px; margin: 2px 2px 5px 2px;
                         box-shadow: 0 8px 10px -5px rgba(0, 0, 0, 0.2), 4px 4px 6px -3px rgba(0, 0, 0, 0.1);">

                            <div class="txt" style="text-align: center; color: white ">
                                <h6>
                                        ${logincust.custName} 님의 <br> 운동 이용권 구매가 아직이네요</h6>
                                <h7 style="color: white; font-size: 10px; margin-bottom: 5px; font-weight: lighter">헬쓱에선 원하는 이용권을 더 저렴하게 이용할 수 있어요</h7>
                            </div><br>
                            <div class="action" style="border-radius: 7px; background-color: #cce5ff;  font-size: 9px; ">
                                <a href="/ticket/all" class="btn" style="font-size: 9px; font-weight: bold">
                                    이용권 구매하기
                                </a>
                            </div>
                        </div>
                    </section>
                    </div>
                </c:otherwise>
            </c:choose>
        <!-- End. 나의 이용권-->
<%-- 탭생성 : 2개 제목구간 --%>
            <div class="tab__line two_item">
                <ul class="nav nav-pills" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home"
                           role="tab" aria-controls="pills-home" aria-selected="true"
                           style="font-size: 14px;">나의 운동</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile"
                           role="tab" aria-controls="pills-profile" aria-selected="false"
                           style="font-size: 14px;">출석체크</a>
                    </li>

                </ul>
            </div><!-- 탭 제목 끝 -->

        <section class="components_page paddingTab_header" style="padding-top: 20px;">
            <!-- 첫번째 탭 : 나의 운동 내용작성 구간 -->
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                     aria-labelledby="pills-home-tab">

                    <!-- Start 오늘의 일정 -->
                    <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
                        <c:choose>
                            <c:when test="${my_reservation_list != '[]'}">
                                <c:forEach var="obj" items="${my_reservation_list}">
                                    <section class="npBalabce_section padding-5 pb-0">
                                        <div class="content_balance " style="background: #fbebee;">
                                            <div class="txt">
                                                <h6 style="color: rebeccapurple">
                                                        ${obj.dateCategory}의 운동 일정</h6>
                                                <h6 class="color-secondary">${obj.className}</h6>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor"
                                                     class="bi bi-calendar2-check color-instagram" viewBox="0 0 16 16">
                                                    <path d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                                    <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
                                                    <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
                                                </svg>&nbsp;
                                                <h7 class="color-instagram">${obj.classDate}</h7>
                                                <br>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi bi-alarm color-instagram"
                                                     viewBox="0 0 16 16">
                                                    <path d="M8.5 5.5a.5.5 0 0 0-1 0v3.362l-1.429 2.38a.5.5 0 1 0 .858.515l1.5-2.5A.5.5 0 0 0 8.5 9V5.5z"/>
                                                    <path d="M6.5 0a.5.5 0 0 0 0 1H7v1.07a7.001 7.001 0 0 0-3.273 12.474l-.602.602a.5.5 0 0 0 .707.708l.746-.746A6.97 6.97 0 0 0 8 16a6.97 6.97 0 0 0 3.422-.892l.746.746a.5.5 0 0 0 .707-.708l-.601-.602A7.001 7.001 0 0 0 9 2.07V1h.5a.5.5 0 0 0 0-1h-3zm1.038 3.018a6.093 6.093 0 0 1 .924 0 6 6 0 1 1-.924 0zM0 3.5c0 .753.333 1.429.86 1.887A8.035 8.035 0 0 1 4.387 1.86 2.5 2.5 0 0 0 0 3.5zM13.5 1c-.753 0-1.429.333-1.887.86a8.035 8.035 0 0 1 3.527 3.527A2.5 2.5 0 0 0 13.5 1z"/>
                                                </svg>&nbsp;
                                                <h7 class="color-instagram">${obj.classStarttime}~${obj.classEndtime}</h7>
                                            </div>
                                            <div class="action">
                                                <a href="/class/my_reservation" class="btn-">
                                                    나의 일정 보기
                                                </a>
                                            </div>
                                        </div>
                                    </section>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <section class="npBalabce_section padding padding-b-20">
                                    <div class="content_balance bg-white border border-gray"
                                         style=" height:100px;
                                      box-shadow: 0 8px 10px -5px rgba(0, 0, 0, 0.2), 4px 4px 6px -3px rgba(0, 0, 0, 0.1);">
                                        <div class="txt">
                                            <h6 style="font-size: 14px;">
                                                당분간 운동일정이 없네요
                                                </h6>
                                            <h7 style="color: blueviolet; font-size: 11px;">바로 수업일정을 알아보세요</h7>
                                        </div>
                                        <div class="action" style="
                                        border-radius: 7px; background-color: #cce5ff;  font-size: 9px; ">
                                            <a href="/class/reservation" class="btn" style="font-size: 9px; font-weight: bold; width: 20px; height: 30px; padding: 2px 2px 2px 2px;">
                                                수업 예약하기
                                            </a>
                                        </div>
                                    </div>
                                </section>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <!-- End. 오늘의 일정 -->
                    <%-- 챗봇 안내 --%>
                    <div class="emTitle_co padding-20">
                        <h2 class="size-16 weight-500 color-secondary mb-1">고객 문의사항</h2>
                        <p class="size-12 color-text m-0">AI-ChatBot을 통해 궁금한 점을 빠르게 해결해 보세요.</p>
                    </div>
                    <div class="">
                        <div class="margin-b-20 emPage__CateJobs withOut_colorful padding-l-20 padding-r-20">

                            <a href="/mypage/gptchatbot" class="emCategorie_itemJobs _list bg-blue">
                                <img src="/assets/img/candy/chatbot.png" class="d-inline animated-bounce" id="chatbot"
                                     alt="chatbot"
                                     style="width: 50px; height: 50px;">
                                <div class="txt">
                                    <h2>안녕, 나는 헬쓱 지피티야. <br> 운동하면서 궁금한 점을 알려줘</h2>
                                    <p>24시간 대기중</p>
                                </div>
                            </a>
                            <a href="/mypage/chatbot" class="emCategorie_itemJobs _list bg-orange">
                                <img src="/assets/img/candy/clova.png" class="d-inline animated-bounce" id="chatbotclova"
                                     alt="chatbot"
                                     style="width: 50px; height: 50px;">
                                <div class="txt">
                                    <h2>안녕, 나는 헬쓱 클로바야.<br> 헬쓱 어플 이용법이 궁금하니? </h2>
                                    <p>24시간 대기중</p>
                                </div>
                            </a>

                        </div>
                    </div>
                </div><!-- 나의운동 영역 끝. -->

                <!-- 두번째 탭 : 출석체크 시작 -->
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

<%--                    <div class="dividar pt-1 mb-3 padding-20"></div>--%>

                    <!-- Start. 운동 완료 별사탕 -->
                    <section class="npBalabce_section padding-0 pb-0">
                        <img src="/assets/img/candy/eventbanner.png"
                             style="width: 100%; height: 150px; padding-right: 0px; padding-left: 0px">
                        <div class="content_balance bg-white"
                             style="padding-bottom: 0px">
                            <div class="txt">
                                <h6 class="color-secondary" style="font-weight: bold;">6월 운동 출석체크<br/><span style="font-size: 13px; font-weight: bold; color: blueviolet;">카메라를 열어 우측 QR코드를 찍어주세요</span></h6>
                                <h7 id="candyCount" class="color-black"></h7>
                            </div>
                            <div>
                                <button id="qrCodeContainer" onclick="openModal()"
                                        style="width: 65px; height: 65px;
                                        background-color: white;
                                        border-radius: 5px; border-color: #9f9f9f; border: #9f9f9f 1px;">
                                    <img src="/assets/img/qr/qr.jpg" style="width: 60px; height: 60px">
                                </button>
                            </div>
                        </div>
                        <br><hr style="margin-top: 0px">
                        <div class="content_balance bg-white" id="candy_list"
                             style="padding-top: 0px;">
                            <div class="image_list">
                                <img src="/assets/img/candy/star_default_01.png" id="day01" class="candy" alt="candy">
                                <img src="/assets/img/candy/star_default_02.png" id="day02" class="candy" alt="candy">
                                <img src="/assets/img/candy/star_default_03.png" id="day03" class="candy" alt="candy">
                                <img src="/assets/img/candy/star_default_04.png" id="day04" class="candy" alt="candy">
                                <img src="/assets/img/candy/star_default_05.png" id="day05" class="candy" alt="candy">
                            </div>
                            <div class="image_list">
                                <img src="/assets/img/candy/star_default_06.png" id="day06" class="candy" alt="candy">
                                <img src="/assets/img/candy/star_default_07.png" id="day07" class="candy" alt="candy">
                                <img src="/assets/img/candy/star_default_08.png" id="day08" class="candy" alt="candy">
                                <img src="/assets/img/candy/star_default_09.png" id="day09" class="candy" alt="candy">
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

                </div>
            </div>
        </section>



                    <!-- 조인리스트 넣는 공간 끝 -->

                </div> <!-- 개설한 조인 끝. -->

            </div>
        </section>

        <%--탭 종료--%>




        <!-- Modal -->
        <div class="modal defaultModal modalCentered change__address fade" id="mdllAdd_Address" tabindex="-1"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                        <div class="itemProduct_sm">
                            <h1 class="size-18 weight-600 color-secondary m-0" id="tdate">QR 인증</h1>
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="tio-clear"></i>
                        </button>
                    </div>
                    <div style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
                        <div>
                            <p>오늘도 고생하셨어요! 오늘의 운동 완료를 인증해주세요. </p>
                        </div>
                        <div id="qrcode_scanner_container">
                            <img id="qrcode_img" style="display:none" onload="this.style.display='block'">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:otherwise>
</c:choose>

<c:forEach var="obj" items="${my_ticket_list}" varStatus="status">
    <form id="review-form-${obj.gymNo}">
        <!-- Modal Add Rate -->
        <div class="modal transition-bottom screenFull defaultModal mdlladd__rate fade" id="mdllAddRate-${obj.gymNo}" tabindex="-1"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <input type="hidden" name="gymNo" value="${obj.gymNo}"/>
            <input type="hidden" name="purchaseNo" value="${obj.purchaseNo}"/>
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header padding-l-20 padding-r-20">
                        <div class="itemProduct_sm">
                            <div class="media">
                                <div class="imgProd">
                                    <img src="/assets/img/candy/star_active.png" alt="">
                                </div><br>
                                <div class="media-body">
                                    <div class="txt">
                                        <h2>${obj.gymName}</h2>
                                        <p>별점과 후기를 남겨주세요!</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="tio-clear"></i>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="margin-t-20">
                            <div class="emRatingPoint">
                                <input type="radio" name="reviewRate" value="5" id="mdll-rating-5-${status.index}">
                                <label for="mdll-rating-5-${status.index}"></label>
                                <input type="radio" name="reviewRate" value="4" id="mdll-rating-4-${status.index}">
                                <label for="mdll-rating-4-${status.index}"></label>
                                <input type="radio" name="reviewRate" value="3" id="mdll-rating-3-${status.index}">
                                <label for="mdll-rating-3-${status.index}"></label>
                                <input type="radio" name="reviewRate" value="2" id="mdll-rating-2-${status.index}">
                                <label for="mdll-rating-2-${status.index}"></label>
                                <input type="radio" name="reviewRate" value="1" id="mdll-rating-1-${status.index}">
                                <label class="mdll-rating-1" for="mdll-rating-1-${status.index}"></label>
                            </div>
                        </div>
                        <div style="margin-top: 35px;">
                            <div class="form-group">
                                <textarea rows="2" class="form-control number__letters" id="reviewContents"
                                          placeholder="다른 헬쓱이들을 위해 후기를 남겨주세요"></textarea>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" id="review_register_btn"
                                class="btn w-100 bg-primary m-0 color-white h-52 d-flex align-items-center rounded-10 justify-content-center">
                            등록
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</c:forEach>

<script>
    $(document).ready(function () {
        getCompleted();

        document.getElementById("chatbot").addEventListener("click", function () {
            window.location.href = "/mypage/gptchatbot";
        });

        document.getElementById("chatbotclova").addEventListener("click", function () {
            window.location.href = "/mypage/chatbot";
        });

        document.getElementById('loginplzIcon').addEventListener('click', function () {
            window.location.href = '/cust/login';
        });

    });

    document.addEventListener('DOMContentLoaded', function() {
        // 이벤트 위임 사용
        document.addEventListener('click', function(event) {
            if (event.target && event.target.id === 'review_register_btn') {
                console.log("눌렸다!");

                var selectedRates = $(event.target).closest('form').find('input[name="reviewRate"]:checked').map(function() {
                    return $(this).val();
                }).get();

                var reviewContents = $(event.target).closest('form').find('#reviewContents').val();
                var gymNo = $(event.target).closest('form').find('[name="gymNo"]').val();
                var purchaseNo = $(event.target).closest('form').find('[name="purchaseNo"]').val();

                console.log("reviewContents: " + reviewContents);
                console.log("gymNo: " + gymNo);
                console.log("purchaseNo: " + purchaseNo);

                // AJAX 요청 보내기
                $.ajax({
                    url    : '/review/add',
                    method : 'POST',
                    data   : {
                        reviewRate: selectedRates,
                        reviewContents: reviewContents,
                        gymNo         : gymNo,
                        purchaseNo    : purchaseNo
                    },
                    success: function (response) {
                        if (response === "success") {
                            $('#mdllAddRate-' + gymNo).modal('hide'); // 모달을 감추는 코드 추가
                            alert('리뷰가 등록되었습니다.');
                        }
                    },
                    error  : function () {
                        alert('오류가 발생했습니다.');
                    }
                });
            }
        });
    });

    // 모달창 열기
    function openModal() {
        $('#mdllAdd_Address').modal('show');
        generateQRCode();

        // 3초 후에 모달 창 닫기
        setTimeout(function () {
            $('#mdllAdd_Address').modal('hide');
        }, 3000);
    }

    // 모달 창이 닫힌 후에 호출되는 함수
    $('#mdllAdd_Address').on('hidden.bs.modal', function () {
        // 모달 창이 닫힌 후에 AJAX 요청을 수행하여 데이터베이스 호출
        getCompleted();
    });


    // QR 코드를 생성하고 표시하는 함수
    function generateQRCode() {
        var custNo = "${logincust.custNo}"; // 나만의 세션 ID를 여기에 입력하세요

        var url = "/services/qrcode/text2qrcode.do";
        var text = "오늘도 수고했어요. 오운완 인증 완료!";
        var size = "200";

        var imgObj = document.getElementById("qrcode_img");

        if (text && size > 0 && size < 500) {
            text = encodeURIComponent(text);
            url += "?width=" + size + "&height=" + size + "&text=" + text;

            imgObj.src = url;

        }
    }

    // // QR 코드 스캔 이벤트 처리
    // function handleQRCodeScan(result) {
    // // 스캔 결과 처리 코드 작성
    // console.log("QR 코드 스캔 결과:", result);
    //
    // // 서버로 스캔 결과 전송
    // $.ajax({
    // url: '/mypage/modifyCompleted',
    // type: 'POST',
    // data: { scanResult: result }, // 스캔 결과를 서버로 전송하는 데이터 예시
    // success: function(response) {
    // console.log("mySchedule 수정 요청 성공");
    // // 모달 창을 닫는 코드 작성
    // $('#mdllAdd_Address').modal('hide');
    // },
    // error: function(error) {
    // console.log("mySchedule 수정 요청 실패");
    // }
    // });
    // }
    //
    // // QR 코드 스캐너 초기화
    // var html5QrcodeScanner = new Html5QrcodeScanner(
    // "qrcode_scanner_container", { fps: 10, qrbox: 250 });
    // html5QrcodeScanner.render(handleQRCodeScan);


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
                candyCountElement.text("내가 모은 프로틴 사탕 : " + uniqueImageIds.length + "개 / 30개");
                console.log("별사탕 갯수" + uniqueImageIds.length);

            },
            error   : function (error) {
                console.log("==== 실패 ====" + error);
            }
        });
    }

</script>

<!-- jquery -->
<script src="assets/js/jquery-3.6.0.js"></script>
<!-- popper.min.js 1.16.1 -->
<script src="assets/js/popper.min.js"></script>
<!-- bootstrap.js v4.6.0 -->
<script src="assets/js/bootstrap.min.js"></script>

<!-- Owl Carousel v2.3.4 -->
<script src="assets/js/vendor/owl.carousel.min.js"></script>
<!-- Swiper 6.4.11 -->
<script src="assets/js/vendor/swiper-bundle.min.js"></script>
<!-- sharer 0.4.0 -->
<script src="assets/js/vendor/sharer.js"></script>
<!-- short-and-sweet v1.0.2 - Accessible character counter for input elements -->
<script src="assets/js/vendor/short-and-sweet.min.js"></script>
<!-- jquery knob -->
<script src="assets/js/vendor/jquery.knob.min.js"></script>
<!-- indicator tab -->
<script src="assets/js/indicator-tab.js"></script>
<!-- main.js -->
<script src="assets/js/main.js" defer></script>
<!-- PWA app service registration and works js -->
<script src="assets/js/pwa-services.js"></script>



<!-- Start 헬쓱이 지피티 -->
<%--                    <section class="npBalabce_section padding-20 pb-0 d-flex align-items-center">--%>
<%--                        <div class="txt d-flex align-items-center">--%>
<%--                            <img src="/assets/img/candy/chatbot.png" class="d-inline animated-bounce" id="chatbot"--%>
<%--                                 alt="chatbot"--%>
<%--                                 style="width: 50px; height: 50px;">--%>
<%--                        </div>--%>
<%--                        <div class="text-left" style="margin-left: 20px">--%>
<%--                            <h6 class="color-secondary">안녕, ${logincust.custName}님! <br> 나는 헬쓱 지피티야!</h6>--%>
<%--                            <span class="color-snow h7">나에게는 <br> 무엇이든 물어봐도 좋아!</span>--%>
<%--                        </div>--%>
<%--                        <div class="action" style="margin-left: auto;">--%>
<%--                            <button href="/" class="btn" style="background-color: #815cdf; color: white; font-size: 13px;">--%>
<%--                                로봇사양변경--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                    </section>--%>
<!-- End 헬쓱이 지피티 -->