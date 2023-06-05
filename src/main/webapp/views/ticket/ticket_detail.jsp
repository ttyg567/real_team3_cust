    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <script>

//        $(function(){
//            goPay.init();
//        });
//
//        let goPay = {
//            init: function(){
//                $('#ticket_pay_btn').on('click', function(){
//
//
//                    let selectedOption = $('#ticket_pay_option').val();
//
//                    // ticketoption 값을 hidden input 요소로 추가
//                    $('<input>').attr({
//                        type: 'hidden',
//                        name: 'ticketoption',
//                        value: selectedOption
//                    }).appendTo('#ticket_pay_form');
//
//                    $('#ticket_pay_form').attr({
//                        action: '/pay',
//                        method: 'post'
//                    });
//                    $('#ticket_pay_form').submit();
//                });
//            }
//        };
$(function(){
    goPay.init();
});

let goPay = {
    init: function(){
        $('#ticket_pay_btn').on('click', function(){
            alert("click");

            let selectedOption = $('#ticket_pay_option').val();

            $.ajax({
                url: '/pay',
                type: 'post',
                data: { ticketoption: selectedOption },
                success: function(response){
                    // 요청이 성공한 경우에 수행할 동작
                    console.log(response);
                },
                error: function(xhr, status, error){
                    // 요청이 실패한 경우에 수행할 동작
                    console.log(error);
                }
            });
        });
    }
};
        let slideIndex = 0;
        let slides = $('.slide');
        let slideInterval;

        showSlide(slideIndex);
        startSlideInterval(); // 자동 슬라이드

        function changeSlide(n) {
            showSlide(slideIndex += n);
        }

        function showSlide(n) {
            if (n >= slides.length) {
                slideIndex = 0;
            } else if (n < 0) {
                slideIndex = slides.length - 1;
            }

            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slides[slideIndex].style.display = "block";

            // 사진 슬라이드에 현재 슬라이드와 전체 슬라이드 수를  표시
            $('#current-slide').text(slideIndex + 1);
            $('#total-slides').text(slides.length);
        }

        function startSlideInterval() {
            slideInterval = setInterval(() => {
                changeSlide(1);
            }, 2000); // 2초마다 슬라이드 전환
        }

        function stopSlideInterval() {
            clearInterval(slideInterval);
        }


        // 마우스가 슬라이드 영역 위로 올라갔을 때 슬라이드 간격을 멈추도록 이벤트 처리
        document.querySelector(".slideshow-container").addEventListener("mouseenter", stopSlideInterval);

        // 마우스가 슬라이드 영역을 벗어났을 때 슬라이드 간격을 다시 시작하도록 이벤트 처리
        document.querySelector(".slideshow-container").addEventListener("mouseleave", startSlideInterval);


    </script>
    <div id="wrapper">
        <div id="content">

            <!-- Start main_haeder -->
            <header class="main_haeder header-sticky multi_item">
                <div class="em_side_right">
                    <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/ticket/all">
                        <i class="tio-chevron_left size-24 color-text"></i>
                        <span class="color-text size-14">Back</span>
                    </a>
                </div>
                <div class="title_page">
                        <span class="page_name">
                            <!-- Something here.. -->
                        </span>
                </div>
                <div class="em_side_right">
                    <button class="btn rounded-circle share-button bg-transparent" data-toggle="modal"
                            data-target="#mdllButtons_share">
                        <i class="ri-share-forward-box-line"></i>
                    </button>
                </div>
            </header>
            <!-- End.main_haeder -->

            <!-- Start emPage__detailsBlog -->
            <section class="emPage__detailsBlog">
                <!-- 센터 이미지 -->
                <div class="slideshow-container">
                    <c:forEach var="centerImg" items="${gdetail_center_img}">
                        <div class="slide">
                            <img class="item_img_top" src="/uimg/${centerImg}" alt="${centerImg}">
                        </div>
                    </c:forEach>
                    <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
                    <a class="next" onclick="changeSlide(1)">&#10095;</a>
                    <div class="slide-counter">
                        <span id="current-slide"></span> / <span id="total-slides"></span>
                    </div>
                </div>
                <div class="title">
                    <h1 class="head_art" style="margin-left: 3vw">${gdetail.gymName}</h1>
                    <div class="item__auther emBlock__border">

                        <div class="item_person">
                            <img src="assets/img/persons/0654.jpg" alt="">

                            <h2></h2>
                        </div>
                        <!--나중에 이자리에 좋아요 수 보여주기 -->
