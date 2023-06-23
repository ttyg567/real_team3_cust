<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .header-sticky {
        position: sticky;
        top: 0;
        z-index: 100;
    }
    /*.em_modal {*/
    /*    position: fixed;*/
    /*    z-index: 9999; !* 다른 요소들보다 큰 값으로 설정 *!*/
    /*    !* 추가적인 스타일 및 내용 설정 *!*/
    /*}*/
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
        width: 50px;
        height: 50px;
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
    .embody__content svg{
        margin-right: 15px;
    }
    .joincontent{
        margin-bottom: 15px;
    }
</style>

<!-- header 구간  -->
<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item" >
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/groupboard">
            <i class="tio-chevron_left size-24 color-secondary"></i>
            <%--            <span class="color-text size-14">Back</span>--%>
        </a>
    </div>
    <div class="em_brand">
        <div class="title_welcome">
            <%--        <a href="/groupboard">--%>
            <span class="color-secondary size-16 weight-500">
                           조인헬쓱
                        </span>
            <%--        </a>--%>
        </div>
    </div>
    <div class="em_side_right" >
        <%--  검색 아이콘  --%>
        <%--      <a href="/groupboard/myjoin" class="btn justify-content-center">--%>
        <button type="button" class="btn btn_smView" data-toggle="modal"
                data-target="#mdllSidebarMenu-guest">
            <svg class="ico color-secondary" id="Iconly_Two-tone_Search" data-name="Iconly/Two-tone/Search"
                 xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <g id="Search" transform="translate(2 2)">
                    <circle id="Ellipse_739" cx="8.989" cy="8.989" r="8.989"
                            transform="translate(0.778 0.778)" fill="none" stroke="#200e32"
                            stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                            stroke-width="1.5" />
                    <path id="Line_181" d="M0,0,3.524,3.515" transform="translate(16.018 16.485)"
                          fill="none" stroke="#200e32" stroke-linecap="round" stroke-linejoin="round"
                          stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />
                </g>
            </svg>
            <%--  커서올리면 교체될 아이콘   --%>
            <svg class="hover_ico color-primary" id="Iconly_Two-tone_Search" data-name="Iconly/Two-tone/Search"
                 xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <g id="Search" transform="translate(2 2)">
                    <circle id="Ellipse_739" cx="8.989" cy="8.989" r="8.989"
                            transform="translate(0.778 0.778)" fill="none" stroke="#200e32"
                            stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                            stroke-width="1.5" />
                    <path id="Line_181" d="M0,0,3.524,3.515" transform="translate(16.018 16.485)"
                          fill="none" stroke="#200e32" stroke-linecap="round" stroke-linejoin="round"
                          stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />
                </g>
            </svg>
        </button>
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
                <a href="/groupboard/my_applyjoin?custNo=${logincust.custNo}"  class="btn justify-content-center">
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

<!-- Start input_SaerchDefault -->
<section class="padding-t-70 change_colorSearch">
    <div class="title_welcome">
                        <span class="color-secondary size-16 weight-500">
                            성동구
                             <i class="tio-chevron_down -arrwo"></i>
                        </span>
        <p class="size-13 weight-400 color-text mb-0" style="font-size: 5px; color:#8890E8">
            ${logincust.custName}님이 참여하기 좋은 조인 위주로 보여드렸어요.
        </p>
    </div>

</section>
<br>

<!-- End. input_SaerchDefault -->
<!-- Start emCategories__learning -->
<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-10 mt-0 padding-b-0">
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">운동 종목별</h3>
        </div>
        <a href="/groupboard/groupboard_list" class="d-block color-text size-12 m-0">더보기</a>
    </div>

    <section class="np__bkOperationsService padding-10">
        <%--<section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">--%>
        <div class="em__actions">
            <a href="/groupboard/workout" class="btn">
                <div class="icon bg-blue bg-opacity-10">
                    <img src="/assets/img/cate2.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>헬스</span>
            </a>
            <a href="/groupboard/personaltraning" class="btn">
                <div class="icon bg-green bg-opacity-10">
                    <img src="/assets/img/cate1.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>PT</span>
            </a>
            <a href="/groupboard/crossfit" class="btn">
                <div class="icon bg-yellow bg-opacity-10">
                    <img src="/assets/img/cate3.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>크로스핏</span>
            </a>
            <a href="/groupboard/yoga" class="btn">
                <div class="icon bg-red bg-opacity-10">
                    <img src="/assets/img/cate4.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>요가</span>
            </a>
            <a href="/groupboard/pilates" class="btn">
                <div class="icon bg-yellow bg-opacity-10">
                    <img src="/assets/img/cate5.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>필라테스</span>
            </a>
            <a href="/groupboard/golf" class="btn">
                <div class="icon bg-green bg-opacity-10">
                    <img src="/assets/img/cate6.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>골프</span>
            </a>
            <a href="/groupboard/swimming" class="btn">
                <div class="icon bg-blue bg-opacity-10">
                    <img src="/assets/img/cate7.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>수영</span>
            </a>
        </div>
        <%--</section>--%>
    </section><!-- End. banner_swiper -->
</section>
<hr style="height: 30px; color: #f7edfa; border: none; border-top: 10px solid;">
<!-- End. emCategories__learning -->

<!-- Start em_swiper_products -->
<%--관심지역에 오픈된 조인 : 슬라이드 --%>
<!-- Start banner_swiper -->
<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-0 mt-0 padding-b-0">
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">나의 관심지역</h3>
            <p class="size-13 color-text m-0 pt-1">거리가 가까울 수록 포기와는 거리가 멀어져요!</p>
        </div>
        <a href="/groupboard/groupboard_list" class="d-block color-text size-12 m-0">더보기</a>
    </div>
    <!-- 1.관심지역 슬라이드. Swiper -->
    <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
    <c:forEach var="obj" items="${alljoin}" >
