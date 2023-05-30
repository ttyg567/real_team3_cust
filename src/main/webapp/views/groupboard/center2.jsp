<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .groupboard_map{
        width: 80%;
        height: 50%;
        border: #5d6072 solid 1px;
    }
</style>
<!-- header 구간  -->
<jsp:include page="/views/header.jsp" />
<!-- Start input_SaerchDefault -->
<section class="padding-t-70 change_colorSearch">
    <div class="title_welcome">
                        <span class="color-secondary size-16 weight-500"><!-- 입력 예 ${logincust} -->
                            성동구
                             <i class="tio-chevron_down -arrwo"></i>
                        </span>
        <p class="size-13 weight-400 color-text mb-0" style="font-size: 5px"><!-- 입력 예 ${logincust.custname} -->
            인보님 관심지역에 개설된 조인을 보여드렸어요
        </p>
    </div>

</section>
<!-- End. input_SaerchDefault -->

<!-- Start emCategories__learning -->
<section class="emCategories__learning padding-t-20">
    <!-- 운동 카테고리 아이콘 시작 -->
    <div class="owl-carousel owl-theme owlCategories_learning">
        <!-- 헬스 -->
        <div class="item">
            <a href="/groupboard_workout" class="box__ele music-color">
                <div class="icon">
                    <img src="/assets/img/icon/working-hours.svg" alt="">
                </div>
                <div class="txt">
                    <h2>헬스</h2>
                </div>
            </a>
        </div>
        <!-- PT -->
        <div class="item">
            <a href="/groupboard_personaltraining" class="box__ele design-color">
                <div class="icon">
                    <img src="/assets/img/icon/pantone.svg" alt="">
                </div>
                <div class="txt">
                    <h2>PT</h2>
                </div>
            </a>
        </div>
        <!-- 크로스핏 -->
        <div class="item">
            <a href="/groupboard_crossfit" class="box__ele lifestyle-color">
                <div class="icon">
                    <img src="/assets/img/icon/brainstorm.svg" alt="">
                </div>
                <div class="txt">
                    <h2>크로스핏</h2>
                </div>
            </a>
        </div>
        <!-- 요가 -->
        <div class="item">
            <a href="/groupboard_yoga" class="box__ele health-color">
                <div class="icon">
                    <img src="/assets/img/icon/music.svg" alt="">
                </div>
                <div class="txt">
                    <h2>요가</h2>
                </div>
            </a>
        </div>
        <!-- 필라테스 -->
        <div class="item">
            <a href="/groupboard_pilates" class="box__ele marketing-color">
                <div class="icon">
                    <img src="/assets/img/icon/twitter.svg" alt="">
                </div>
                <div class="txt">
                    <h2>필라테스</h2>
                </div>
            </a>
        </div>
        <!-- 골프 -->
        <div class="item">
            <a href="/groupboard_golf" class="box__ele music-color">
                <div class="icon">
                    <img src="/assets/img/icon/elbow.svg" alt="">
                </div>
                <div class="txt">
                    <h2>골프</h2>
                </div>
            </a>
        </div>
        <!-- 수영 -->
        <div class="item">
            <a href="/groupboard_swimming" class="box__ele commerce-color">
                <div class="icon">
                    <img src="/assets/img/icon/add-to-cart.svg" alt="">
                </div>
                <div class="txt">
                    <h2>수영</h2>
                </div>
            </a>
        </div>

    </div><!-- 운동 카테고리(7개) 아이콘 끝 -->
</section>
<!-- End. emCategories__learning -->

