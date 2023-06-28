<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>

    /**/
    .header-sticky {
        position: sticky;
        top: 0;
        z-index: 100;
    }
    /* 상단 헤더 아이콘 버튼 */
    .btn {
        display: inline-block;
    }
    .btn svg {
        /*display: block;*/
        pointer-events: none; /* SVG 영역은 클릭 이벤트를 가로채지 않도록 함 */
    }
    .btn .hover_ico {
        display: none; /* 커서 올리기 전까진, 변경될 아이콘은 미리 보여주지 않음 */
    }
    .btn:hover .ico {
        display: none; /* 커서를 올렸을 때 보여줌 */
    }
    .btn:hover .hover_ico {
        display: block; /* 커서를 올렸을 때 기본 이미지 숨김 */
    }
    <%-- 운동 카테고리 아이콘들 : 텍스트 글씨 진하게 --%>
    .em__actions span{
        font-weight: bolder;
    }
    .em__actions .icon{
        border-radius: 30px;
    }
    <%-- 운동 종목 : 아이콘 사진 크기 조정 --%>
    .icon img{
        width: 30px;
        height: 30px;
    }

    #map img{
        border-radius: 15px;
        width: 100%;
        height: 100%;
        border: #9f9f9f 1px solid;
    }

    .join-button {
        position: fixed;
        z-index: 20;
        bottom: 100px;
        right: 50px;
    }

    .join-button img {
        width: 40px;
        height: 40px;
        border-radius: 30px;
        opacity: 0.5; /* 초기에 불투명도 설정 */
        filter: alpha(opacity=50); /* IE8 이하 버전을 위한 설정 */
        transition: opacity 0.3s ease; /* 불투명도 변화에 대한 트랜지션 설정 */
        -webkit-transition: opacity 0.3s ease; /* Safari 및 Chrome을 위한 설정 */
    }

    .join-button img:hover {
        opacity: 1; /* 커서를 올릴 때 불투명도 제거 */
        filter: alpha(opacity=100); /* IE8 이하 버전을 위한 설정 */
    }

    .embody__content svg {
        margin-right: 15px;
    }

    /* 각 조인 이미지들 */
    .join_image_bg {
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        width: 100%;
        height: 100%;
    }
    /* 조인가능한 이용권 할인율 박스 색 변경 */
    #join_discount{
        background-color: blueviolet;
    }
    /* 흰색 배경의 상단 테두리만 둥글게 */
    .em__bkOperationsWallet {
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
    }
    .em__actions a {
        width: 14%;
        margin-right: 0px; /* 오른쪽 여백을 5px로 설정 */
    }
    /* 운동종목 아이콘의 테두리 둥글게 */
    #sportsicon{
        border-radius: 30px;
    }
</style>

