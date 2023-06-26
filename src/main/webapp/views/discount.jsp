<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    <%-- 투데이/베스트/회원맞춤 너비   --%>
    .nav .nav-item{
        width: 120px;
    }
<%-- 조인 홍보 배너 이미지와 텍스트 규격 변경   --%>
    #joinbanner .text_img {
        position: relative;
        height: 60px;

    }
    #joinbanner.text_img h2 {
        position: absolute;
        bottom: 10px;
        left: 20px;
    }

    #joinbanner.text_img p {
        position: absolute;
        bottom: -10px;
        left: 20px;
    }
    #ringBtn{
        border-radius: 15px;
        border-color: gray;
        background-color: lavender;
        background-color-opacity: 20;
    }
<%-- 할인 중인 이용권의 이미지 : 규격에 꽉차게 함. --%>
    .ticket_image_bg {
        width: 100%; /* 이미지의 가로 크기 */
        height: 100px; /* 이미지의 세로 크기 */
        overflow: hidden; /* 크기를 초과하는 이미지는 숨김 처리 */
    }
    .ticket_image {
        width: 100%; /* 부모 요소에 맞게 이미지 크기 조정 */
        height: 100%; /* 부모 요소에 맞게 이미지 크기 조정 */
        object-fit: cover; /* 이미지 비율 유지하며 부모 요소에 맞게 조정 */
    }
    <%-- 조인 가능한 이용권 이미지 : 규격에 꽉차게 함. --%>
    .join_image_bg {
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        width: 100%;
        height: 100%;
    }

/* 모달창 안에 아이콘 */
.embody__content svg{
    margin-right: 15px;
}
.joincontent{
    margin-bottom: 15px;
}
<%-- 운동 종목 : 텍스트 글씨 진하게 --%>
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

/* 이용권 항목의 이미지 사이즈 조절하기 */
.em_head img{
    border-radius: 8px;
   /*width: 30%;*/
   /* height: 100%;*/
}
  .owl-carousel {
    display: flex;
  }

  .itm.em_item {
    flex: 0 0 100%;
    max-width: 100%;
  }
  .header-sticky {
    position: sticky;
    top: 0;
    z-index: 100;
  }
  /* 상단 헤더 아이콘 */
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
  /* 조인가능한 이용권 할인율 박스 색 변경 */
  #join_discount{
      background-color: blueviolet;
  }
</style>

<div id="wrapper">
<!--별도의 mainheader 구간  -->
    <!-- Start main_haeder -->
    <header class="main_haeder header-sticky multi_item header-white">
        <div class="em_menu_sidebar">
            <button type="button" class="btn btn_menuSidebar item-show" data-toggle="modal"
                    data-target="#mdllSidebarMenu-background">
                <i class="ri-menu-fill"></i>
            </button>
        </div>
        <div class="title_page">
                    <span class="page_name">
                        헬쓱
                    </span>
        </div>
        <div class="em_side_right">
            <%--  나의 알림 아이콘  --%>
            <a href="/notification" class="btn justify-content-center relative">
                <svg class="ico color-secondary" id="Iconly_Two-tone_Notification" data-name="Iconly/Two-tone/Notification"
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
    <section class="background_header gradient h-100">

        <!-- Start input_SaerchDefault -->
        <div class="padding-t-70 padding-l-20 padding-r-20" id="searchDefault">
            <div class="input_SaerchDefault">
            </div>
        </div>
        <!-- End. input_SaerchDefault -->

        <!-- 홈에서 3개의 댑스(미로그인은 2개만 보임) : Start navListProducts -->
        <div class="padding-l-50 padding-t-10">
            <ul class="nav navListProducts with__lined navWhite">
                <c:choose>
                    <c:when test="${logincust == null}">
                        <li class="nav-item">
                            <a class="nav-link active" href="/">투데이</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/best">베스트</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link " href="/">투데이</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/best">베스트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href=/discount>회원맞춤</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
        <!-- End. navListProducts -->

    </section>
    <!-- End.main_haeder -->