<!-- Start em_swiper_products -->
<section class="em_swiper_products emCoureses__grid margin-b-20">
    <!-- em_title_swiper -->
    <div class="em_title_swiper">
        <div class="txt">
            <h5>성동구 조인</h5><!-- 입력 예 ${logincust} -->
            <p>가장 최근에 만들어진 조인이에요</p>
        </div>
        <div class="item_link">
            <a href="page-courses-learning.html">더보기</a>
        </div>
    </div>
    <div class="em_bodyCarousel padding-t-20">
        <div class="owl-carousel owl-theme owlThemeCorses">
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid"><!-- 이미지 클릭하면 모달로 조인 상세보기 페이지 보여주기 -->
                    <div  class="card" data-toggle="modal"
                         data-target="#mdllJobDetails">
                        <div class="cover_card">
                            <img src="/assets/img/group2.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 :요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>1일 전</span>
                            </div>
                            <h5 class="card-title">
                                그동안 필테만 쭉 해오다가, 첫 크로스핏 도전해여! 같이할 여성분 괌><
                            </h5>
                            <p class="card-text">
                                7.31 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>진님이 3명을 기다리는 중</span>
                            </div>

                        </div>
                        </div>
                </div>
            </div>
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group3.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>5일 전</span>
                            </div>
                            <h5 class="card-title">
                                같이 레슨받구 롼딩 나갈 골린이 구해요!
                            </h5>
                            <p class="card-text">
                                8.30 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>지예님이 3명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group4.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>7일 전</span>
                            </div>
                            <h5 class="card-title">
                                모든 것은 명상으로부터 시작됩니다.. 1개월 이벤트권 요가멤버 구해요..
                            </h5>
                            <p class="card-text">
                                6.15 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>성영님이 2명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group5.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>10일 전</span>
                            </div>
                            <h5 class="card-title">
                                포기하지 않는 운동! 만들어봐요!! 평생운동할 분 찾습니다.
                            </h5>
                            <p class="card-text">
                                6.15 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>기현님이 5명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group6.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>한달 전</span>
                            </div>
                            <h5 class="card-title">
                                성수문화센터 새내기 수영할 회원 모집하는데 같이 합시다! 모닝미라클 도전
                            </h5>
                            <p class="card-text">
                                6.30 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>인보님이 2명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End. em_swiper_products -->



<!-- Start em_swiper_products -->
<section class="em_swiper_products emCoureses__grid pt-1 margin-b-20">
    <!-- em_title_swiper -->
    <div class="em_title_swiper">
        <div class="txt">
            <h5>나와 선호운동이 비슷한 사람들 조인</h5>
            <p>필라테스를 선호하는 회원들이 만든 조인이에요</p>
        </div>
        <div class="item_link">
            <a href="page-courses-learning.html">더보기</a>
        </div>
    </div>
    <div class="em_bodyCarousel padding-t-20">
        <div class="owl-carousel owl-theme owlThemeCorses">
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group1.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>4분 전</span>
                            </div>
                            <h5 class="card-title">
                                성수필라테스 2:1수업 관심 있으신분 같이해요~
                            </h5>
                            <p class="card-text">
                                6.30 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>인보님이 1명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group6.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>한달 전</span>
                            </div>
                            <h5 class="card-title">
                                성수문화센터 새내기 수영할 회원 모집하는데 같이 합시다! 모닝미라클 도전
                            </h5>
                            <p class="card-text">
                                6.30 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>인보님이 2명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group1.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>4분 전</span>
                            </div>
                            <h5 class="card-title">
                                성수필라테스 2:1수업 관심 있으신분 같이해요~
                            </h5>
                            <p class="card-text">
                                6.30 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>인보님이 1명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group2.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>1일 전</span>
                            </div>
                            <h5 class="card-title">
                                그동안 필테만 쭉 해오다가, 첫 크로스핏 도전해여! 같이할 여성분 괌><
                            </h5>
                            <p class="card-text">
                                7.31 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>진님이 3명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <!-- 조인들 -->
            <div class="item">
                <div class="em_itemCourse_grid">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="cover_card">
                            <img src="/assets/img/group1.jpg" class="card-img-top" alt="img">
                        </div>
                        <!-- 조인 : 요약내용 보기 -->
                        <div class="card-body">
                            <div class="head_card">
                                <span>4분 전</span>
                            </div>
                            <h5 class="card-title">
                                성수필라테스 2:1수업 관심 있으신분 같이해요~
                            </h5>
                            <p class="card-text">
                                6.30 모집마감
                            </p>
                            <div class="card_user">
                                <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                     xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                     viewBox="0 0 16 16">
                                    <g id="Profile" transform="translate(2.667 1.333)">
                                        <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                        <path id="Path_33945"
                                              d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                              transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                              stroke-linecap="round" stroke-linejoin="round"
                                              stroke-miterlimit="10" stroke-width="1.2" />
                                    </g>
                                </svg>
                                <span>인보님이 1명을 기다리는 중</span>
                            </div>

                        </div>
                    </a>
                </div>
            </div>



        </div>
    </div>

</section>
<!-- 조인만들기 버튼 -->
<div style="position: fixed; z-index:20;  bottom: 100px; right: 50px">
    <a href="/groupboard/makejoin"><img src="/img/chat.png" style="width:50px; height: 50px;" title="조인만들기" ></a>
</div>
<!-- End. em_swiper_products -->