<!-- header 구간  -->
<header class="main_haeder header-sticky multi_item header-white" >
    <div class="em_menu_sidebar">
        <button type="button" class="btn btn_menuSidebar item-show" data-toggle="modal"
                data-target="#mdllSidebarMenu-background">
            <i class="ri-menu-fill"></i>
        </button>
    </div>
    <div class="title_page">
                    <span class="page_name">
                        조인
                    </span>
    </div>
    <div class="em_side_right" >
        <%--      </a>--%>
        <%--  나의조인으로 이동하기 아이콘 : 로그인 고객은 조회 가능, 비로그인 고객은 로그인 유도 창 안내  --%>
        <c:choose>
            <c:when test="${logincust == null}">
                <a href="/cust/login"  class="btn justify-content-center">
                    <svg class="ico color-secondary" id="Iconly_Two-tone_Bookmark" data-name="Iconly/Two-tone/Bookmark"
                         xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <g id="Bookmark" transform="translate(3.5 2)">
                            <path id="Path_33968"
                                  d="M7.368,15.854,1.437,19.1a.989.989,0,0,1-1.318-.394h0A1.043,1.043,0,0,1,0,18.243V3.844C0,1.1,1.876,0,4.577,0H10.92C13.538,0,15.5,1.025,15.5,3.661V18.243a.979.979,0,0,1-.979.979,1.08,1.08,0,0,1-.476-.119L8.073,15.854A.741.741,0,0,0,7.368,15.854Z"
                                  transform="translate(0.796 0.778)" fill="none" stroke="#200e32"
                                  stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                  stroke-width="1.5" />
                            <path id="Line_209" d="M0,.458H7.3" transform="translate(4.87 6.865)" fill="none"
                                  stroke="#200e32" stroke-linecap="round" stroke-linejoin="round"
                                  stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />
                        </g>
                    </svg>
                        <%--  커서 올리면 교체될 나의조인 아이콘   --%>
                    <svg class="hover_ico color-primary" id="Iconly_Two-tone_Bookmark" data-name="Iconly/Two-tone/Bookmark"
                         xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <g id="Bookmark" transform="translate(3.5 2)">
                            <path id="Path_33968"
                                  d="M7.368,15.854,1.437,19.1a.989.989,0,0,1-1.318-.394h0A1.043,1.043,0,0,1,0,18.243V3.844C0,1.1,1.876,0,4.577,0H10.92C13.538,0,15.5,1.025,15.5,3.661V18.243a.979.979,0,0,1-.979.979,1.08,1.08,0,0,1-.476-.119L8.073,15.854A.741.741,0,0,0,7.368,15.854Z"
                                  transform="translate(0.796 0.778)" fill="none" stroke="#200e32"
                                  stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                  stroke-width="1.5" />
                            <path id="Line_209" d="M0,.458H7.3" transform="translate(4.87 6.865)" fill="none"
                                  stroke="#200e32" stroke-linecap="round" stroke-linejoin="round"
                                  stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />
                        </g>
                    </svg>
                </a>
            </c:when>
            <c:otherwise>
                <a href="/groupboard/my_applyjoin?custNo=${logincust.custNo}"  class="btn justify-content-center relative color_svg">
                    <svg class="ico color-secondary" id="Iconly_Two-tone_Bookmark" data-name="Iconly/Two-tone/Bookmark"
                         xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <g id="Bookmark" transform="translate(3.5 2)">
                            <path id="Path_33968"
                                  d="M7.368,15.854,1.437,19.1a.989.989,0,0,1-1.318-.394h0A1.043,1.043,0,0,1,0,18.243V3.844C0,1.1,1.876,0,4.577,0H10.92C13.538,0,15.5,1.025,15.5,3.661V18.243a.979.979,0,0,1-.979.979,1.08,1.08,0,0,1-.476-.119L8.073,15.854A.741.741,0,0,0,7.368,15.854Z"
                                  transform="translate(0.796 0.778)" fill="none" stroke="#200e32"
                                  stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                  stroke-width="1.5" />
                            <path id="Line_209" d="M0,.458H7.3" transform="translate(4.87 6.865)" fill="none"
                                  stroke="#200e32" stroke-linecap="round" stroke-linejoin="round"
                                  stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />
                        </g>
                    </svg>
                        <%--  커서 올리면 교체될 나의조인 아이콘   --%>
                    <svg class="hover_ico color-primary" id="Iconly_Two-tone_Bookmark" data-name="Iconly/Two-tone/Bookmark"
                         xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <g id="Bookmark" transform="translate(3.5 2)">
                            <path id="Path_33968"
                                  d="M7.368,15.854,1.437,19.1a.989.989,0,0,1-1.318-.394h0A1.043,1.043,0,0,1,0,18.243V3.844C0,1.1,1.876,0,4.577,0H10.92C13.538,0,15.5,1.025,15.5,3.661V18.243a.979.979,0,0,1-.979.979,1.08,1.08,0,0,1-.476-.119L8.073,15.854A.741.741,0,0,0,7.368,15.854Z"
                                  transform="translate(0.796 0.778)" fill="none" stroke="#200e32"
                                  stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                  stroke-width="1.5" />
                            <path id="Line_209" d="M0,.458H7.3" transform="translate(4.87 6.865)" fill="none"
                                  stroke="#200e32" stroke-linecap="round" stroke-linejoin="round"
                                  stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />
                        </g>
                    </svg>
                </a>
            </c:otherwise>
        </c:choose>

        <%--  나의 알림 아이콘  --%>
        <a href="/notification" class="btn justify-content-center relative color_svg">
            <svg id="Iconly_Two-tone_Notification" data-name="Iconly/Two-tone/Notification"
                 xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <g id="Notification" transform="translate(3.5 2)">
                    <path id="Path_425"
                          d="M0,11.787v-.219A3.6,3.6,0,0,1,.6,9.75,4.87,4.87,0,0,0,1.8,7.436c0-.666,0-1.342.058-2.009C2.155,2.218,5.327,0,8.461,0h.078c3.134,0,6.306,2.218,6.617,5.427.058.666,0,1.342.049,2.009A4.955,4.955,0,0,0,16.4,9.759a3.506,3.506,0,0,1,.6,1.809v.209a3.566,3.566,0,0,1-.844,2.39A4.505,4.505,0,0,1,13.3,15.538a45.078,45.078,0,0,1-9.615,0A4.554,4.554,0,0,1,.835,14.167,3.6,3.6,0,0,1,0,11.787Z"
                          transform="translate(0 0)" fill="none" stroke="#200e32" stroke-linecap="round"
                          stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5"></path>
                    <path id="Path_421"
                          d="M0,0A3.061,3.061,0,0,0,2.037,1.127,3.088,3.088,0,0,0,4.288.5,2.886,2.886,0,0,0,4.812,0"
                          transform="translate(6.055 18.852)" fill="none" stroke="#200e32"
                          stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                          stroke-width="1.5" opacity="0.4"></path>
                </g>
            </svg>
            <svg class="hover_ico color-primary" id="Iconly_Two-tone_Notification" data-name="Iconly/Two-tone/Notification"
                 xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
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

    </div><!-- 우측상단 아이콘 모으는 영역 끝. -->