<%--        ${obj.groupboardNo}--%>
        <div class="item em_item">
            <a data-toggle="modal"
               data-target="#mdllJobDetails${obj.groupboardNo}" class="em_cover_img text-decoration-none">
                <img src="/assets/img/${obj.groupboardImgname}" alt="">
            </a>
            <div class="card-body">
                <h6 class="card-title"><!-- 글제목 -->
                        ${obj.groupboardTitle}
                </h6>

                <div class="card_user color-text">
                    <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                    </svg>
                   <%-- 모집인원 - 신청된 인원 = 신청가능 인원   --%>
                    <c:set var="canapplymember" value="${canapplymember = (obj.expectMember - obj.applicationMember) }" />
                    <span style="font-size: smaller; color: #5d6072; font-weight: bold "><fmt:formatNumber value="${canapplymember}" />명 조인 가능</span>
                </div>
                <div class="color-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                    <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                    <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                </svg>
                <span class="card-text" style="font-size: x-small; color: #5d6072; ">
                    ${obj.gymName}
                </span>
                </div>
            </div>
        </div>
        </c:forEach>

    </div>

</section>
<!-- End. banner_swiper -->

<%--선호운동 비슷한 조인 : 슬라이드 --%>
<!-- Start banner_swiper -->
<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-10 mt-0 padding-b-40">
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">선호운동이 비슷한 회원들</h3>
            <p class="size-13 color-text m-0 pt-1">운동효능감까지 Up해요!</p>
        </div>
        <a href="/groupboard/groupboard_list" class="d-block color-text size-12 m-0">더보기</a>
    </div>
    <!-- 2. 선호운동 비슷한 조인 슬라이드. Swiper -->
    <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
        <c:forEach var="obj" items="${alljoin}" >
            <%--        ${obj.groupboardNo}--%>
            <div class="item em_item">
                <a data-toggle="modal"
                   data-target="#mdllJobDetails${obj.groupboardNo}" class="em_cover_img text-decoration-none">
                    <img src="/assets/img/${obj.groupboardImgname}" alt="">
                </a>
                <div class="card-body">
                    <h6 class="card-title"><!-- 글제목 -->
                            ${obj.groupboardTitle}
                    </h6>

                    <div class="card_user color-text">
                        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                        </svg>
                        <%-- 모집인원 - 신청된 인원 = 신청가능 인원   --%>
                        <c:set var="canapplymember" value="${canapplymember = (obj.expectMember - obj.applicationMember) }" />
                        <span style="font-size: smaller; color: #5d6072; font-weight: bold "><fmt:formatNumber value="${canapplymember}" />명 조인 가능</span>
                    </div>
                    <div class="color-text">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                            <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                            <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                        </svg>
                        <span class="card-text" style="font-size: x-small; color: #5d6072">
                    ${obj.gymName}
                </span>
                    </div>
                </div>
            </div>
        </c:forEach>

    </div>
</section>
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
<!-- End. em_swiper_products -->


