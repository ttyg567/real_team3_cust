<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
  #map img{
    border-radius: 15px;
    width: 100%;
    height: 100%;
    border: #9f9f9f 1px solid;
  }


  .embody__content svg{
    margin-right: 15px;
  }
  .joincontent{
    margin-bottom: 15px;
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
  .navListProducts {
    white-space: nowrap;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    scroll-snap-type: x mandatory;
    scroll-padding: 10px;
  }

  .nav-item {
    scroll-snap-align: start;
    display: inline-block;
    margin-right: 10px;
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
  /* 운동 카테고리  */
  <%-- 운동 종목 : 텍스트 글씨 진하게 --%>
  .em__actions span{
    font-weight: bold;
  }
  .em__actions .icon{
    border-radius: 30px;
  }
  <%-- 운동 종목 : 아이콘 사진 크기 조정 --%>
  .icon img{
    width: 50px;
    height: 50px;
    background-color: white;
  }
  .nav-link{
    background-color: white;
  }
</style>

<!-- header 구간  -->
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
                           조인
                        </span>
      <%--        </a>--%>
    </div>
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
  <div id="content">


    <!-- 조인 카테고리 -->
    <section class="page_news">
      <div class="emBlock__border padding-l-0 bg-snow" style="width: 100%; padding-bottom: 0;
      overflow-x: auto; padding-left: 5px; background-color : white; border: none;
      scrollbar-width: none; -ms-overflow-style: none;">
        <p style="margin-left: 5px; margin-top: 7px; font-size: 11px; margin-bottom: 2px">관심가는 운동종목을 찾아 조인해 보세요🧐</p>
        <div class="em__actions">
          <ul class="nav navListProducts" style="display: inline-flex; width: max-content; margin-top: 5px">
            <li class="nav-item" style="padding-left: 15px;"><!-- 진한 글씨로 표기된 페이지 active '전체' -->
              <a class="nav-link" href="/groupboard/groupboard_list" style="padding-right: 7px;" >
                <div class="icon bg-opacity-10">
                  <img src="/assets/img/all.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                </div>
                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">전체</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="/groupboard/workout"  style="padding-right: 7px;">
                <div class="icon bg-opacity-10">
                  <img src="/assets/img/cate2.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);">
                </div>
                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;"
                >헬스</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/groupboard/personaltraining"  style="padding-right: 7px;">
                <div class="icon bg-opacity-10">
                  <img src="/assets/img/cate1.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                </div>
                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">PT</p>

              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/groupboard/crossfit"  style="padding-right: 7px;">
                <div class="icon bg-opacity-10">
                  <img src="/assets/img/cate3.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                </div>
                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 3px;">크로스핏</p>

              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/groupboard/yoga" style="padding-right: 7px;">
                <div class="icon bg-opacity-10">
                  <img src="/assets/img/cate4.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                </div>
                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">요가</p>

              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="/groupboard/pilates" style="padding-right: 7px;">
                <div class="icon bg-opacity-10">
                  <img src="/assets/img/cate5.png" alt=""  style="border-radius: 30px; padding: 5px;
               border: blueviolet 2px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);">
                </div>
                <p style="font-weight: bold; color: blueviolet; font-size: 12px; width: 50px; text-align: center; padding-top: 3px;">필라테스</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/groupboard/golf" style="padding-right:7px;">
                <div class="icon bg-opacity-10">
                  <img src="/assets/img/cate6.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                </div>
                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">골프</p>

              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/groupboard/swimming" style="padding-right: 7px;">
                <div class="icon bg-opacity-10">
                  <img src="/assets/img/cate7.png" alt=""  style="border-radius: 30px; padding: 5px;
                border: #f2f3f5 0.5px solid;
                box-shadow: 0 8px 6px -5px rgba(0, 0, 0, 0.2), 4px 4px 3px -3px rgba(0, 0, 0, 0.1);
">
                </div>
                <p style="color: gray; font-size: 12px; width: 50px; text-align: center; padding-top: 5px;">수영</p>

              </a>
            </li>
          </ul>
        </div>
      </div>
      <hr style="margin-top: 0">
      <c:forEach var="obj" items="${alljoin}" >
        <ul class="itemList__news">
            <%--  li : 화면에 보여질 조인들   --%>
          <li class="items-nav">
            <a class="btn"
               data-toggle="modal"
               data-target="#mdllJobDetails${obj.groupboardNo}">
              <div class="media align-items-center">
                  <%--1.대표 이미지--%><img class="img_news" src="/assets/img/${obj.groupboardImgname}" alt="">
                <div class="media-body">
                  <div class="txt">
                      <%--2.조인글 제목--%><h2 style="height: 20px">${obj.groupboardTitle}</h2>
                    <div class="info_bottom">
                      <div class="time">
                        <div class="icon">
                          <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-ticket-perforated color-text" viewBox="0 0 16 16">
                            <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                            <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                          </svg>
                        </div>
                          <%-- 이용권명 --%>
                        <span  style="color: black;">${obj.gymName}<span style="color: gray"> |  </span> ${obj.ticketName}</span>
                      </div>
                    </div>
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
                                    stroke-width="1.5" />
                              <path id="Stroke_3" data-name="Stroke 3"
                                    d="M2.119,3.99,0,2.726V0"
                                    transform="translate(5.781 3.053)" fill="none"
                                    stroke="#cbcdd8" stroke-linecap="round"
                                    stroke-linejoin="round" stroke-miterlimit="10"
                                    stroke-width="1.5" />
                            </g>
                          </svg>
                        </div>
                          <%--3. 신청인원 / 모집인원 --%>
                        <span style="color: black;">신청인원 <span style="font-weight: bold; color: blueviolet;">${obj.applicationMember}명</span><span style="color: gray"> |  </span> </span> <span>모집인원 ${obj.expectMember}명</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </a>
          </li>
        </ul>
      </c:forEach>
    </section>
    <!-- End. page_join -->

  </div>


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
                      <img src="/assets/img/${obj.groupboardImgname}" alt="" style="height:450px" >
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
                          <img src="/assets/img/${obj.groupboardImgname}" alt="">
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
                        </div>
                      </div>
                    </div>
                  </div>
                    <%-- 조인모집 작성내용 적히는 공간  --%>
                  <div class="embody__content">
                    <div style="height: 180px;  display: flex; flex-wrap: wrap; flex-direction: column; align-content: flex-start; align-items: flex-start;">
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
                          <%-- 조인 확정시 할인 예상금액 / 기본 할인 0% + 10% --%>
                          <div class="joincontent" style="text-align: left">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                              <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                              <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                              <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                            </svg>
                            <c:set var="joinDiscount" value="${obj.ticketDiscount + 10}" />
                            <span style="color: blueviolet; font-weight: bold">조인 헬쓱 회원가 <fmt:formatNumber value="${obj.ticketJoinPrice}" pattern="###,### 원" /> (<fmt:formatNumber value="${joinDiscount}"/>% 적용)</span>
                          </div>
                          <%-- 정상금액 --%>
                          <div class="joincontent" style="text-align: left">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                              <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                              <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                              <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                            </svg>

                            <span class="item_price">
                              일반 회원가
                              <span class="price_old">
                                  <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" />
                              </span>
                          </span>
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
                            <span style="color: blueviolet; font-weight: bold">조인 헬쓱 회원가 <fmt:formatNumber value="${obj.ticketJoinPrice}" pattern="###,### 원" /> (<fmt:formatNumber value="${joinDiscount}"/>% 적용)</span>
                          </div>
                          <%-- 정상금액 --%>
                          <div class="joincontent" style="text-align: left">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                              <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                              <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                              <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                            </svg>
                            <span class="item_price">
                              일반 회원가
                              <span class="price_old">
                                  <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" />
                              </span>
                          </span>
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
                      <div id="map" style="width: 100%; height: 250px;">
                      <img src="/assets/img/gym1_map.jpg" alt="">
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
                        <button type="submit" id="join_addbtn" style="margin-left: 50px; background-color: blueviolet; color: white"
                                class="btn btn__icon color-white min-w-175 text-left justify-content-between">
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
<!-- /.modal -->