</header>
<!-- End.main_haeder -->
<section class="banner__wallet" style="height: 100%;">
    <div class="emhead d-flex align-items-center justify-content-between">
        <div class="item__total">
            <span>헬쓱회원이 조인으로 할인받은 금액</span>
            <h2>1,765,000 <span>원</span></h2>
        </div>
        <div class="side__right">
            <button type="button" class="btn btn_balance" data-toggle="modal"
                    data-target="#mdllAddBalance">
                <a href="/groupboard/groupboard_list"
                style="color: white">+ 조인 하러가기</a></button>
        </div>
    </div>
</section>
<br>

<!-- 운동 카테고리 -->
<main class="main_Wallet_index">
<section class="em__bkOperationsWallet npSwiper__ads bg-white np_Package_ac padding-t-0 mt-0 padding-b-0" style="padding-left: 0px; padding-right: 0px; padding-bottom: 0px;">
<%--<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-0 mt-0 padding-b-0">--%>
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20"
        >
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">운동 종목별</h3>
        </div>
    </div>

    <section class="np__bkOperationsService padding-0"  style="width: 100%; padding-bottom: 0;
      overflow-x: auto; padding-left: 5px; background-color : white; border: none;
      scrollbar-width: none; -ms-overflow-style: none;">
        <%--<section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">--%>
        <div class="em__actions" style="display: inline-flex; width: max-content; margin-top: 5px; ">
            <a href="/groupboard/workout" class="btn" style="padding-right: 5px;">
                <div id="sportsicon" class="icon bg-blue bg-opacity-10" style="border-radius: 30px">
                    <img src="/assets/img/cate2.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>헬스</span>
            </a>
            <a href="/groupboard/personaltraining" class="btn" style="padding-right: 5px;">
                <div  id="sportsicon"  class="icon bg-green bg-opacity-10">
                    <img src="/assets/img/cate1.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>PT</span>
            </a>
            <a href="/groupboard/crossfit" class="btn" style="padding-right: 5px;">
                <div  id="sportsicon"  class="icon bg-yellow bg-opacity-10">
                    <img src="/assets/img/cate3.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>크로스핏</span>
            </a>
            <a href="/groupboard/yoga" class="btn" style="padding-right: 5px;">
                <div  id="sportsicon"  class="icon bg-red bg-opacity-10">
                    <img src="/assets/img/cate4.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>요가</span>
            </a>
            <a href="/groupboard/pilates" class="btn" style="padding-right: 5px;">
                <div  id="sportsicon"  class="icon bg-yellow bg-opacity-10">
                    <img src="/assets/img/cate5.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>필라테스</span>
            </a>
            <a href="/groupboard/golf" class="btn" style="padding-right: 5px;">
                <div  id="sportsicon"  class="icon bg-green bg-opacity-10">
                    <img src="/assets/img/cate6.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>골프</span>
            </a>
            <a href="/groupboard/swimming" class="btn" style="padding-right: 5px;">
                <div  id="sportsicon"  class="icon bg-blue bg-opacity-10">
                    <img src="/assets/img/cate7.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>수영</span>
            </a>
        </div>
        <%--</section>--%>
    </section><!-- End. banner_swiper -->
