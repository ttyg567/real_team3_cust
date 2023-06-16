<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</head>
<style>
    .nav .nav-item{
        width: 26%;
    }
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
        display: block;
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
</style>
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

    </div>
</header>
<!-- End.main_haeder -->
<section class="background_header gradient h-100">

    <!-- Start input_SaerchDefault -->
    <div class="padding-t-70 padding-l-20 padding-r-20" id="searchDefault">
        <div class="input_SaerchDefault">
            <%--                  <div class="form-group with_icon mb-0">--%>
            <%--                      <div class="input_group">--%>
            <%--                          <input type="search" class="form-control h-52 border-0"--%>
            <%--                                 placeholder="Try 'Internet 3 GB 6 Days' ">--%>
            <%--                          <div class="icon">--%>
            <%--                              <svg id="Iconly_Two-tone_Search" data-name="Iconly/Two-tone/Search"--%>
            <%--                                   xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">--%>
            <%--                                  <g id="Search" transform="translate(2 2)">--%>
            <%--                                      <circle id="Ellipse_739" cx="8.989" cy="8.989" r="8.989"--%>
            <%--                                              transform="translate(0.778 0.778)" fill="none" stroke="#200e32"--%>
            <%--                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"--%>
            <%--                                              stroke-width="1.5" />--%>
            <%--                                      <path id="Line_181" d="M0,0,3.524,3.515"--%>
            <%--                                            transform="translate(16.018 16.485)" fill="none" stroke="#200e32"--%>
            <%--                                            stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"--%>
            <%--                                            stroke-width="1.5" opacity="0.4" />--%>
            <%--                                  </g>--%>
            <%--                              </svg>--%>
            <%--                          </div>--%>
            <%--                          <div class="side_voice">--%>
            <%--                              <button type="button" class="btn btn_voice">--%>
            <%--                                  <svg id="Iconly_Two-tone_Voice" data-name="Iconly/Two-tone/Voice"--%>
            <%--                                       xmlns="http://www.w3.org/2000/svg" width="24" height="24"--%>
            <%--                                       viewBox="0 0 24 24">--%>
            <%--                                      <g id="Voice" transform="translate(4 2)">--%>
            <%--                                          <path id="Stroke_1" data-name="Stroke 1" d="M0,0A7.4,7.4,0,1,0,14.808,0"--%>
            <%--                                                transform="translate(0.714 8.932)" fill="none" stroke="#200e32"--%>
            <%--                                                stroke-linecap="round" stroke-linejoin="round"--%>
            <%--                                                stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />--%>
            <%--                                          <path id="Stroke_3" data-name="Stroke 3" d="M.476,2.81V0"--%>
            <%--                                                transform="translate(7.642 16.336)" fill="none" stroke="#200e32"--%>
            <%--                                                stroke-linecap="round" stroke-linejoin="round"--%>
            <%--                                                stroke-miterlimit="10" stroke-width="1.5" opacity="0.4" />--%>
            <%--                                          <path id="Stroke_5" data-name="Stroke 5"--%>
            <%--                                                d="M3.912,11.87H3.66A3.66,3.66,0,0,1,0,8.21V3.66A3.661,3.661,0,0,1,3.66,0h.252a3.661,3.661,0,0,1,3.66,3.66V8.21A3.66,3.66,0,0,1,3.912,11.87Z"--%>
            <%--                                                transform="translate(4.332 0.714)" fill="none" stroke="#200e32"--%>
            <%--                                                stroke-linecap="round" stroke-linejoin="round"--%>
            <%--                                                stroke-miterlimit="10" stroke-width="1.5" />--%>
            <%--                                      </g>--%>
            <%--                                  </svg>--%>
            <%--                              </button>--%>
            <%--                          </div>--%>
            <%--                      </div>--%>
            <%--                  </div>--%>
        </div>
    </div>
    <!-- End. input_SaerchDefault -->

    <!-- Start navListProducts -->
    <div class="padding-l-20 padding-t-10">
        <ul class="nav navListProducts with__lined navWhite">
            <li class="nav-item">
                <a class="nav-link" href="/">투데이</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="/best">베스트</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href=/discount>회원맞춤</a>
            </li>
        </ul>
    </div>
    <!-- End. navListProducts -->

</section>
<!-- End.main_haeder -->