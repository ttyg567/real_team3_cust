<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://resource.everyfit.co.kr/EF/res/css/style.css?202302221" />

<style>
    dt {
        display: block;
    }
    :root {
        --swiper-theme-color: #007aff;
    }

    element.style {
    }
    .shop-info > div + div {
        border-top: 8px solid #f5f5f5;
    }
    html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
        margin: 0;
        padding: 0;
        border: 0;
        background: transparent;
    }
    user agent stylesheet
    div {
        display: block;
    }
    body, th, td, input, select, textarea, button {
        font-family: 'Noto Sans Korean', 'Apple SD Gothic', "맑은고딕", malgun gothic, "돋움",Dotum,Helvetica,sans-serif;
        font-size: 14px;
        line-height: 1.5;
        color: #333;
    }
    body {
        -webkit-text-size-adjust: none;
        background: #fff;
    }
    :root {
        --swiper-navigation-size: 44px;
    }
    .slideshow-container {
        position: relative;
        width: 100%;
        height: 300px;
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

    .itemSave{
        border-color: white;
        width: 30%;
        border-radius: 10px;
        background-color: white;
    }
    /*#ticket_pay_btn:hover {*/
    /*    background-color: #f0f0f0;*/
    /*    color: #292e34;*/
    /*}*/
    .button {
        display: inline-block;
        border-radius: 4px;
        background-color: rebeccapurple;
        border: none;
        color: #FFFFFF;
        text-align: center;
        font-size: 18px;
        padding: 20px;
        width: 150px;
        height: 30px;
        transition: all 0.5s;
        cursor: pointer;
        margin: 5px;
    }

    .button span {
        cursor: pointer;
        display: inline-block;
        position: relative;
        transition: 0.5s;
    }

    .button span:after {
        content: '\00bb';
        position: absolute;
        opacity: 0;
        top: 0;
        right: -20px;
        transition: 0.5s;
    }

    .button:hover span {
        padding-right: 25px;
    }

    .button:hover span:after {
        opacity: 1;
        right: 0;
    }


    /* Solid border */
    hr.solid {
        border-top: 1px solid lightgrey;
</style>

<div id="wrapper" style="height:55%">
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
                            ${gdetail.gymName}
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

                        <img class="item_img_top" src="/assets/img/gymImg/${centerImg}" alt="${centerImg}" style="height: 100%">
                    </div>
                </c:forEach>
                <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
                <a class="next" onclick="changeSlide(1)">&#10095;</a>
                <div class="slide-counter">
                    <span id="current-slide"></span> / <span id="total-slides"></span>
                </div>
            </div>
            <div class="title">

                <div class="item__auther emBlock__border">

                    <div class="item_person">

                        <div class="icon" style="margin-left: 2vw;margin-top: 3vh; margin-bottom: 3vh";>
                            <svg id="Iconly_Two-tone_Home" data-name="Iconly/Two-tone/Home"
                                 xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24"
                             >
                                <g id="Home" transform="translate(2.5 2)">
                                    <path id="Home-2" data-name="Home"
                                          d="M6.657,18.771V15.7a1.426,1.426,0,0,1,1.424-1.419h2.886A1.426,1.426,0,0,1,12.4,15.7h0v3.076A1.225,1.225,0,0,0,13.6,20h1.924A3.456,3.456,0,0,0,19,16.562h0V7.838a2.439,2.439,0,0,0-.962-1.9L11.458.685a3.18,3.18,0,0,0-3.944,0L.962,5.943A2.42,2.42,0,0,0,0,7.847v8.714A3.456,3.456,0,0,0,3.473,20H5.4a1.235,1.235,0,0,0,1.241-1.229h0"
                                          fill="none" stroke="#293343" stroke-linecap="round"
                                          stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                </g>
                            </svg>
                            <span style="margin-left: 2vw; color: grey" >${gdetail.gymName}</span>
                            <br>
                        <svg id="Iconly_Two-tone_Location" data-name="Iconly/Two-tone/Location"
                             xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 15 15">
                            <g id="Location" transform="translate(3.5 2)" >
                                <path id="Path_33958"
                                      d="M0,7.652A7.678,7.678,0,1,1,15.357,7.7v.087a11.338,11.338,0,0,1-3.478,7.3,20.183,20.183,0,0,1-3.591,2.957.93.93,0,0,1-1.217,0,19.817,19.817,0,0,1-5.052-4.73A9.826,9.826,0,0,1,0,7.678Z"
                                      transform="translate(0.739 0.739)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                                <circle id="Ellipse_740" cx="2.461" cy="2.461" r="2.461"
                                        transform="translate(5.957 6.078)" fill="none" stroke="#200e32"
                                        stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                        stroke-width="1.5" opacity="0.4" />
                            </g>
                        </svg>
                        <span style="margin-left: 2vw; color: grey">${gdetail.gymAddress1}</span>
                        <br>
                            <svg id="Iconly_Two-tone_Calendar" data-name="Iconly/Two-tone/Calendar" xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 18 19.579">
                            <g id="Calendar" transform="translate(3 2)">
                                <path id="Line_200" d="M0,.473H17.824" transform="translate(0.093 6.931)"
                                      fill="none" stroke="#200e32" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"
                                      opacity="0.4" />
                                <path id="Combined_Shape" data-name="Combined Shape"
                                      d="M9.343,4.36h.009Zm-4.438,0h.01Zm-4.446,0H.468ZM9.343.473h.009Zm-4.438,0h.01ZM.459.473H.468Z"
                                      transform="translate(4.099 10.837)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" opacity="0.4" />
                                <path id="Line_207" d="M.463,0V3.291" transform="translate(12.581 0)"
                                      fill="none" stroke="#200e32" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                <path id="Line_208" d="M.463,0V3.291" transform="translate(4.502 0)"
                                      fill="none" stroke="#200e32" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                <path id="Path"
                                      d="M13.238,0H4.771C1.834,0,0,1.636,0,4.643v9.05c0,3.054,1.834,4.728,4.771,4.728h8.458c2.946,0,4.771-1.645,4.771-4.652V4.643C18.009,1.636,16.184,0,13.238,0Z"
                                      transform="translate(0 1.579)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                            </g>
                        </svg>

                        <span style="margin-left: 2vw;color: grey">예약 필수 </span>
                        </div>



                        <h2></h2>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<div class="embody__content"style="margin-top: 18%">
    <!-- 내용 -->

    <c:forEach var="detailImg" items="${gdetail_detail_img}">
        <div class="cover" >
            <img class="item_img_detail" src="/assets/img/gymImg/${detailImg}" alt="${detailImg}"
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

    <div class="emCommentCusomers">
        <div class="title"></div>
        <!-- item -->
        <section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">
            <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
            </div>
        </section>
        <!--이용권-->
        <form name="ticket_pay_form" id="ticket_pay_form"  >
        <div>
            <dl class="list-type-goods01" id="list"><dt>헬쓱 ONLY</dt><dd>
                <div class="goods-component">
                    <a href="javascript:goGoodsDetail(22853, 71075, 6, 04, 'N');">
                        <c:forEach var="ticket" items="${tickets}">
                        <span class="top" id="topId-71075">

                            <span class="tit">
                                    ${ticket.ticketName}
                            </span>
                            <span class="txt">
                                <span>
                                    예약필수
                                </span>


                            </span>
                        </span>
                        <span class="bottom">
                <span class="label">
                </span>
                <span class="price"
                style="margin-right: 3vw; color: purple">
                        ${ticket.ticketCost} 원</span>
                </span>
                            <button type="button" class="itemSave" data-like-type="G" class="btn-like gray x16" value="${ticket.ticketNo}"></button>
                <hr class="solid">
                        </c:forEach>
                </a>
                </div>
<!--이용권 끝-->
        <div style="position: fixed; z-index:9999;  bottom: 200px; right: 50px">
            <a href="/ticket/chat?gymNo=${gdetail.gymNo}"><img src="/img/chat.png" style="width:50px; height: 50px;" title="1:1문의"></a>
        </div>

        <div class="padding-t-100">

                <input type="hidden"  name="gymName" value="${gdetail.gymName}">
                <input type="hidden"  name="gymNo" value="${gdetail.gymNo}">

                <select name="ticket_pay_option" id="ticket_pay_option"
                        style="width: 100%;  position: fixed;  z-index:9999; bottom:120px;  display: inline-block;
                          padding: 10px; font-size: 16px; border-radius: 4px; background-color: #F2EFFB;  border: none; cursor: pointer; outline: none;">
                    <option selected id="unselected" class="unselected">구매하실 이용권을 선택해주세요.</option>
                    <c:forEach var="ticket" items="${tickets}">
                        <c:choose>
                            <c:when test="${ticket.ticketType == '1'}">
                                <option name="ticket_pay_option" class="ticket_pay_option" value="기간권-${ticket.ticketMonth}개월-${ticket.ticketCost}원-${ticket.ticketNo}">
                                    <p>기간권</p> ${ticket.ticketMonth}개월 ${ticket.ticketCost}원
                                </option>
                            </c:when>
                            <c:when test="${ticket.ticketType == '2'}">
                                <option name="ticket_pay_option" class="ticket_pay_option" value="횟수권-${ticket.ticketNumber}회-${ticket.ticketCost}원-${ticket.ticketNo}">
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

                <button type="button" class="itemSave" id="itemSave">
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
                <button type="button" id="ticket_pay_btn"
                        class="button"
                        style="width: 130%; margin-left: 5%; text-align: center; display: flex; justify-content: center; align-items: center;">
                    결제하기
                </button>



            </div>
        </div>
    </div>
    </div>


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


<script>
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

    let ticket_pay_form = {
        init: function () {
            //  btn btn_addCart
            $('#ticket_pay_btn').click(function () {
                ticket_pay_form.send();
            });
            $('#itemSave').click(function () {
                console.log("savetest");
                ticket_pay_form.save();
            });
        },
        send: function () {
            let selectedOption = $('#ticket_pay_option').val();
            if (selectedOption === "unselected")
            {
                alert("구매하실 이용권을 선택해주세요.");
                return;
            }

            $('#ticket_pay_form').attr({
                'action':'/pay',
                'method':'post'
            });
            $('#ticket_pay_form').submit();

        },
        save : function (){
            $('#ticket_pay_form').attr({
                'action':'/like1',
                'method':'post'
            });
            $('#ticket_pay_form').submit();
        }

    };

    $(function (){
        ticket_pay_form.init();
    })

</script>