<%--</section>--%>
</section>
<hr style="height: 20px; color: #f7edfa; border: none; border-top: 10px solid; margin-bottom: 0px">
<!-- 운동 카테고리 끝 -->

<%--관심지역에 오픈된 조인 : 슬라이드 --%>
<!-- Start banner_swiper -->
<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-0 mt-0 padding-b-0">
    <div>
        <p class="size-14 color-black m-0 pt-1" style="font-weight: bold; padding-left: 10px; padding-bottom: 5px;">${logincust.custName}님 맞춤 추천 조인🌟</p>
    </div>
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div style="width: 230px">
            <span class="size-16 weight-100 color-secondary m-0">나의 관심지역<a class="nav-link" href="/cust/information" style="display: inline-block; width: 50%; margin: 0; padding-right: 0px; padding-left: 8px">${logincust.custSigungu}<i class="tio-chevron_down -arrwo"></i></a></span>
<%--            <p class="size-13 color-text m-0 pt-1">거리가 가까울 수록 포기와는 거리가 멀어져요!</p>--%>
        </div>
        <a href="/groupboard/groupboard_list"
           class="d-block color-text size-12 m-0">더보기</a>
    </div>

    <!-- 1.조인 관심지역 리스트 슬라이드. Swiper -->
    <!-- 조인 항목 나열 구간 -->
    <div class="em_swiper_products margin-b-20">
        <div class="em_body_products">
            <div class="owl-carousel owl-theme em-owlRight">
                <c:forEach var="obj" items="${alljoin}">
                    <div class="item em_item_product">
                        <div class="em_head" id="join_em_head1"><!-- 선택 시 센터 상세페이지로 이동 -->
                            <a data-toggle="modal"
                               data-target="#mdllJobDetails${obj.groupboardNo}" class="image_product text-decoration-none">
                                <div class="join_image_bg" style="background-image: url('/assets/img/${obj.groupboardImgname}');"></div>
                            </a>
                            <c:set var="joinDiscount" value="${obj.ticketDiscount + 10}" />
                            <div id="join_discount" class="item_discount"><fmt:formatNumber value="${joinDiscount}"/>%</div>
                        </div>
                        <div class="title_product">
                            <div class="color-black">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-geo-alt color-text" viewBox="0 0 16 16">
                                    <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                                    <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                </svg>
                                <span class="card-text color-black">${obj.gymName}</span>
                                <div class="main_joincontent" style="text-align: left">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-ticket-perforated color-text" viewBox="0 0 16 16">
                                        <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                        <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                    </svg>
                                    <span>
                                    ${obj.ticketName}
                                    <span class="item_price"><span class="price_old" style="font-size: 9px">
                                          <fmt:formatNumber value="${obj.ticketCost}" type="number" pattern="#,##0 원" />
                                    </span></span>
                                    </span>
                                </div>
                            </div>

                            <div class="card_user color-text">
                                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                                </svg>
                                    <%-- 모집인원 - 신청된 인원 = 신청가능 인원   --%>
                                <c:set var="canapplymember" value="${canapplymember = (obj.expectMember - obj.applicationMember) }" />
                                <span style="font-size: smaller; color: #5d6072; font-weight: bold "><fmt:formatNumber value="${canapplymember}" />명 조인 시 </span>
                                <span style="color: blueviolet; font-weight: bold">
                                                     <fmt:formatNumber value="${obj.ticketJoinPrice}" type="number" pattern="#,##0 원" />
                                    </span>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </div>

</section><!-- End. banner_swiper -->

<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-0 mt-0 padding-b-0">
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div style="width: 230px">
            <span class="size-16 weight-100 color-secondary m-0">나의 선호운동
                <a class="nav-link" href="/cust/information" style="display: inline-block; width: 50%; margin: 0; padding-right: 0px; padding-left: 8px">