<%--  카테고리 시작  --%>
<br>
<section class="np__bkOperationsService padding-10">
    <%--<section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">--%>
    <div class="em__actions">
        <a href="/ticket/workout" class="btn">
            <div class="icon bg-blue bg-opacity-10">
                <img src="/assets/img/cate2.png" alt="">
                <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
            </div>
            <span>헬스</span>
        </a>
        <a href="/ticket/pt" class="btn">
            <div class="icon bg-green bg-opacity-10">
                <img src="/assets/img/cate1.png" alt="">
                <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
            </div>
            <span>PT</span>
        </a>
        <a href="/ticket/crossfit" class="btn">
            <div class="icon bg-yellow bg-opacity-10">
                <img src="/assets/img/cate3.png" alt="">
                <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
            </div>
            <span>크로스핏</span>
        </a>
        <a href="/ticket/yoga" class="btn">
            <div class="icon bg-red bg-opacity-10">
                <img src="/assets/img/cate4.png" alt="">
                <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
            </div>
            <span>요가</span>
        </a>
        <a href="/ticket/pilates" class="btn">
            <div class="icon bg-yellow bg-opacity-10">
                <img src="/assets/img/cate5.png" alt="">
                <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
            </div>
            <span>필라테스</span>
        </a>
        <a href="/ticket/golf" class="btn">
            <div class="icon bg-green bg-opacity-10">
                <img src="/assets/img/cate6.png" alt="">
                <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
            </div>
            <span>골프</span>
        </a>
        <a href="/ticket/swimming" class="btn">
            <div class="icon bg-blue bg-opacity-10">
                <img src="/assets/img/cate7.png" alt="">
                <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
            </div>
            <span>수영</span>
        </a>
    </div>
    <%--</section>--%>
</section><!-- End. banner_swiper -->
<hr style="height: 30px; color: #f7edfa; border: none; border-top: 10px solid; margin-bottom: 0px;">
<!-- 알림 설정 component-action-sheet.html 로 모달창 활용해보기. -->
<div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
    <div>
        <p class="size-14 color-black m-0 pt-1" style="font-weight: bold">이용권 할인 소식 알림을 받아볼게요🌟</p>
    </div>
    <button type="button" id="ringBtn"
            class="btn btn_smView btn-outline-secondary d-block color-text size-12
            d-flex justify-content-between align-items-center"
            data-toggle="modal"
            data-target="#mdllContent"
            style="width: 85px; color: black;">알림받기<!-- 클릭버튼 -->
<%--    <a href="/add_notification" class="d-block color-text size-12 m-0" style=" color: black;">알림받기--%>
<%--    </a>--%>
        <svg class="ico color-secondary" id="Iconly_Two-tone_Notification" data-name="Iconly/Two-tone/Notification"
             xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24">
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
    </button>
</div>
<br><hr style="margin-top: 0px">
<!-- 제목 -->
<div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
    <div>
        <h3 class="size-18 weight-500 color-secondary m-0">할인 중인 이용권</h3>
        <p class="size-13 color-text m-0 pt-1">할인 종료 전 기회를 놓치지 마세요!</p>
    </div>
    <a href="/" class="d-block color-text size-12 m-0">더보기</a>
