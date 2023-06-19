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
            <!-- Start 헬쓱이 지피티 -->
            <section class="npBalabce_section padding-20 pb-0 d-flex align-items-center">
                <div class="txt d-flex align-items-center">
                    <img src="/assets/img/candy/chatbot.png" class="d-inline animated-bounce" id="chatbot" alt="chatbot"
                         style="width: 50px; height: 50px;">
                </div>
                <div class="text-left" style="margin-left: 20px">
                    <h6 class="color-secondary">안녕, ${logincust.custName}님! 나는 헬쓱 지피티야!</h6>
                    <span class="color-snow h7">나에게는 무엇이든 물어봐도 좋아!</span>
                </div>
            </section>
            <!-- End 헬쓱이 지피티 -->
            <br>
            <!-- Start 오늘의 일정 -->
            <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
                <c:choose>
                    <c:when test="${my_reservation_list != '[]'}">
                        <c:forEach var="obj" items="${my_reservation_list}">
                            <section class="npBalabce_section padding-5 pb-0">
                                <div class="content_balance bg-white border border-snow"
                                     style="background-image: linear-gradient(to right, rgba(214, 59, 81, 0.5), rgba(46, 65, 183, 0.5))">
                                    <div class="txt">
                                        <h6 class="color-white">
                                                ${obj.dateCategory}의 운동 일정</h6>
                                        <h6 class="color-secondary">${obj.className}</h6>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor"
                                             class="bi bi-calendar2-check color-snow" viewBox="0 0 16 16">
                                            <path d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
                                            <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
                                        </svg>&nbsp;
                                        <h7 class="color-snow">${obj.classDate}</h7>
                                        <br>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-alarm color-snow" viewBox="0 0 16 16">
                                            <path d="M8.5 5.5a.5.5 0 0 0-1 0v3.362l-1.429 2.38a.5.5 0 1 0 .858.515l1.5-2.5A.5.5 0 0 0 8.5 9V5.5z"/>
                                            <path d="M6.5 0a.5.5 0 0 0 0 1H7v1.07a7.001 7.001 0 0 0-3.273 12.474l-.602.602a.5.5 0 0 0 .707.708l.746-.746A6.97 6.97 0 0 0 8 16a6.97 6.97 0 0 0 3.422-.892l.746.746a.5.5 0 0 0 .707-.708l-.601-.602A7.001 7.001 0 0 0 9 2.07V1h.5a.5.5 0 0 0 0-1h-3zm1.038 3.018a6.093 6.093 0 0 1 .924 0 6 6 0 1 1-.924 0zM0 3.5c0 .753.333 1.429.86 1.887A8.035 8.035 0 0 1 4.387 1.86 2.5 2.5 0 0 0 0 3.5zM13.5 1c-.753 0-1.429.333-1.887.86a8.035 8.035 0 0 1 3.527 3.527A2.5 2.5 0 0 0 13.5 1z"/>
                                        </svg>&nbsp;
                                        <h7 class="color-snow">${obj.classStarttime}~${obj.classEndtime}</h7>
                                    </div>
                                    <div class="action">
                                        <a href="/class/my_reservation" class="btn">
                                            나의 일정 보기
                                        </a>
                                    </div>
                                </div>
                            </section>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <section class="npBalabce_section padding-5 pb-0">
                            <div class="content_balance bg-white border border-snow"
                                 style="background-image: linear-gradient(to right, rgba(214, 59, 81, 0.5), rgba(46, 65, 183, 0.5))">
                                <div class="txt">
                                    <h6 class="color-white">
                                            ${logincust.custName}님의 운동 일정이 당분간 없어요</h6>
                                    <h7 class="color-snow">바로 수업 예약하세요</h7>
                                </div>
                                <div class="action">
                                    <a href="/class/reservation" class="btn">
                                        수업 예약하기
                                    </a>
                                </div>
                            </div>
                        </section>
                    </c:otherwise>
                </c:choose>
            </div>
            <hr>
            <!-- End. 오늘의 일정 -->
            <!-- Start. 운동 완료 별사탕 -->
            <section class="npBalabce_section padding-20 pb-0">
                <div class="content_balance bg-white border border-snow"
                     style="background-image: linear-gradient(to right, #e66176, #5065da)">
                    <div class="txt">
                        <h6 class="color-white">
                            이 달의 운동 사탕</h6>
                        <h6 class="color-secondary">매일매일 건강도 챙기고, 혜택도 챙겨가자!</h6>
                        <h7 class="color-snow">월급날에 운동하면 혜택이 더 빵빵!!</h7>
                        <br>
                        <h7 id="candyCount" class="color-snow"></h7>
                    </div>
                    <div>
                        <button id="qrCodeContainer" onclick="openModal()">
                            <img src="/assets/img/qr/qr.png" style="width: 50px; height: 50px">
                        </button>
                    </div>
                </div>
                <br>
                <div class="content_balance bg-white border border-snow" id="candy_list">
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
            <!-- End. 수업 예약-->

            <!-- Start 나의 이용권 -->
            <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
                <c:choose>
                    <c:when test="${my_ticket_list != '[]'}">
                        <c:forEach var="obj2" items="${my_ticket_list}">
                            <section class="npBalabce_section padding-5 pb-0">
                                <div class="content_balance bg-white border border-snow"
                                     style="background-image: linear-gradient(to right, rgba(214, 59, 81, 0.5), rgba(46, 65, 183, 0.5))">
                                    <div class="txt">
                                        <h6 class="color-white">
                                            나의 이용권</h6>
                                        <h6 class="color-secondary">
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
                                        <h7 class="color-snow">
                                            <c:choose>
                                                <c:when test="${obj2.ticketType == '1'}">
                                                    사용횟수 : ${obj2.usedCnt}회
                                                </c:when>
                                                <c:when test="${obj2.ticketType == '2'}">
                                                    잔여횟수 : ${obj2.remaining}회 / ${obj2.ticketNumber}회
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
                                        <h7 class="color-snow"> 만료일자 : ${obj2.purchaseDate_str}</h7>
                                    </div>
                                    <div class="action">
                                        <a href="/ticket/all" class="btn">
                                            이용권 구매하기
                                        </a>
                                    </div>
                                </div>
                            </section>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <section class="npBalabce_section padding-5 pb-0">
                            <div class="content_balance bg-white border border-snow"
                                 style="background-image: linear-gradient(to right, rgba(214, 59, 81, 0.5), rgba(46, 65, 183, 0.5))">
                                <div class="txt">
                                    <h6 class="color-white">
                                            ${logincust.custName}님의 이용권이 없어요</h6>
                                    <h7 class="color-snow">딱 맞는 운동으로 이용권을 구매하세요</h7>
                                </div>
                                <div class="action">
                                    <a href="/ticket/all" class="btn">
                                        이용권 구매하기
                                    </a>
                                </div>
                            </div>
                        </section>
                    </c:otherwise>
                </c:choose>
            </div>
            <hr>
            <!-- End. 오늘의 일정 -->
        </div>
    </div>
</section>

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

<script>
    $(document).ready(function () {
        getCompleted();

        document.getElementById("chatbot").addEventListener("click", function () {
            window.location.href = "/mypage/gptchatbot";
        });

    });

    // 모달창 열기
    function openModal() {
        $('#mdllAdd_Address').modal('show');
        generateQRCode();

        // 5초 후에 모달 창 닫기
        setTimeout(function () {
            $('#mdllAdd_Address').modal('hide');
        }, 5000);
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
                candyCountElement.text("내가 모은 별사탕: " + uniqueImageIds.length + "개 / 30개");
                console.log("별사탕 갯수" + uniqueImageIds.length);

            },
            error   : function (error) {
                console.log("==== 실패 ====" + error);
            }
        });
    }

</script>