<!-- Modal로 보여지는 창 : mdllJobDetails -->
<!-- Modal : center 에서 사용한 것 처럼 모달로 각 조인들 상세보기-->
<!-- 조인 상세보기를 위해선 forEach 한번 더! -->
<c:forEach  var="obj" items="${alljoin}" >
    <%-- join 신청하는 기능이 페이지에 있을 땐, from 태그와, input hidden이 꼭 있어야해
     action -> 기재된 컨트롤러에서 처리 --%>
    <form id="join_form" action="/groupboard/success_apply" method="get">
        <input type="hidden" name="custNo" value="${logincust.custNo}"/>
        <input type="hidden" name="groupboardNo" value="${obj.groupboardNo}"/>
        <input type="hidden" name="gymNo" value="${obj.gymNo}"/>
        <div class="modal transition-bottom screenFull defaultModal mdllJobs_details fade" id="mdllJobDetails${obj.groupboardNo}"
             tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header padding-l-20 padding-r-50">
                            <%-- 이미지 넣을 맨 상단 구간 --%>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="tio-clear"></i>
                        </button>

                    </div>
                    <div class="modal-body p-0"><%-- 제목~내용 구간  --%>
                        <div id="wrapper">

                            <div id="content">
                                <!-- Start emPage__detailsBlog -->
                                <section class="emPage__detailsBlog" style="margin-top: -100px">
                                    <div class="emheader_cover">
                                        <div class="cover">
                                            <img src="/uimg/${obj.groupboardImgname}" alt="" style="height:450px" >
                                        </div>
                                        <div class="title">
                                            <div class="size-18 weight-600 color-primary"style="text-align: right">
                                                <span class="color-text"></span>
                                                <c:choose>
                                                    <c:when test="${obj.groupboardStatus == 1}">
                                                        <p>모집중</p>
                                                    </c:when>
                                                    <c:when test="${obj.groupboardStatus == 2}">
                                                        <p>모집취소</p>
                                                    </c:when>
                                                    <c:when test="${obj.groupboardStatus == 3}">
                                                        <p>신청중</p>
                                                    </c:when>
                                                    <c:when test="${obj.groupboardStatus == 4}">
                                                        <p>신청취소</p>
                                                    </c:when>
                                                    <c:otherwise><!-- groupboardStatus == 5 -->
                                                        <p>확정</p>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <div class="em__header">
                                                <h3 class="">${obj.groupboardTitle}</h3>
                                            </div>

                                            <div class="item__auther emBlock__border">
                                                <div class="item_person">
                                                    <img src="/uimg/${obj.groupboardImgname}" alt="">
                                                        <%-- 조인을 만든 고객 이름   --%>
                                                    <h2>${obj.custName}</h2>
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
                                                        <span>${obj.writeDate}</span>
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
                                                        <span>${obj.boardViews}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        <%-- 조인모집 작성내용 적히는 공간  --%>
                                    <div class="embody__content">
                                        <div style="height: 150px;  display: flex; flex-wrap: wrap; flex-direction: column; align-content: flex-start; align-items: flex-start;">
                                            <div class="joincontent" style=" display: flex; align-items: center;">
                                           <%-- 센터정보 : 이름 / 위치 --%>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-geo-alt color-primary" viewBox="0 0 16 16">
                                                <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                                                <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                            </svg>

                                            <span>${obj.gymName}  ${obj.gymAddress3}</span>
                                            </div>

                                           <%-- 이용권정보 : 이용권명 / 가격 / 할인율 --%>
                                                <c:choose>
                                                    <c:when test="${obj.ticketType == '1'}">
                                                            <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-ticket-perforated color-primary" viewBox="0 0 16 16">
                                                                <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                                                <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                                            </svg>
                                                                <span>기간권</span> <span>${obj.ticketMonth}개월 이용권</span>
                                                            </div>
                                                            <div class="joincontent" style="text-align: left">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                    <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                    <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                                </svg>
                                                            <span>할인가 <fmt:formatNumber value="${obj.ticketPrice}" pattern="###,### 원" /> | ${obj.ticketDiscount}% 할인 적용 (정상가 <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" />)</span>
                                                            </div>

                                                    </c:when>
                                                    <c:when test="${obj.ticketType == '2'}">
                                                            <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-ticket-perforated color-primary" viewBox="0 0 16 16">
                                                                <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                                                <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                                            </svg>
                                                                <span>횟수권</span> <span>${obj.ticketNumber}회 이용권</span>
                                                            </div>
                                                            <div class="joincontent" style="text-align: left">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                    <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                    <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                                </svg>
                                                                <span>할인가 <fmt:formatNumber value="${obj.ticketPrice}" pattern="###,### 원" />(${obj.ticketDiscount}% 할인 적용) | 정상가 <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" /></span>
                                                            </div>

                                                    </c:when>
                                                </c:choose>

                                            <div class="joincontent">
                                            <%-- 모집인원 정보 --%>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-person color-primary" viewBox="0 0 16 16">
                                                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                                                </svg>
                                                <span>신청 인원  <span style="color: #8890E8; font-weight: bolder"> ${obj.confirmMember}명</span></span> |<span> 모집 인원 ${obj.expectMember}명</span>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="title">
                                            <h6>센터 상세정보</h6>
                                            <%--  센터 지도 이미지 --%>
                                            <div id="map" style="width: 90%; height: 250px; border: #9f9f9f 1px solid; border-radius: 15px;">
                                                <img src="/uimg/gym1_map.jpg" alt="">
                                            </div>
                                        </div>
                                        <div style="height: 100px; margin-top: 20px;  display: flex; flex-wrap: wrap; flex-direction: column; align-content: flex-start; align-items: flex-start;">

                                            <%--  센터 주소와 연락처 --%>
                                            <div class="joincontent" style=" display: flex; align-items: center;">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building color-primary" viewBox="0 0 16 16">
                                                    <path d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1ZM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Z"/>
                                                    <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V1Zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3V1Z"/>
                                                </svg>
                                                <span>상세 주소 : ${obj.gymAddress1}, ${obj.gymAddress2}</span>
                                            </div>
                                            <div class="joincontent" style=" display: flex; align-items: center;">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone color-primary" viewBox="0 0 16 16">
                                                    <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                                                </svg>
                                                <span>연락처 : ${obj.gymPhone}</span>
                                            </div>

                                        </div>
                                        <hr>
                                        <div class="title">
                                            <h6>모집 소개내용</h6>
                                            <p>
                                             ${obj.groupboardContents}
                                            </p>
                                        </div>
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
                                                    <%-- get 방식의 submit으로 정보 전송 --%>
                                                <button type="submit" id="join_addbtn" style="margin-left: 50px"
                                                        class="btn btn__icon bg-primary color-white min-w-175 text-left justify-content-between">
                                                    조인 신청하기
                                                    <a href="/groupboard/success_apply" >
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
                                                </button>
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
    </form>
</c:forEach>

<!-- 검색창 아이콘 선택 시 모달 페이지 : Modal Sidebar Menu (-guest) -->
<div class="modal sidebarMenu -right -guest fade" id="mdllSidebarMenu-guest" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true" >
    <div class="modal-dialog modal-dialog-scrollable  bg-snow ">
        <%--   모달내용     --%>
        <div id="wrapper">
            <div id="content">
                <!-- Start main_haeder -->
                <header class="main_haeder header-sticky multi_item bg-transparent" >
                    <div class="em_side_right" >
                        <a class="rounded-circle d-flex align-items-center text-decoration-none"
                           href="/groupboard">
                            <i class="tio-chevron_left size-24 color-text"></i><!-- 뒤로가기 아이콘 -->
                        </a>
                    </div>
                    <div class="title_page">
                        <span class="page_name">조인 검색</span>
                    </div>
                    <div class="em_side_right">
                        <button type="button" class="btn btn_meunSearch _opacity  mr-3" id="saerch-On-header">
                            <i class="ri-search-2-line"></i>
                        </button>
                        <button type="button" class="btn justify-content-start" data-toggle="modal"
                                data-target="#mdllFilterJobs">
                            <i class="ri-equalizer-line"></i>
                        </button>

                    </div>
                </header>
                <!-- End.main_haeder -->

                <!-- Start input_SaerchDefault -->
                <section class="margin-t-10 padding-t-50 padding-l-20 padding-r-20" id="searchDefault">
                    <div class="input_SaerchDefault">
                        <div class="form-group with_icon mb-0">
                            <div class="input_group " >
                                <input type="search" class="form-control h-48" placeholder="찾고 싶은 조인을 검색해 주세요." />
                                <div class="icon">
                                    <svg id="Iconly_Two-tone_Search" data-name="Iconly/Two-tone/Search"
                                         xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <g id="Search" transform="translate(2 2)">
                                            <circle id="Ellipse_739" cx="8.989" cy="8.989" r="8.989"
                                                    transform="translate(0.778 0.778)" fill="none" stroke="#200e32"
                                                    stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                                    stroke-width="1.5" />
                                            <path id="Line_181" d="M0,0,3.524,3.515" transform="translate(16.018 16.485)"
                                                  fill="none" stroke="#200e32" stroke-linecap="round" stroke-linejoin="round"
                                                  stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />
                                        </g>
                                    </svg>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <!-- End. input_SaerchDefault -->

                <!-- Start em_swiper_products -->
                <section  class="margin-b-20 emPage__jobsList">
                    <div class="padding-20 pb-0">
                        <p class="size-13 color-text m-0">
                            인기 검색어
                        </p>
                    </div>
                    <!-- 인기 단어들 -->
                    <div class="em_bkTags__items padding-20 pb-0">
                        <div class="group">
                            <button type="button" class="btn">
                                <span>필라테스</span>
                            </button>
                            <button type="button" class="btn">
                                <span>골프</span>
                            </button>
                            <button type="button" class="btn">
                                <span>2:1</span>
                            </button>
                        </div>
                    </div>
                    <div class="padding-20 pb-0">
                        <p class="size-13 color-text m-0">
                            최근 검색어
                        </p>
                    </div>
                    <!-- 최근 검색했던 단어들 -->
                    <div class="em_bkTags__items padding-20 pb-0">
                        <div class="group">
                            <button type="button" class="btn">
                                <span>크로스핏</span>
                                <div class="remove_tag">
                                    <i class="tio-clear"></i>
                                </div>
                            </button>
                        </div>
                    </div>
                    <div class="padding-20 pb-0">
                        <p class="size-13 color-text m-0">
                            검색결과
                        </p>
                    </div>
                    <%--  검색된 결과 리스트 뿌려지는 곳  --%>
                    <div class="emContent_listJobs padding-20">
                        <button type="button" class="btn em__itemList_jobs" data-toggle="modal"
                                data-target="#mdllJobDetails">
                            <div class="media align-items-center">
                                <div class="img_logo">
                                    <img src="assets/img/brands/02.png" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="txt">
                                        <h3>Director of Marketing</h3>
                                        <p>ScreenScape Inc.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="sideRight">
                                <span>Oct 14</span>
                            </div>
                        </button>
                        <a href="page-details-jobs.html" class="em__itemList_jobs">
                            <div class="media align-items-center">
                                <div class="img_logo">
                                    <img src="assets/img/brands/05.png" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="txt">
                                        <h3>Design Lead</h3>
                                        <p>ueno.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="sideRight">
                                <span>Oct 15</span>
                            </div>
                        </a>
                        <a href="page-details-jobs.html" class="em__itemList_jobs">
                            <div class="media align-items-center">
                                <div class="img_logo">
                                    <img src="assets/img/brands/03.png" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="txt">
                                        <h3>Product Designer</h3>
                                        <p>Nested</p>
                                    </div>
                                </div>
                            </div>
                            <div class="sideRight">
                                <span>Oct 16</span>
                            </div>
                        </a>
                        <a href="page-details-jobs.html" class="em__itemList_jobs">
                            <div class="media align-items-center">
                                <div class="img_logo">
                                    <img src="assets/img/brands/09.png" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="txt">
                                        <h3>Senior Product Designer</h3>
                                        <p>DraftKings Inc.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="sideRight">
                                <span>Oct 16</span>
                            </div>
                        </a>
                        <a href="page-details-jobs.html" class="em__itemList_jobs">
                            <div class="media align-items-center">
                                <div class="img_logo">
                                    <img src="assets/img/brands/12.png" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="txt">
                                        <h3>UI / Visual Designer</h3>
                                        <p>Futureswap</p>
                                    </div>
                                </div>
                            </div>
                            <div class="sideRight">
                                <span>Oct 16</span>
                            </div>
                        </a>
                        <a href="page-details-jobs.html" class="em__itemList_jobs">
                            <div class="media align-items-center">
                                <div class="img_logo">
                                    <img src="assets/img/brands/10.png" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="txt">
                                        <h3>3D Designer</h3>
                                        <p>Harper+Scott</p>
                                    </div>
                                </div>
                            </div>
                            <div class="sideRight">
                                <span>Oct 20</span>
                            </div>
                        </a>

                    </div>

                    <!-- Start spinner_loading -->
                    <div class="spinner_loading">
                        <div class="bounce1"></div>
                        <div class="bounce2"></div>
                        <div class="bounce3"></div>
                    </div>
                    <!-- End. spinner_loading -->

                </section>
                <!-- End. em_swiper_products -->

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

            <!-- Modal Sidebar Menu (withBackground) -->
            <div class="modal sidebarMenu -left fade" id="mdllSidebarMenu-background" tabindex="-1"
                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header d-block">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <i class="tio-clear"></i>
                            </button>
                            <div class="em_profile_user">
                                <div class="media">
                                    <a href="page-profile.html">
                                        <!-- You can use an image -->
                                        <!-- <img class="_imgUser" src="assets/img/person.png" alt=""> -->
                                        <div class="letter bg-yellow">
                                            <span>c</span>
                                        </div>
                                    </a>
                                    <div class="media-body">
                                        <div class="txt">
                                            <h3>Calvin Bell</h3>
                                            <p>+1 6540 605 490</p>
                                            <a href="#" class="btn btn_logOut">Sign out</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="np_balanceDefault emBlock__border with_bg">
                                <div class="txt">
                                    <span class="title_sm">My Balance</span>
                                    <h3>95.00 <span>USD</span></h3>
                                    <p>Exp on Jan 15, 2021</p>
                                </div>
                                <div class="npRight">
                                    <a href="page-add-balance.html" class="btn">
                                        <svg id="Iconly_Curved_Plus" data-name="Iconly/Curved/Plus"
                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                                            <g id="Plus" transform="translate(1.917 1.917)">
                                                <path id="Stroke_1" data-name="Stroke 1" d="M.526,0V5.957"
                                                      transform="translate(7.588 5.136)" fill="none" stroke="#0e132d"
                                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                                      stroke-width="1.5" />
                                                <path id="Stroke_2" data-name="Stroke 2" d="M5.963.526H0"
                                                      transform="translate(5.132 7.588)" fill="none" stroke="#0e132d"
                                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                                      stroke-width="1.5" />
                                                <path id="Stroke_3" data-name="Stroke 3"
                                                      d="M0,8.114C0,2.029,2.029,0,8.114,0s8.114,2.029,8.114,8.114S14.2,16.228,8.114,16.228,0,14.2,0,8.114Z"
                                                      transform="translate(0)" fill="none" stroke="#0e132d"
                                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                                      stroke-width="1.5" />
                                            </g>
                                        </svg>
                                    </a>
                                </div>
                            </div>

                        </div>
                        <div class="modal-body">
                            <ul class="nav flex-column -active-links">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">
                                        <div class="">
                                            <div class="icon_current">
                                                <svg id="Iconly_Curved_Discovery" data-name="Iconly/Curved/Discovery"
                                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                     viewBox="0 0 20 20">
                                                    <g id="Discovery" transform="translate(2.292 2.292)">
                                                        <path id="Stroke_1" data-name="Stroke 1"
                                                              d="M0,7.708c0,5.781,1.927,7.708,7.708,7.708s7.708-1.927,7.708-7.708S13.489,0,7.708,0,0,1.927,0,7.708Z"
                                                              transform="translate(0 0)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_3" data-name="Stroke 3"
                                                              d="M0,5.5,1.312,1.312,5.5,0,4.192,4.191Z"
                                                              transform="translate(4.957 4.957)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                    </g>
                                                </svg>
                                            </div>
                                            <span class="title_link">Discover</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="app-homes.html">
                                        <div class="">
                                            <div class="icon_current">
                                                <svg id="Iconly_Curved_Home" data-name="Iconly/Curved/Home"
                                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                     viewBox="0 0 20 20">
                                                    <g id="Home" transform="translate(2 1.667)">
                                                        <path id="Stroke_1" data-name="Stroke 1" d="M0,.5H4.846"
                                                              transform="translate(5.566 11.28)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_2" data-name="Stroke 2"
                                                              d="M0,9.761C0,5.068.512,5.4,3.266,2.842,4.471,1.872,6.346,0,7.965,0S11.5,1.862,12.712,2.842c2.754,2.554,3.265,2.227,3.265,6.919,0,6.906-1.633,6.906-7.988,6.906S0,16.667,0,9.761Z"
                                                              transform="translate(0)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                    </g>
                                                </svg>
                                            </div>
                                            <span class="title_link">Homepages</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="app-components.html">
                                        <div class="">
                                            <div class="icon_current">
                                                <svg id="Iconly_Curved_More_Circle" data-name="Iconly/Curved/More Circle"
                                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                     viewBox="0 0 20 20">
                                                    <g id="More_Circle" data-name="More Circle"
                                                       transform="translate(2.292 2.292)">
                                                        <path id="Stroke_4" data-name="Stroke 4"
                                                              d="M0,7.708C0,1.927,1.927,0,7.708,0s7.708,1.927,7.708,7.708-1.927,7.708-7.708,7.708S0,13.489,0,7.708Z"
                                                              transform="translate(0 0)" fill="none" stroke="#556fff"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_11" data-name="Stroke 11" d="M.5.5H.5"
                                                              transform="translate(9.883 8.792)" fill="none" stroke="#556fff"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="2" />
                                                        <path id="Stroke_13" data-name="Stroke 13" d="M.5.5H.5"
                                                              transform="translate(7.383 5.458)" fill="none" stroke="#556fff"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="2" />
                                                        <path id="Stroke_15" data-name="Stroke 15" d="M.5.5H.5"
                                                              transform="translate(4.876 8.792)" fill="none" stroke="#556fff"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="2" />
                                                    </g>
                                                </svg>
                                            </div>
                                            <span class="title_link">Components</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="app-pages.html">
                                        <div class="">
                                            <div class="icon_current">
                                                <svg id="Iconly_Curved_Document" data-name="Iconly/Curved/Document"
                                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                     viewBox="0 0 20 20">
                                                    <g id="Document" transform="translate(3.008 2.292)">
                                                        <path id="Stroke_1" data-name="Stroke 1" d="M6.017.5H0"
                                                              transform="translate(3.971 10.289)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_2" data-name="Stroke 2" d="M6.017.5H0"
                                                              transform="translate(3.971 7.155)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_3" data-name="Stroke 3" d="M2.3.5H0"
                                                              transform="translate(3.972 4.023)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_4" data-name="Stroke 4"
                                                              d="M0,7.708c0,5.781,1.748,7.708,6.992,7.708s6.992-1.927,6.992-7.708S12.238,0,6.992,0,0,1.927,0,7.708Z"
                                                              transform="translate(0)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                    </g>
                                                </svg>
                                            </div>

                                            <span class="title_link">Pages</span>
                                        </div>

                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="page-products-fullwidth.html">
                                        <div class="">
                                            <div class="icon_current">
                                                <svg id="Iconly_Curved_Bag" data-name="Iconly/Curved/Bag"
                                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                     viewBox="0 0 20 20">
                                                    <g id="Bag" transform="translate(2.458 2.125)">
                                                        <path id="Stroke_1" data-name="Stroke 1"
                                                              d="M7.216,3.6A3.608,3.608,0,0,0,0,3.584V3.6"
                                                              transform="translate(3.962)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_3" data-name="Stroke 3" d="M.515.5H.477"
                                                              transform="translate(9.504 6.853)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_5" data-name="Stroke 5" d="M.515.5H.477"
                                                              transform="translate(4.644 6.853)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_7" data-name="Stroke 7"
                                                              d="M7.57,12.445c-5.423,0-6.047-1.708-7.265-6.222S1.534,0,7.57,0s8.487,1.694,7.265,6.222S12.994,12.445,7.57,12.445Z"
                                                              transform="translate(0 3.338)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                    </g>
                                                </svg>
                                            </div>
                                            <span class="title_link">Shop</span>
                                        </div>
                                        <span
                                                class="bg-red rounded-7 px-1 color-white min-w-25 px-1 h-28 d-flex align-items-center justify-content-center">3</span>
                                    </a>
                                </li>
                                <label class="title__label">other</label>
                                <li class="nav-item">
                                    <a class="nav-link" href="page-profile.html">
                                        <div class="">
                                            <div class="icon_current">
                                                <svg id="Iconly_Curved_Setting" data-name="Iconly/Curved/Setting"
                                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                     viewBox="0 0 20 20">
                                                    <g id="Setting" transform="translate(2.917 2.083)">
                                                        <path id="Stroke_1" data-name="Stroke 1"
                                                              d="M2.083,0A2.083,2.083,0,1,1,0,2.083,2.083,2.083,0,0,1,2.083,0Z"
                                                              transform="translate(5 5.833)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_3" data-name="Stroke 3"
                                                              d="M13.89,3.959h0a2.053,2.053,0,0,0-2.816-.76A1.286,1.286,0,0,1,9.145,2.077,2.07,2.07,0,0,0,7.083,0h0A2.07,2.07,0,0,0,5.021,2.077,1.286,1.286,0,0,1,3.093,3.2a2.054,2.054,0,0,0-2.817.76A2.085,2.085,0,0,0,1.031,6.8a1.3,1.3,0,0,1,0,2.243,2.085,2.085,0,0,0-.755,2.837,2.054,2.054,0,0,0,2.816.761h0a1.285,1.285,0,0,1,1.928,1.121h0a2.07,2.07,0,0,0,2.062,2.077h0a2.07,2.07,0,0,0,2.062-2.077h0a1.286,1.286,0,0,1,1.929-1.121,2.054,2.054,0,0,0,2.816-.761,2.085,2.085,0,0,0-.754-2.837h0a1.3,1.3,0,0,1,0-2.243A2.085,2.085,0,0,0,13.89,3.959Z"
                                                              transform="translate(0)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                    </g>
                                                </svg>
                                            </div>
                                            <span class="title_link">Settings</span>
                                        </div>
                                        <div class="em_pulp">
                                            <span class="doted_item"></span>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="page-support.html">
                                        <div class="">
                                            <div class="icon_current">
                                                <svg id="Iconly_Curved_Message" data-name="Iconly/Curved/Message"
                                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                     viewBox="0 0 20 20">
                                                    <g id="Message" transform="translate(2.043 2.377)">
                                                        <path id="Stroke_1" data-name="Stroke 1"
                                                              d="M9.292,0S6.617,3.211,4.661,3.211,0,0,0,0"
                                                              transform="translate(3.285 5.139)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_3" data-name="Stroke 3"
                                                              d="M0,7.6C0,1.9,1.984,0,7.937,0s7.937,1.9,7.937,7.6-1.984,7.6-7.937,7.6S0,13.295,0,7.6Z"
                                                              transform="translate(0 0)" fill="none" stroke="#9498ac"
                                                              stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                    </g>
                                                </svg>
                                            </div>
                                            <span class="title_link">Support</span>
                                        </div>

                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="page-about.html">
                                        <div class="">
                                            <div class="icon_current">
                                                <svg id="Iconly_Curved_Info_Square" data-name="Iconly/Curved/Info Square"
                                                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                     viewBox="0 0 20 20">
                                                    <g id="Info_Square" data-name="Info Square"
                                                       transform="translate(2.292 2.292)">
                                                        <path id="Stroke_1" data-name="Stroke 1"
                                                              d="M0,7.708C0,1.927,1.927,0,7.708,0s7.708,1.927,7.708,7.708-1.927,7.708-7.708,7.708S0,13.489,0,7.708Z"
                                                              transform="translate(15.417 15.417) rotate(180)" fill="none"
                                                              stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_3" data-name="Stroke 3" d="M0,0V3.246"
                                                              transform="translate(7.708 10.954) rotate(180)" fill="none"
                                                              stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                        <path id="Stroke_15" data-name="Stroke 15" d="M0,0H.007"
                                                              transform="translate(7.712 4.792) rotate(180)" fill="none"
                                                              stroke="#9498ac" stroke-linecap="round" stroke-linejoin="round"
                                                              stroke-miterlimit="10" stroke-width="1.5" />
                                                    </g>
                                                </svg>
                                            </div>
                                            <span class="title_link">About</span>
                                        </div>

                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <div class="em_darkMode_menu">
                                <label class="text" for="switchDarkMode">
                                    <h3>Dark Mode</h3>
                                    <p>Browsing in night mode</p>
                                </label>
                                <label class="switch_toggle toggle_lg" for="switchDarkMode">
                                    <input type="checkbox" class="switchDarkMode" id="switchDarkMode">
                                    <span class="handle"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal mdllFilter -->
            <div class="modal transition-bottom screenFull defaultModal emModal__filters fade" id="mdllFilterJobs"
                 tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                            <div class="itemProduct_sm">
                                <h1 class="size-18 weight-600 color-secondary m-0">Filters</h1>
                            </div>
                            <div class="absolute right-0 padding-r-20">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <i class="tio-clear"></i>
                                </button>
                            </div>
                            <div class="absolute left-0 padding-l-20">
                                <span class="color-blue size-14">- Clear</span>
                            </div>
                        </div>
                        <div class="modal-body padding-b-100">

                            <div class="em_box_content_filter">
                                <div class="form-group">
                                    <label>Location</label>
                                    <select class="form-control custom-select">
                                        <option value="0">Please Select Country</option>
                                        <option value="Afghanistan">Afghanistan</option>
                                        <option value="Åland Islands">Åland Islands</option>
                                        <option value="Albania">Albania</option>
                                        <option value="Algeria">Algeria</option>
                                        <option value="American Samoa">American Samoa</option>
                                        <option value="Andorra">Andorra</option>
                                        <option value="Angola">Angola</option>
                                        <option value="Anguilla">Anguilla</option>
                                        <option value="Antarctica">Antarctica</option>
                                        <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                        <option value="Argentina">Argentina</option>
                                        <option value="Armenia">Armenia</option>
                                        <option value="Aruba">Aruba</option>
                                        <option value="Australia">Australia</option>
                                        <option value="Austria">Austria</option>
                                        <option value="Azerbaijan">Azerbaijan</option>
                                        <option value="Bahamas">Bahamas</option>
                                        <option value="Bahrain">Bahrain</option>
                                        <option value="Bangladesh">Bangladesh</option>
                                        <option value="Barbados">Barbados</option>
                                        <option value="Belarus">Belarus</option>
                                        <option value="Belgium">Belgium</option>
                                        <option value="Belize">Belize</option>
                                        <option value="Benin">Benin</option>
                                        <option value="Bermuda">Bermuda</option>
                                        <option value="Bhutan">Bhutan</option>
                                        <option value="Bolivia">Bolivia</option>
                                        <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                        <option value="Botswana">Botswana</option>
                                        <option value="Bouvet Island">Bouvet Island</option>
                                        <option value="Brazil">Brazil</option>
                                        <option value="British Indian Ocean Territory">British Indian Ocean Territory
                                        </option>
                                        <option value="Brunei Darussalam">Brunei Darussalam</option>
                                        <option value="Bulgaria">Bulgaria</option>
                                        <option value="Burkina Faso">Burkina Faso</option>
                                        <option value="Burundi">Burundi</option>
                                        <option value="Cambodia">Cambodia</option>
                                        <option value="Cameroon">Cameroon</option>
                                        <option value="Canada">Canada</option>
                                        <option value="Cape Verde">Cape Verde</option>
                                        <option value="Cayman Islands">Cayman Islands</option>
                                        <option value="Central African Republic">Central African Republic</option>
                                        <option value="Chad">Chad</option>
                                        <option value="Chile">Chile</option>
                                        <option value="China">China</option>
                                        <option value="Christmas Island">Christmas Island</option>
                                        <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                        <option value="Colombia">Colombia</option>
                                        <option value="Comoros">Comoros</option>
                                        <option value="Congo">Congo</option>
                                        <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic
                                            of
                                            The
                                        </option>
                                        <option value="Cook Islands">Cook Islands</option>
                                        <option value="Costa Rica">Costa Rica</option>
                                        <option value="Cote D'ivoire">Cote D'ivoire</option>
                                        <option value="Croatia">Croatia</option>
                                        <option value="Cuba">Cuba</option>
                                        <option value="Cyprus">Cyprus</option>
                                        <option value="Czech Republic">Czech Republic</option>
                                        <option value="Denmark">Denmark</option>
                                        <option value="Djibouti">Djibouti</option>
                                        <option value="Dominica">Dominica</option>
                                        <option value="Dominican Republic">Dominican Republic</option>
                                        <option value="Ecuador">Ecuador</option>
                                        <option value="Egypt">Egypt</option>
                                        <option value="El Salvador">El Salvador</option>
                                        <option value="Equatorial Guinea">Equatorial Guinea</option>
                                        <option value="Eritrea">Eritrea</option>
                                        <option value="Estonia">Estonia</option>
                                        <option value="Ethiopia">Ethiopia</option>
                                        <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                        <option value="Faroe Islands">Faroe Islands</option>
                                        <option value="Fiji">Fiji</option>
                                        <option value="Finland">Finland</option>
                                        <option value="France">France</option>
                                        <option value="French Guiana">French Guiana</option>
                                        <option value="French Polynesia">French Polynesia</option>
                                        <option value="French Southern Territories">French Southern Territories</option>
                                        <option value="Gabon">Gabon</option>
                                        <option value="Gambia">Gambia</option>
                                        <option value="Georgia">Georgia</option>
                                        <option value="Germany">Germany</option>
                                        <option value="Ghana">Ghana</option>
                                        <option value="Gibraltar">Gibraltar</option>
                                        <option value="Greece">Greece</option>
                                        <option value="Greenland">Greenland</option>
                                        <option value="Grenada">Grenada</option>
                                        <option value="Guadeloupe">Guadeloupe</option>
                                        <option value="Guam">Guam</option>
                                        <option value="Guatemala">Guatemala</option>
                                        <option value="Guernsey">Guernsey</option>
                                        <option value="Guinea">Guinea</option>
                                        <option value="Guinea-bissau">Guinea-bissau</option>
                                        <option value="Guyana">Guyana</option>
                                        <option value="Haiti">Haiti</option>
                                        <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands
                                        </option>
                                        <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                        <option value="Honduras">Honduras</option>
                                        <option value="Hong Kong">Hong Kong</option>
                                        <option value="Hungary">Hungary</option>
                                        <option value="Iceland">Iceland</option>
                                        <option value="India">India</option>
                                        <option value="Indonesia">Indonesia</option>
                                        <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                        <option value="Iraq">Iraq</option>
                                        <option value="Ireland">Ireland</option>
                                        <option value="Isle of Man">Isle of Man</option>
                                        <option value="Israel">Israel</option>
                                        <option value="Italy">Italy</option>
                                        <option value="Jamaica">Jamaica</option>
                                        <option value="Japan">Japan</option>
                                        <option value="Jersey">Jersey</option>
                                        <option value="Jordan">Jordan</option>
                                        <option value="Kazakhstan">Kazakhstan</option>
                                        <option value="Kenya">Kenya</option>
                                        <option value="Kiribati">Kiribati</option>
                                        <option value="Korea, Democratic People's Republic of">Korea, Democratic People's
                                            Republic
                                            of</option>
                                        <option value="Korea, Republic of">Korea, Republic of</option>
                                        <option value="Kuwait">Kuwait</option>
                                        <option value="Kyrgyzstan">Kyrgyzstan</option>
                                        <option value="Lao People's Democratic Republic">Lao People's Democratic Republic
                                        </option>
                                        <option value="Latvia">Latvia</option>
                                        <option value="Lebanon">Lebanon</option>
                                        <option value="Lesotho">Lesotho</option>
                                        <option value="Liberia">Liberia</option>
                                        <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                                        <option value="Liechtenstein">Liechtenstein</option>
                                        <option value="Lithuania">Lithuania</option>
                                        <option value="Luxembourg">Luxembourg</option>
                                        <option value="Macao">Macao</option>
                                        <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former
                                            Yugoslav
                                            Republic of</option>
                                        <option value="Madagascar">Madagascar</option>
                                        <option value="Malawi">Malawi</option>
                                        <option value="Malaysia">Malaysia</option>
                                        <option value="Maldives">Maldives</option>
                                        <option value="Mali">Mali</option>
                                        <option value="Malta">Malta</option>
                                        <option value="Marshall Islands">Marshall Islands</option>
                                        <option value="Martinique">Martinique</option>
                                        <option value="Mauritania">Mauritania</option>
                                        <option value="Mauritius">Mauritius</option>
                                        <option value="Mayotte">Mayotte</option>
                                        <option value="Mexico">Mexico</option>
                                        <option value="Micronesia, Federated States of">Micronesia, Federated States of
                                        </option>
                                        <option value="Moldova, Republic of">Moldova, Republic of</option>
                                        <option value="Monaco">Monaco</option>
                                        <option value="Mongolia">Mongolia</option>
                                        <option value="Montenegro">Montenegro</option>
                                        <option value="Montserrat">Montserrat</option>
                                        <option value="Morocco">Morocco</option>
                                        <option value="Mozambique">Mozambique</option>
                                        <option value="Myanmar">Myanmar</option>
                                        <option value="Namibia">Namibia</option>
                                        <option value="Nauru">Nauru</option>
                                        <option value="Nepal">Nepal</option>
                                        <option value="Netherlands">Netherlands</option>
                                        <option value="Netherlands Antilles">Netherlands Antilles</option>
                                        <option value="New Caledonia">New Caledonia</option>
                                        <option value="New Zealand">New Zealand</option>
                                        <option value="Nicaragua">Nicaragua</option>
                                        <option value="Niger">Niger</option>
                                        <option value="Nigeria">Nigeria</option>
                                        <option value="Niue">Niue</option>
                                        <option value="Norfolk Island">Norfolk Island</option>
                                        <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                        <option value="Norway">Norway</option>
                                        <option value="Oman">Oman</option>
                                        <option value="Pakistan">Pakistan</option>
                                        <option value="Palau">Palau</option>
                                        <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied
                                        </option>
                                        <option value="Panama">Panama</option>
                                        <option value="Papua New Guinea">Papua New Guinea</option>
                                        <option value="Paraguay">Paraguay</option>
                                        <option value="Peru">Peru</option>
                                        <option value="Philippines">Philippines</option>
                                        <option value="Pitcairn">Pitcairn</option>
                                        <option value="Poland">Poland</option>
                                        <option value="Portugal">Portugal</option>
                                        <option value="Puerto Rico">Puerto Rico</option>
                                        <option value="Qatar">Qatar</option>
                                        <option value="Reunion">Reunion</option>
                                        <option value="Romania">Romania</option>
                                        <option value="Russian Federation">Russian Federation</option>
                                        <option value="Rwanda">Rwanda</option>
                                        <option value="Saint Helena">Saint Helena</option>
                                        <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                        <option value="Saint Lucia">Saint Lucia</option>
                                        <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                        <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines
                                        </option>
                                        <option value="Samoa">Samoa</option>
                                        <option value="San Marino">San Marino</option>
                                        <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                        <option value="Saudi Arabia">Saudi Arabia</option>
                                        <option value="Senegal">Senegal</option>
                                        <option value="Serbia">Serbia</option>
                                        <option value="Seychelles">Seychelles</option>
                                        <option value="Sierra Leone">Sierra Leone</option>
                                        <option value="Singapore">Singapore</option>
                                        <option value="Slovakia">Slovakia</option>
                                        <option value="Slovenia">Slovenia</option>
                                        <option value="Solomon Islands">Solomon Islands</option>
                                        <option value="Somalia">Somalia</option>
                                        <option value="South Africa">South Africa</option>
                                        <option value="South Georgia and The South Sandwich Islands">South Georgia and The
                                            South
                                            Sandwich Islands</option>
                                        <option value="Spain">Spain</option>
                                        <option value="Sri Lanka">Sri Lanka</option>
                                        <option value="Sudan">Sudan</option>
                                        <option value="Suriname">Suriname</option>
                                        <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                        <option value="Swaziland">Swaziland</option>
                                        <option value="Sweden">Sweden</option>
                                        <option value="Switzerland">Switzerland</option>
                                        <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                                        <option value="Taiwan, Province of China">Taiwan, Province of China</option>
                                        <option value="Tajikistan">Tajikistan</option>
                                        <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                                        <option value="Thailand">Thailand</option>
                                        <option value="Timor-leste">Timor-leste</option>
                                        <option value="Togo">Togo</option>
                                        <option value="Tokelau">Tokelau</option>
                                        <option value="Tonga">Tonga</option>
                                        <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                        <option value="Tunisia">Tunisia</option>
                                        <option value="Turkey">Turkey</option>
                                        <option value="Turkmenistan">Turkmenistan</option>
                                        <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                        <option value="Tuvalu">Tuvalu</option>
                                        <option value="Uganda">Uganda</option>
                                        <option value="Ukraine">Ukraine</option>
                                        <option value="United Arab Emirates">United Arab Emirates</option>
                                        <option value="United Kingdom">United Kingdom</option>
                                        <option value="United States">United States</option>
                                        <option value="United States Minor Outlying Islands">United States Minor Outlying
                                            Islands
                                        </option>
                                        <option value="Uruguay">Uruguay</option>
                                        <option value="Uzbekistan">Uzbekistan</option>
                                        <option value="Vanuatu">Vanuatu</option>
                                        <option value="Venezuela">Venezuela</option>
                                        <option value="Viet Nam">Viet Nam</option>
                                        <option value="Virgin Islands, British">Virgin Islands, British</option>
                                        <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                                        <option value="Wallis and Futuna">Wallis and Futuna</option>
                                        <option value="Western Sahara">Western Sahara</option>
                                        <option value="Yemen">Yemen</option>
                                        <option value="Zambia">Zambia</option>
                                        <option value="Zimbabwe">Zimbabwe</option>
                                    </select>
                                </div>

                                <div class="title_bk">
                                    <h2>Categories</h2>
                                </div>
                                <div class="buttons_select">
                                    <div class="items">
                                        <div class="group">
                                            <button type="button" class="btn item-active -active">Women</button>
                                            <button type="button" class="btn item-active">Men</button>
                                            <button type="button" class="btn item-active">Bags</button>
                                        </div>
                                        <div class="group">
                                            <button type="button" class="btn item-active">Shoes</button>
                                            <button type="button" class="btn item-active -active">Watches</button>
                                            <button type="button" class="btn item-active">Glasses</button>
                                        </div>
                                    </div>
                                </div>

                                <div class="slider__range_chart">
                                    <div class="title_bk margin-t-20">
                                        <h2>Price (US)</h2>
                                        <div class="extra-controls">
                                            <input type="text" class="form-control js-input-from" value="0" />
                                            <span class="color-text">-</span>
                                            <input type="text" class="form-control js-input-to" value="0" />
                                        </div>
                                    </div>
                                    <div class="range-slider">
                                        <input type="text" class="js-range-slider" data-prefix="$" value="" />
                                    </div>
                                </div>

                                <div class="title_bk margin-t-20">
                                    <h2>Job Type</h2>
                                </div>
                                <div class="buttons_select">
                                    <div class="items">
                                        <div class="group">
                                            <button type="button" class="btn item-active -active">Full-Time</button>
                                            <button type="button" class="btn item-active">Part-Time</button>
                                            <button type="button" class="btn item-active">Projects</button>
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </div>
                        <div class="modal-footer border-0 pt-0 env-pb">
                            <a href="#"
                               class="btn min-w-140 bg-secondary m-0 hover:color-white color-white h-46 d-flex align-items-center rounded-8 justify-content-center">
                                Apply (3)
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>