<%--                ${logincust.sportsType}--%>
                    <c:choose>
                        <c:when test="${logincust.sportsType.trim() == '1'}">
                            <span>헬스</span>
                        </c:when>
                        <c:when test="${logincust.sportsType.trim() == '2'}">
                            PT
                        </c:when>
                        <c:when test="${logincust.sportsType.trim() == '3'}">
                            크로스핏
                        </c:when>
                        <c:when test="${logincust.sportsType.trim() == '4'}">
                            요가
                        </c:when>
                        <c:when test="${logincust.sportsType.trim() == '5'}">
                            필라테스
                        </c:when>
                        <c:when test="${logincust.sportsType.trim() == '6'}">
                            골프
                        </c:when>
                        <c:otherwise>
                            <span>수영</span>
                        </c:otherwise>
                    </c:choose>
                    <i class="tio-chevron_down -arrwo"></i>
                </a>
            </span>
            <%--            <p class="size-13 color-text m-0 pt-1">거리가 가까울 수록 포기와는 거리가 멀어져요!</p>--%>
        </div>
        <a href="/groupboard/groupboard_list" class="d-block color-text size-12 m-0">더보기</a>
    </div>
    <%--2. 선호운동 비슷한 조인 리스트 나열--%>
    <!-- 조인 항목 나열 구간 -->
    <div class="em_swiper_products margin-b-20">
        <div class="em_body_products">
            <div class="owl-carousel owl-theme em-owlRight">
                <c:forEach var="obj" items="${mysportstype}">
                    <div class="item em_item_product">
                        <div class="em_head" id="join_em_head1"><!-- 선택 시 센터 상세페이지로 이동 -->
                            <a data-toggle="modal"
                               data-target="#mdllJobDetails${obj.groupboardNo}" class="image_product text-decoration-none">
                                <div class="join_image_bg" style="background-image: url('/assets/img/${obj.groupboardImgname}');"></div>
                            </a>
                            <c:set var="joinDiscount" value="${obj.ticketDiscount + 10}" />
                            <div id="join_discount" class="item_discount"><fmt:formatNumber value="${joinDiscount}"/>%</div>
                        </div>
                        <div class="title_product">
                            <div class="color-black">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-geo-alt color-text" viewBox="0 0 16 16">
                                    <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                                    <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                </svg>
                                <span class="card-text color-black">${obj.gymName}</span>
                                <div class="main_joincontent" style="text-align: left">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-ticket-perforated color-text" viewBox="0 0 16 16">
                                        <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                        <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                    </svg>
                                    <span>
                                    ${obj.ticketName}
                                    <span class="item_price"><span class="price_old" style="font-size: 9px">
                                          <fmt:formatNumber value="${obj.ticketCost}" type="number" pattern="#,##0 원" />
                                    </span></span>
                                    </span>
                                </div>
                            </div>

                            <div class="card_user color-text">
                                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                                </svg>
                                    <%-- 모집인원 - 신청된 인원 = 신청가능 인원   --%>
                                <c:set var="canapplymember" value="${canapplymember = (obj.expectMember - obj.applicationMember) }" />
                                <span style="font-size: smaller; color: #5d6072; font-weight: bold "><fmt:formatNumber value="${canapplymember}" />명 조인 시 </span>
                                <span style="color: blueviolet; font-weight: bold">
                                                     <fmt:formatNumber value="${obj.ticketJoinPrice}" type="number" pattern="#,##0 원" />
                                    </span>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </div>
</section>
</main>
<!-- End. banner_swiper -->

<!-- 조인만들기 버튼 : 로그인 고객은 만들기 가능, 비로그인 고객은 로그인 유도 창 안내 -->
<c:choose>
    <c:when test="${logincust == null}">
        <div class="join-button" style="position: fixed; z-index:20;  bottom: 80px; right: 20px">
            <a href="/cust/login"><img src="/img/join2.png" style="width:50px; height: 50px; drop-shadow(5px 5px 5px #000); " title="조인만들기" ></a>
        </div>
    </c:when>
    <c:otherwise>
        <div class="join-button" style="position: fixed; z-index:20;  bottom: 80px; right: 20px">
            <a href="/groupboard/makejoin"><img src="/img/join2.png" style="width:50px; height: 50px; drop-shadow(20px 20px 30px #000); " title="조인만들기" ></a>
        </div>
    </c:otherwise>
</c:choose>