<%--                        <div class="sideRight">--%>
<%--                            <div class="time">--%>
<%--                                <div class="icon">--%>
<%--                                    <svg id="Iconly_Curved_Time_Square" data-name="Iconly/Curved/Time Square"--%>
<%--                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"--%>
<%--                                         viewBox="0 0 15 15">--%>
<%--                                        <g id="Time_Square" data-name="Time Square"--%>
<%--                                           transform="translate(1.719 1.719)">--%>
<%--                                            <path id="Stroke_1" data-name="Stroke 1"--%>
<%--                                                  d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"--%>
<%--                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"--%>
<%--                                                  stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"/>--%>
<%--                                            <path id="Stroke_3" data-name="Stroke 3" d="M2.119,3.99,0,2.726V0"--%>
<%--                                                  transform="translate(5.781 3.053)" fill="none" stroke="#cbcdd8"--%>
<%--                                                  stroke-linecap="round" stroke-linejoin="round"--%>
<%--                                                  stroke-miterlimit="10" stroke-width="1.5"/>--%>
<%--                                        </g>--%>
<%--                                    </svg>--%>
<%--                                </div>--%>
<%--                                <span>2 hour ago</span>--%>
<%--                            </div>--%>
<%--                            <div class="view margin-l-10">--%>
<%--                                <div class="icon">--%>
<%--                                    <svg id="Iconly_Curved_Show" data-name="Iconly/Curved/Show"--%>
<%--                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"--%>
<%--                                         viewBox="0 0 15 15">--%>
<%--                                        <g id="Show" transform="translate(1.719 2.969)">--%>
<%--                                            <path id="Stroke_1" data-name="Stroke 1"--%>
<%--                                                  d="M3.952,1.976A1.976,1.976,0,1,1,1.976,0,1.977,1.977,0,0,1,3.952,1.976Z"--%>
<%--                                                  transform="translate(3.806 2.588)" fill="none" stroke="#cbcdd8"--%>
<%--                                                  stroke-linecap="round" stroke-linejoin="round"--%>
<%--                                                  stroke-miterlimit="10" stroke-width="1.5"/>--%>
<%--                                            <path id="Stroke_3" data-name="Stroke 3"--%>
<%--                                                  d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"--%>
<%--                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"--%>
<%--                                                  stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"/>--%>
<%--                                        </g>--%>
<%--                                    </svg>--%>
<%--                                </div>--%>
<%--                                <span>295 views</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>
                </div>
            </section>
         </div>
    </div>

        <div class="embody__content">
            <!-- 타이틀 -->
            <p style="display: flex;
                     justify-content: center;
                       align-items: center;margin-top: 10vh; font-size: 190%">
                ${gdetail.gymTitle}
            </p>
            <!-- 내용 -->
            <p style="display: flex;
                     justify-content: center;
                       align-items: center; font-size: 170% ;  margin: 10%">
                ${gdetail.gymContents}
            </p>
            <c:forEach var="detailImg" items="${gdetail_detail_img}">
                <div class="cover" style="margin-top: 10vh">
                    <img class="item_img_detail" src="/uimg/${detailImg}" alt="${detailImg}"
                         style="width: 90%; margin-left: 5vw;">
                    <span class="item_category"></span>
                </div>
            </c:forEach>
            <div class="row">
                <div class="col-6">
                    <img src="assets/img/xxwef0654.jpg" alt="">
                </div>
                <div class="col-6">
                    <img src="assets/img/0asd897.jpg" alt="">
                </div>
            </div>

        </div>
        </section>
        <!-- End. emPage__detailsBlog -->

        <!-- Comments -->
        <section class="pt_simpleDetails emBlock__border rounded-0 mt-0 padding-b-30">
            <form class="em_bodyinner">
                <div class="emCommentCusomers">
                    <div class="title"></div>
                    <!-- item -->
                    <section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">
                        <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
                            <div>
                                <h3 class="size-18 weight-500 color-secondary m-0">이용권</h3>
                                <p class="size-13 color-text m-0 pt-1"></p>
                            </div>
                        </div>
                        <!-- Swiper -->
                        <div class="owl-carousel owl-theme owlServiceProvider em_owl_swipe">
                            <c:forEach var="ticket" items="${tickets}">
                                <div class="item em_item">
                                    <div class="link_service text-decoration-none">
                                        <div class="cover_img">
                                            <img src="/assets/img/gym/gymticket.jpg" alt="">
                                        </div>
                                        <div class="txt">
                                        <span class="type">
                                          <c:choose>
                                              <c:when test="${ticket.ticketType == 1}">
                                                  <p>기간권</p>
                                              </c:when>
                                              <c:when test="${ticket.ticketType == 2}">
                                                  <p>횟수권</p>
                                              </c:when>
                                          </c:choose>
                                        </span>
                                            <div class="details">
                                                <h2 style="color: purple">

                                                        ${ticket.ticketCost}원</h2>
                                                <p style="color: purple">
                                                <c:choose>
                                                    <c:when test="${ticket.ticketType == 1}">
                                                      <h5>${ticket.ticketMonth}개월 </h5>
                                                </c:when>
                                                <c:when test="${ticket.ticketType == 2}">
                                                    <h5>${ticket.ticketNumber}회</h5>
                                                </c:when>
                                                </c:choose>

                                                </p>
                                            </div>
                                            <button type="button" class="btn btn_buy">
                                                가격 불러오기
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                    </section>

                    <div style="position: fixed; z-index:9999;  bottom: 200px; right: 50px">
                        <a href="/chat"><img src="/img/chat.png" style="width:50px; height: 50px;" title="1:1문의"></a>
                    </div>

                    <div class="padding-t-100">
                        <form name="ticket_pay_form" id="ticket_pay_form">
                            <select name="ticket" id="ticket_pay_option">
                                <option selected>구매하실 이용권을 선택해주세요.</option>
                                <c:forEach var="ticket" items="${tickets}">
                                    <c:choose>
                                        <c:when test="${ticket.ticketType == '1'}">
                                            <option name="ticket_pay_option" class="ticket_pay_option" value="기간권-${ticket.ticketMonth}-${ticket.ticketCost}-${ticket.gymNo}">
                                                <p>기간권</p> ${ticket.ticketMonth}개월  ${ticket.ticketCost}원
                                            </option>
                                        </c:when>
                                        <c:when test="${ticket.ticketType == '2'}">
                                            <option name="ticket_pay_option" class="ticket_pay_option" value="횟수권-${ticket.ticketNumber}-${ticket.ticketCost}-${ticket.gymNo}">
                                                <p>횟수권</p> ${ticket.ticketNumber}회 ${ticket.ticketCost}원
                                            </option>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                            </select>

                        </form>
                        </div>

                    </div>




                    <div class="padding-t-100">

                        <div class="em_footerinner" style="margin-bottom: 50px">
                            <div class="emfo_button __withIcon">

                                <button type="button" class="btn btn_addCart" id="itemSave">
                                    <div class="ico icon_current">
                                        <svg id="Iconly_Two-tone_Heart" data-name="Iconly/Two-tone/Heart"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                             viewBox="0 0 20 20">
                                            <g id="Heart" transform="translate(1.667 2.5)">
                                                <path id="Path_33961"
                                                      d="M8.124,14.878a30.408,30.408,0,0,1-5.282-3.907A9.935,9.935,0,0,1,.327,7.163,5.229,5.229,0,0,1,3.571.24,5.469,5.469,0,0,1,8.33,1h0A5.477,5.477,0,0,1,13.089.24,5.232,5.232,0,0,1,16.34,7.163a9.935,9.935,0,0,1-2.514,3.808,30.408,30.408,0,0,1-5.282,3.907L8.338,15Z"
                                                      transform="translate(0 0)" fill="none" stroke="#292e34"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5"/>
                                                <path id="Path_33964" d="M0,0A2.345,2.345,0,0,1,1.681,2.018"
                                                      transform="translate(11.613 3.378)" fill="none" stroke="#292e34"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" opacity="0.4"/>
                                            </g>
                                        </svg>
                                    </div>
                                    <span class="textCart color-secondary d-inline-block">Save</span>
                                </button>
                                <button type="button" id="ticket_pay_btn" class="btn btn__icon bg-primary color-white min-w-175 text-left justify-content-between">
                                    결제하기
                                </button>
                                    <div class="icon">
                                        <svg id="Iconly_Light_Arrow_-_Right_Square"
                                             data-name="Iconly/Light/Arrow - Right Square"
                                             xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                             viewBox="0 0 24 24">
                                            <g id="Arrow_-_Right_Square" data-name="Arrow - Right Square"
                                               transform="translate(2 22) rotate(-90)">
                                                <path id="Stroke_1" data-name="Stroke 1"
                                                      d="M4.916,18.5h8.669c3.02,0,4.915-2.139,4.915-5.166V5.166C18.5,2.139,16.615,0,13.585,0H4.916C1.886,0,0,2.139,0,5.166v8.168C0,16.361,1.886,18.5,4.916,18.5Z"
                                                      transform="translate(0.75 0.75)" fill="none" stroke="#200e32"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5" opacity="0.4"></path>
                                                <path id="Stroke_3" data-name="Stroke 3" d="M.5,8.172V0"
                                                      transform="translate(9.5 5.914)" fill="none" stroke="#200e32"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5"></path>
                                                <path id="Stroke_5" data-name="Stroke 5" d="M7.5,0,3.748,3.764,0,0"
                                                      transform="translate(6.252 10.322)" fill="none" stroke="#200e32"
                                                      stroke-linecap="round" stroke-linejoin="round"
                                                      stroke-miterlimit="10" stroke-width="1.5"></path>
                                            </g>
                                        </svg>

                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

                <!-- End. comments -->


            </div>
        </section>

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






