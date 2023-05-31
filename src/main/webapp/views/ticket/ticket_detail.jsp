<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>
<body>
<style>
    .item_img_top {
        width: 100px;
        height: 200px;
    }

    .item_img_detail {
        width: 50px;
        height: 200px;
    }
</style>

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
            <div class="emheader_cover">
                <c:forEach var="centerImg" items="${gdetail_center_img}">
                    <img class="item_img_top" src="/uimg/${centerImg}" alt="${centerImg}">
                </c:forEach>
                <div class="title">
                    <h1 class="head_art">${gdetail.gymName}</h1>
                    <div class="item__auther emBlock__border">

                        <div class="item_person">
                            <img src="assets/img/persons/0654.jpg" alt="">

                            <h2></h2>
                        </div>
                        <div class="sideRight">
                            <div class="time">
                                <div class="icon">
                                    <svg id="Iconly_Curved_Time_Square" data-name="Iconly/Curved/Time Square"
                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                         viewBox="0 0 15 15">
                                        <g id="Time_Square" data-name="Time Square"
                                           transform="translate(1.719 1.719)">
                                            <path id="Stroke_1" data-name="Stroke 1"
                                                  d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                  stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"/>
                                            <path id="Stroke_3" data-name="Stroke 3" d="M2.119,3.99,0,2.726V0"
                                                  transform="translate(5.781 3.053)" fill="none" stroke="#cbcdd8"
                                                  stroke-linecap="round" stroke-linejoin="round"
                                                  stroke-miterlimit="10" stroke-width="1.5"/>
                                        </g>
                                    </svg>
                                </div>
                                <span>2 hour ago</span>
                            </div>
                            <div class="view margin-l-10">
                                <div class="icon">
                                    <svg id="Iconly_Curved_Show" data-name="Iconly/Curved/Show"
                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                         viewBox="0 0 15 15">
                                        <g id="Show" transform="translate(1.719 2.969)">
                                            <path id="Stroke_1" data-name="Stroke 1"
                                                  d="M3.952,1.976A1.976,1.976,0,1,1,1.976,0,1.977,1.977,0,0,1,3.952,1.976Z"
                                                  transform="translate(3.806 2.588)" fill="none" stroke="#cbcdd8"
                                                  stroke-linecap="round" stroke-linejoin="round"
                                                  stroke-miterlimit="10" stroke-width="1.5"/>
                                            <path id="Stroke_3" data-name="Stroke 3"
                                                  d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                  stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"/>
                                        </g>
                                    </svg>
                                </div>
                                <span>295 views</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="embody__content">
                <!-- 타이틀 -->
                <p>
                    ${gdetail.gymTitle}
                </p>
                <!-- 내용 -->
                <p>
                    ${gdetail.gymContents}
                </p>
                <c:forEach var="detailImg" items="${gdetail_detail_img}">
                <div class="cover">
                        <img class="item_img_detail" src="/uimg/${detailImg}" alt="${detailImg}">
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
                <p>
                    Vitae elementum curabitur vitae nunc sed velit dignissim sodales ut.
                </p>
                <h6>Pellentesque dictum</h6>
                <p>
                    Interdum varius sit amet mattis vulputate enim nulla. Enim neque volutpat ac tincidunt vitae.
                    Eget gravida cum sociis natoque penatibus et.
                </p>
            </div>
        </section>
        <!-- End. emPage__detailsBlog -->

        <!-- Comments -->
        <section class="pt_simpleDetails emBlock__border rounded-0 mt-0 padding-b-30">
            <div class="em_bodyinner">
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
                            <div class="item em_item">
                                <a href="#" class="link_service text-decoration-none">
                                    <!--헬스장 정보 등록하고, 해당 정보 가져오는걸로 -->
                                    <div class="cover_img">
                                        <img src="/assets/img/gym/gymticket.jpg" alt="">
                                    </div>
                                    <div class="txt">
                                        <span class="type">이용권 이름</span>
                                        <div class="details">
                                            <h2>이용권이름</h2>
                                            <p>이용권 가격</p>
                                        </div>
                                        <button type="button" class="btn btn_buy">
                                            가격 불러오기
                                        </button>
                                    </div>
                                </a>
                            </div>
                            <div class="item em_item">
                                <a href="#" class="link_service text-decoration-none">
                                    <div class="cover_img">
                                        <img src="/assets/img/gym/gymticket.jpg" alt="">
                                    </div>
                                    <div class="txt">
                                        <span class="type">이용권 이름</span>
                                        <div class="details">
                                            <h2>이용권이름</h2>
                                            <p>이용권 가격</p>
                                        </div>
                                        <button type="button" class="btn btn_buy">
                                            가격 불러오기
                                        </button>
                                    </div>
                                </a>
                            </div>
                            <div class="item em_item">
                                <a href="#" class="link_service text-decoration-none">
                                    <div class="cover_img">
                                        <img src="/assets/img/gym/gymticket.jpg" alt="">
                                    </div>
                                    <div class="txt">
                                        <span class="type">이용권 이름</span>
                                        <div class="details">
                                            <h2 style="color: #0a0f27">이용권가격</h2>
                                            <p>이용권 가격</p>
                                        </div>
                                        <button type="button" class="btn btn_buy" style="color: #0a0f27">
                                            가격 불러오기
                                        </button>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </section>

                    <div style="position: fixed; z-index:9999;  bottom: 200px; right: 50px">
                        <a href="/chat"><img src="/img/chat.png" style="width:50px; height: 50px;" title="1:1문의"></a>
                    </div>

                    <div class="padding-t-100">

                        <div class="em_footerinner"
                             style="margin-bottom: 50px; position: fixed; z-index:9999; bottom: 65px">
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example"
                                    style="width: 90%">
                                <option selected>구매하실 이용권을 선택해주세요,</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>

                        </div>
                        </a>
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
                                <a href="/pay"
                                   class="btn btn__icon bg-primary color-white min-w-175 text-left justify-content-between">
                                    결제하기
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


            </div>


            <!-- End. comments -->

            <!-- Start emPage__blog -->
            <section class="padding-t-30 padding-b-30 bg-snow" style="margin-bottom: 100px">
                <div class="padding-l-20 padding-r-20">
                    <h2 class="size-18 weight-500 m-0 color-secondary">Related Posts</h2>
                </div>
                <ul class="itemList__news">
                    <li class="items-nav">
                        <a href="page-news-details.html" class="btn">
                            <div class="media align-items-center">
                                <img class="img_news" src="assets/img/0asd897.jpg" alt="">
                                <div class="media-body">
                                    <div class="txt">
                                        <h2></h2>
                                        <div class="info_bottom">
                                            <div class="time">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Time_Square"
                                                         data-name="Iconly/Curved/Time Square"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Time_Square" data-name="Time Square"
                                                           transform="translate(1.719 1.719)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M2.119,3.99,0,2.726V0"
                                                                  transform="translate(5.781 3.053)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                        </g>
                                                    </svg>
                                                </div>
                                                <span>2 hour ago</span>
                                            </div>
                                            <div class="view">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Show" data-name="Iconly/Curved/Show"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Show" transform="translate(1.719 2.969)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M3.952,1.976A1.976,1.976,0,1,1,1.976,0,1.977,1.977,0,0,1,3.952,1.976Z"
                                                                  transform="translate(3.806 2.588)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                        </g>
                                                    </svg>
                                                </div>
                                                <span>295 views</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="items-nav">
                        <a href="page-news-details.html" class="btn">
                            <div class="media align-items-center">
                                <img class="img_news" src="assets/img/00d9sa8f.jpg" alt="">
                                <div class="media-body">
                                    <div class="txt">
                                        <h2>Mariners Add Catcher Jacob Nottingham to Active Roster</h2>
                                        <div class="info_bottom">
                                            <div class="time">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Time_Square"
                                                         data-name="Iconly/Curved/Time Square"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Time_Square" data-name="Time Square"
                                                           transform="translate(1.719 1.719)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M2.119,3.99,0,2.726V0"
                                                                  transform="translate(5.781 3.053)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                        </g>
                                                    </svg>
                                                </div>
                                                <span>3 hour ago</span>
                                            </div>
                                            <div class="view">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Show" data-name="Iconly/Curved/Show"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Show" transform="translate(1.719 2.969)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M3.952,1.976A1.976,1.976,0,1,1,1.976,0,1.977,1.977,0,0,1,3.952,1.976Z"
                                                                  transform="translate(3.806 2.588)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                        </g>
                                                    </svg>
                                                </div>
                                                <span>336 views</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="items-nav">
                        <a href="page-news-details.html" class="btn">
                            <div class="media align-items-center">
                                <img class="img_news" src="assets/img/xxwef0654.jpg" alt="">
                                <div class="media-body">
                                    <div class="txt">
                                        <h2>7 Habits I Avoid to Become Highly Productive</h2>
                                        <div class="info_bottom">
                                            <div class="time">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Time_Square"
                                                         data-name="Iconly/Curved/Time Square"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Time_Square" data-name="Time Square"
                                                           transform="translate(1.719 1.719)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M2.119,3.99,0,2.726V0"
                                                                  transform="translate(5.781 3.053)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                        </g>
                                                    </svg>
                                                </div>
                                                <span>6 hour ago</span>
                                            </div>
                                            <div class="view">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Show" data-name="Iconly/Curved/Show"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Show" transform="translate(1.719 2.969)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M3.952,1.976A1.976,1.976,0,1,1,1.976,0,1.977,1.977,0,0,1,3.952,1.976Z"
                                                                  transform="translate(3.806 2.588)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                        </g>
                                                    </svg>
                                                </div>
                                                <span>536 views</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </section>
            <!-- End. emPage__blog -->


    </div>


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

</div>

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
<!-- main.js -->
<script src="assets/js/main.js" defer></script>
<!-- PWA app service registration and works js -->
<script src="assets/js/pwa-services.js"></script>
</body>
</html>