</div>
<!-- 이용권 항목들 나열 공간 : Start em_swiper_products -->
<div class="em_swiper_products margin-b-20">
    <div class="em_body_products">
        <div class="owl-carousel owl-theme em-owlRight">
            <c:forEach var="gym" items="${allGym}">
                <div class="item em_item_product">
                    <div class="em_head"><!-- 선택 시 센터 상세페이지로 이동 -->
                        <a href="/ticket/detail?gymNo=${gym.gymNo}" >
                            <div class="ticket_image_bg">
                            <img  class="ticket_image" src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                            </div>
                        </a>
                        <!-- 찜버튼! -->
                        <button type="button" class="btn rounded-8 btn_addBookmark item-active" id="itemSave">
                            <div class="ico icon_current">
                                <svg id="Iconly_Two-tone_Heart" data-name="Iconly/Two-tone/Heart"
                                     xmlns="http://www.w3.org/2000/svg" width="15" height="15"
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
                            <span class="icon_active"></span>
                        </button>
                        <div class="item_discount">${gym.ticketDiscount}%</div>
                    </div>
                    <div class="title_product">
                        <h3>${gym.gymName}</h3>
                        <div class="bottom_info">
                            <p class="item_price">
                                <fmt:formatNumber value="${gym.ticketPrice}" type="number" pattern="#,##0 원" />
                                <span class="price_old">
                                <fmt:formatNumber value="${gym.ticketPrice}" type="number" pattern="#,##0 원" />
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div><br>
<!-- End. em_swiper_products -->
<!-- 조인 홍보 배너 구간 -->
<div class="--item-inside" id="joinbanner">
    <div class="cover_img" >
        <a href="/groupboard">
            <img src="/img/joinbanner1.jpg" alt=""
                 style="width: 100%;">
            <%--  문구를 이미지의 좌측 하단에 배치   --%>
            <div
                    class="text_img position-absolute bottom-0 padding-0 padding-l-20 text-left">
                <h2 data-swiper-parallax="-300"
                    style="text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);"
                    class="size-27 weight-600 color-white text-uppercase mb-1">
                    내가 관심있게 본 운동?<br>남도 관심 있어요</h2>
                <p data-swiper-parallax="-200" class="size-12 color-white"
                   style="text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);">
                    조인할 인원 모아서 최대 20% 동시할인 ></p>
            </div>
        </a>
    </div>
<br>
</div>
    <!-- 조인 이용권 -->
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">조인 가능한 이용권</h3>
        </div>
        <a href="/groupboard/groupboard_list" class="d-block color-text size-12 m-0">더보기</a>
    </div><br>
<!-- 조인 항목 나열 구간 -->
        <div class="em_swiper_products margin-b-20">
            <div class="em_body_products">
                <div class="owl-carousel owl-theme em-owlRight">
                    <c:forEach var="obj" items="${alljoin}">
                        <div class="item em_item_product">
                            <div class="em_head" id="join_em_head"><!-- 선택 시 센터 상세페이지로 이동 -->
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
                                          <fmt:formatNumber value="${obj.ticketPrice}" type="number" pattern="#,##0 원" />
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
<%-- 알림받기 버튼 모달창 --%>
<form name="updatemarketing_form" id="updatemarketing_form"  action="/custnotificationimpl" method="get">
<input type="hidden" name="custNo" value="${logincust.custNo}"/>
<input type="hidden" name="marketingStatus" value="${logincust.marketingStatus}"/>
<div class="modal transition-bottom screenFull defaultModal mdlladd__rate fade" id="mdllContent" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                <div class="itemProduct_sm">
                    <h1 class="size-18 weight-600 color-secondary m-0">맞춤 혜택을 받아보시겠어요?</h1>
                </div>
            </div>

            <div class="modal-body" style="display: flex; align-items: center; flex-direction: column;"><%-- 가운데정렬처리  --%>
                <img src="/img/ringimg.jpg" alt="" style="width: 100px; height: 110px;"><br>
                <p class="size-14 color-text" style="text-align: center;">
                   <span style="color: black"> 바쁜 ${logincust.custName}님을 위해 모든 광고알림은 그만!</span><br>
                    <span style="color: blueviolet"> 관심있는 운동의 이용권 혜택만</span> <span style="color: black">Push알림으로 전달드릴게요🌟</span>
                </p><br>
            </div>
            <div class="modal-footer">
                <button type="submit" id="good_btn"
                        class="btn w-100 bg-primary m-0 color-white h-52 d-flex align-items-center rounded-10 justify-content-center">
                    좋아요</button>
            </div>
        </div>
    </div>
</div>
</form>

</div>

<%--<script type="text/javascript">--%>
<%--        $('#good_btn').on('click', function(){--%>
<%--        toastr.success('2023.06.23 Push알림 수신 동의 완료');--%>

<%--    });--%>
<%--</script>--%>