<!-- Modal로 보여지는 창 : mdllJobDetails -->
<div class="modal transition-bottom screenFull defaultModal mdllJobs_details fade" id="mdllJobDetails"
     tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">

        <div class="modal-content">
            <div class="modal-header padding-l-20 padding-r-50">
                <%-- 이미지 넣을 맨 상단 구간 --%>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="tio-clear"></i>
                    </button>
                <%-- 이미지 넣을 맨 상단 구간 --%>
<%--                <div class="absolute right-0 padding-r-20">--%>
                    <%-- 창닫기 아이콘  --%>

<%--                </div>--%>
            <%-- 창닫기 아이콘  --%>
            </div>
            <div class="modal-body p-0"><%-- 제목~내용 구간  --%>
                <div id="wrapper">

                    <div id="content">
                                <!-- Start emPage__detailsBlog -->
                                <section class="emPage__detailsBlog" style="margin-top: -100px">
                                    <div class="emheader_cover">
                                        <div class="cover">
                                            <img src="/assets/img/group2.jpg" alt="" style="height:40%" >
                                        </div>
                                        <div class="title">
                                            <div class="em__header">
                                            <h3 class="">그동안 필테만 쭉 해오다가, 첫 크로스핏 도전해여!<br>같이할 여성분 괌니다><</h3>
                                            <div class="size-18 weight-600 color-primary">
                                                <span class="color-text"></span> 모집중
                                            </div>
                                            </div>

                                            <div class="item__auther emBlock__border">
                                                <div class="item_person">
                                                    <img src="/assets/img/group2.jpg" alt="">
                                                    <h2>지니</h2>
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
                                                                          stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                                                    <path id="Stroke_3" data-name="Stroke 3" d="M2.119,3.99,0,2.726V0"
                                                                          transform="translate(5.781 3.053)" fill="none" stroke="#cbcdd8"
                                                                          stroke-linecap="round" stroke-linejoin="round"
                                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                                </g>
                                                            </svg>
                                                        </div>
                                                        <span>2일 전</span>
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
                                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                                    <path id="Stroke_3" data-name="Stroke 3"
                                                                          d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                                                          fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                          stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                                                </g>
                                                            </svg>
                                                        </div>
                                                        <span>295</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%-- 조인모집 작성내용 적히는 공간  --%>
                                    <div class="embody__content">
                                        <div class="title">
                                            <h6>센터 내용</h6>
                                        </div>
                                        <ul class="item_list">
                                            <li>성수 필라테스 | 서울 성수동</li>
                                            <li>2023.6.30(토) 마감</li>
                                            <li>모집 인원 1명 / 신청 인원 0명</li>
                                        </ul><hr>
                                        <div class="title">
                                            <h6>이용권 내용</h6>
                                        </div>
                                        <ul class="item_list">
                                            <li>플라잉요가 2:1(20회)</li>
                                            <li>560,000원 -> 498,000원</li>
                                        </ul><hr>
                                        <div class="title">
                                            <h6>위치</h6>
                                            <div id="groupboard_map">
                                                지도나타낼 위치
                                            </div>
                                        </div><hr>
                                        <p>
                                           필라테스만 2년 넘게 했는데~ 늘 슬림핏 유지하다가 한번 머슬핏 도전 해보려고 합니닷!</p>
                                        <p>
                                            혼자 크로스핏 상담가려니 조금 무섭(?)기두 해서ㅠㅠ 같이갈 여성분 계시면 넘넘 좋게써여</p>
                                        <p>
                                           저처럼 주저하고 계신 분이 있다면 꼬옥! 저랑 조인해윰~~ 심져 여성회원은 조인해서 등록하면 이용권이 20% 할인이래윰!</p>

                                    </div>
                                </section>


                    <%--  모달 맨 밑 푸터   --%>
                    <div class="modal-footer">
                        <div class="em__footer">
                            <div class="em_footerinner">
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
                                                          stroke-miterlimit="10" stroke-width="1.5"></path>
                                                    <path id="Path_33964" d="M0,0A2.345,2.345,0,0,1,1.681,2.018"
                                                          transform="translate(11.613 3.378)" fill="none" stroke="#292e34"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" opacity="0.4"></path>
                                                </g>
                                            </svg>
                                        </div>
                                        <span class="textCart color-secondary d-inline-block" >Save</span>
                                    </button>

                                    <a href="/groupboard/success_apply" style="margin-left: 50px"
                                       class="btn btn__icon bg-primary color-white min-w-175 text-left justify-content-between">
                                        조인 신청하기
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

                </div><%-- 제목~내용 구간 끝. --%>

                </div>

    </div>

</div>
</div>
</div>
