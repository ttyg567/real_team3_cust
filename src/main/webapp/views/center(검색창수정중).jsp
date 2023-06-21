<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
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
#ringBtn{
    border-radius: 15px;
    border-color: blueviolet;
    background-color: white;
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
/* 지도 */
.map_wrap, .map_wrap * {
    margin: 0;
    padding: 0;
    font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
    font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
    color: #000;
    text-decoration: none;
}

.map_wrap {
    position: relative;
    width: 100%;
    height: 500px;
}

#menu_wrap {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    width: 250px;
    margin: 10px 0 30px 10px;
    padding: 5px;
    overflow-y: auto;
    background: rgba(255, 255, 255, 0.7);
    z-index: 1;
    font-size: 12px;
    border-radius: 10px;
}

.bg_white {
    background: #fff;
}

#menu_wrap hr {
    display: block;
    height: 1px;
    border: 0;
    border-top: 2px solid #5F5F5F;
    margin: 3px 0;
}

#menu_wrap .option {
    text-align: center;
}

#menu_wrap .option p {
    margin: 10px 0;
}

#menu_wrap .option button {
    margin-left: 5px;
}

#placesList li {
    list-style: none;
}

#placesList .item {
    position: relative;
    border-bottom: 1px solid #888;
    overflow: hidden;
    cursor: pointer;
    min-height: 65px;
}

#placesList .item span {
    display: block;
    margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}

#placesList .item .info {
    padding: 10px 0 10px 55px;
}

#placesList .info .gray {
    color: #8a8a8a;
}

#placesList .info .jibun {
    padding-left: 26px;
    background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;
}

#placesList .info .tel {
    color: #009900;
}

#placesList .item .markerbg {
    float: left;
    position: absolute;
    width: 36px;
    height: 37px;
    margin: 10px 0 0 10px;
    background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;
}

#placesList .item .marker_1 {
    background-position: 0 -10px;
}

#placesList .item .marker_2 {
    background-position: 0 -56px;
}

#placesList .item .marker_3 {
    background-position: 0 -102px
}

#placesList .item .marker_4 {
    background-position: 0 -148px;
}

#placesList .item .marker_5 {
    background-position: 0 -194px;
}

#placesList .item .marker_6 {
    background-position: 0 -240px;
}

#placesList .item .marker_7 {
    background-position: 0 -286px;
}

#placesList .item .marker_8 {
    background-position: 0 -332px;
}

#placesList .item .marker_9 {
    background-position: 0 -378px;
}

#placesList .item .marker_10 {
    background-position: 0 -423px;
}

#placesList .item .marker_11 {
    background-position: 0 -470px;
}

#placesList .item .marker_12 {
    background-position: 0 -516px;
}

#placesList .item .marker_13 {
    background-position: 0 -562px;
}

#placesList .item .marker_14 {
    background-position: 0 -608px;
}

#placesList .item .marker_15 {
    background-position: 0 -654px;
}

#pagination {
    margin: 10px auto;
    text-align: center;
}

#pagination a {
    display: inline-block;
    margin-right: 10px;
}

#pagination .on {
    font-weight: bold;
    cursor: default;
    color: #777;
}
</style>



<div id="wrapper">
  <div id="content">
      <!--별도의 mainheader 구간  -->
      <jsp:include page="/views/mainheader.jsp" />

    <section class="components_page paddingTab_header" style="padding-top: 0px">

      <div class="tab-content padding-0" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
             aria-labelledby="pills-home-tab">
          <!-- 첫번째 탭 . 내용넣는 구간 -->
          <!-- Start banner_swiper -->
          <div class="banner_swiper margin-b-30">
            <!-- Swiper -->
            <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe margin-t-20">
              <div class="item em_item"><!-- 1번 배너 -->
                <div class="em_img">
                  <a href="/groupboard" class="em_link">
                  <img src="/assets/img/mainbanner1.png" alt="">
                  </a>
                </div>
              </div>
              <div class="item em_item"><!-- 2번 배너 -->
                <div class="em_img">
                  <a href="/groupboard" class="em_link">
                    <img src="/assets/img/mainbanner1.png" alt="">
                  </a>
                </div>
              </div>
              <div class="item em_item"><!-- 3번 배너 -->
                <div class="em_img">
                  <a href="/groupboard" class="em_link">
                    <img src="/assets/img/mainbanner1.png" alt="">
                  </a>
                </div>
              </div>
            </div>
            <br>
            <%--  카테고리 시작  --%>
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
              <hr style="height: 20px; color: #EFECEC; border: none; border-top: 10px solid;">

          <!-- 카테고리 밑 혼잡도 안내 시작 -->
          <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
            <c:choose>
                <c:when test="${logincust == null}">
                  <div>
                      <h3 class="size-15 weight-500 color-secondary m-0">회원님 주변 헬쓱 운동센터를 둘러보세요</h3>
                      <p class="size-9 color-text m-0 pt-1">헬쓱에서 운동이용권을 결제하시면 운동수업 예약이 더욱 편리해져요</p>
                  </div>
                </c:when>
                <c:otherwise>
                    <div>
                        <h3 class="size-15 weight-500 color-secondary m-0">지금 ${logincust.custName}님의 운동센터 혼잡도는 <span style="color: limegreen; font-weight: bold;">맑음</span> 이에요</h3>
                        <p class="size-9 color-text m-0 pt-1">자주 이용하는 운동기구를 즐겨찾기하고 빠르게 확인해요</p>
                    </div>
                </c:otherwise>
            </c:choose>
          </div><br>
              <!-- 센터 기구 항목 나열 -->
              <section class=" components_page padding-b-30">
                  <!-- 미로그인 고객이 메인페이지 오면, 카카오 지도로 센터 추천과 검색 기능보이게. -->
                  <c:choose>
                  <c:when test="${logincust == null}">
                      <!-- Start 검색창 -->
                      <section class="margin-t-10 padding-t-50 padding-l-20 padding-r-20 padding-b-20 bg-white"
                               id="searchDefault">
                          <div class="input_SaerchDefault">
                              <div class="form-group with_icon mb-0">
                                  <div class="input_group">
                                      <input type="search" class="form-control h-48" placeholder="둘러볼 지역명으로 검색">
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
                                      <div class="side_voice">
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
                      <!-- End. 검색창 -->
                      <div class="map_wrap">
                          <div class="search_area">
                              <form onsubmit="searchPlaces(); return false;">
                                  <label for="keyword">지역 :</label>
                                  <input type="text" value="성수" id="keyword" size="15">
                                  <button type="submit">검색하기</button>
                              </form>
                          </div>
                          <div id="map" style="width: 100%; height: 400px; position: relative; overflow: hidden;"></div>
                          <div id="placesList"></div>
                          <div id="pagination"></div>
                      </div>

                  </c:when>
                  <c:otherwise><!-- 로그인 고객에겐, 이용중인 센터 혼잡도 -->
                      <%--                      <div class="map_wrap">--%>
                      <%--                          <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>--%>

                      <%--                          <div id="menu_wrap" class="bg_white">--%>
                      <%--                              <div class="option">--%>
                      <%--                                  <div>--%>
                      <%--                                      <form onsubmit="searchPlaces(); return false;">--%>
                      <%--                                          지역 :--%>
                      <%--                                                  <input type="text" value="성수" id="keyword" size="15">--%>
                      <%--                                          <button type="submit">검색하기</button>--%>
                      <%--                                      </form>--%>
                      <%--                                  </div>--%>
                      <%--                              </div>--%>
                      <%--                              <hr>--%>
                      <%--                              <ul id="placesList"></ul>--%>
                      <%--                              <div id="pagination"></div>--%>
                      <%--                          </div>--%>
                      <%--                      </div>--%>
                  <div class="pt_simpleDetails m-0 py-2 rounded-0 emBlock__border">
                      <div class="em_bodyinner">
                          <div class="embkRateCustomer" >
                              <div class="emBoxRating">
                                  <div class="row" style="height: 160px">
                                      <div class="col-4" style="height: 150px; padding-right: 0px">
                                          <img src="/img/good.png"  alt="" style="height: 90%; padding-bottom: 15px; padding-top: 15px;">
                                      </div>
                                      <div class="col-8" style="height: 150px">
<%--                                          <span class="size-13 color-black m-0 pt-1" style="font-weight: bold">나의 운동기구</span>--%>
                                            <div class="btn btn_smView d-flex align-items-center" data-toggle="tooltip"
                                                 data-placement="top"
                                                 title="아래 별모양을 클릭하고 자주 찾는 기구들은 한눈에 보세요"
                                                 style="width: 100%; height: 30px; background-color: white; font-size: 13px; color: black; font-weight: bold; margin: 0px; padding-left: 0px; ">
                                                <span class="size-13 color-black m-0 pt-1" style="font-weight: bold; padding-right: 5px; text-align: left; padding-left: 0px; flex: 1;">나의 운동기구</span>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor"
                                                     class="bi bi-patch-exclamation-fill color-facebook" viewBox="0 0 16 16"
                                                     style="vertical-align: middle;">
                                                    <path d="M10.067.87a2.89 2.89 0 0 0-4.134 0l-.622.638-.89-.011a2.89 2.89 0 0 0-2.924 2.924l.01.89-.636.622a2.89 2.89 0 0 0 0 4.134l.637.622-.011.89a2.89 2.89 0 0 0 2.924 2.924l.89-.01.622.636a2.89 2.89 0 0 0 4.134 0l.622-.637.89.011a2.89 2.89 0 0 0 2.924-2.924l-.01-.89.636-.622a2.89 2.89 0 0 0 0-4.134l-.637-.622.011-.89a2.89 2.89 0 0 0-2.924-2.924l-.89.01-.622-.636zM8 4c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995A.905.905 0 0 1 8 4zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                                </svg>
                                            </div>
                                            <br>
                                          <div class="group">
                                          </div>
                                          <div class="progress__rate">
                                              <div class="">
                                                        <c:forEach var="obj" items="${myMachine}">
                                                            <c:set var="canQuantity" value="${canQuantity = (obj.holdingQuantity - obj.usingQuantity) }" />
                                                            <input type="hidden" name="holdingQuantity" value="${obj.holdingQuantity}"/>
                                                              <input type="hidden" name="usingQuantity" value="${obj.usingQuantity}"/>
                                                              <div class="item" style="height: 40px;  display: flex; align-items: center;">
                                                                  <div style="width:90%;">
                                                                      <p class="size-13 color-black m-0 pt-1">${obj.machineName}</p>
                                                                    <%-- 그래프 그리기  --%>
                                                                      <c:choose>
                                                                          <c:when test="${canQuantity == 0}">
                                                                              <div style="display: flex; align-items: center; justify-content: space-between;">
                                                                              <div class="progress" style="height: 8px;">
                                                                                  <div class="progress-bar" role="progressbar" style="width: 100%; background-color: #ff8000;"
                                                                                       aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                                                  </div>
                                                                              </div><%-- 즐겨찾기 해제(삭제) 버튼 --%>
                                                                              <a href="/removemymachine?machineNo=${obj.machineNo}">
                                                                                  <i class="ri-close-fill color-text" style="padding-left:5px;"></i>
                                                                              </a>
                                                                              </div>
                                                                          </c:when>
                                                                          <c:when test="${canQuantity <= 2}">
                                                                              <div style="display: flex; align-items: center; justify-content: space-between;">
                                                                                  <div class="progress" style="height: 8px;">
                                                                                      <div class="progress-bar" role="progressbar" style="width: 60%; background-color: #1E90FF;"
                                                                                           aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                                                      </div>
                                                                                  </div>
                                                                                  <a href="/removemymachine?machineNo=${obj.machineNo}">
                                                                                      <i class="ri-close-fill color-text"></i>
                                                                                  </a>
                                                                              </div>
                                                                          </c:when>
                                                                          <c:otherwise>
                                                                            <div style="display: flex; align-items: center; justify-content: space-between;">
                                                                              <div class="progress" style="height: 8px;">
                                                                                  <div class="progress-bar" role="progressbar" style="width: 20%; background-color: #32CD32;"
                                                                                       aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                                                  </div>
                                                                              </div>
                                                                                <a href="/removemymachine?machineNo=${obj.machineNo}">
                                                                                    <i class="ri-close-fill color-text"></i>
                                                                                </a>
                                                                            </div>
                                                                          </c:otherwise>
                                                                      </c:choose>


                                                                  </div>
                                                              </div>
                                                          </c:forEach>


                                              </div>
                                          </div>
                                      </div>
                                  </div>

                              </div>
                          </div>
                    <%-- 센터가 보유한 운동기구 나열 --%>
                          <p class="size-14 color-black m-0 pt-1" style="font-weight: bold; padding-bottom: 10px">이용이 가능한 운동기구</p>
                          <%-- 검색 버튼 --%>
                          <a href="/getmymachine">
                          <button type="button" class="btn btn-outline-secondary"
                                  style="border-radius: 15px; font-size: 8px;">My기구
                          </button></a>
                          <button type="button" class="btn btn-outline-secondary"
                                  data-toggle="modal"
                                  data-target="#mdllFilter"
                                  style="border-radius: 15px; font-size: 8px;">시간대별 <i class="tio-chevron_down -arrwo"></i>
                          </button>
                          <button type="button" class="btn btn-outline-secondary"
                                  data-toggle="modal"
                                  data-target="#mdllFilter"
                                  style="border-radius: 15px; font-size: 8px;">부위별 <i class="tio-chevron_down -arrwo"></i>
                          </button>
                          <%-- 기구 리스트 나열 --%>
                          <section class="emPage__basket npPkg__basket default" style="padding-top: 10px">
                            <c:forEach  var="obj" items="${gymAllMachine}" >
                              <form name="machine_form" id="machine_form"  action="/addmymachine" method="get">
                                  <input type="hidden" name="custNo" value="${logincust.custNo}"/>
                                  <input type="hidden" name="machineNo" value="${obj.machineNo}"/>
                                  <input type="hidden" name="gymNo" value="${obj.gymNo}"/>
                                  <input type="hidden" name="myMachineStatus" value="1"/>
<%--                                  <input type="hidden" name="myMachineStatus" value="${obj.myMachineStatus}"/>--%>
                                  <div class="itemPkg_cart" data-toggle="modal"
                                   data-target="#mdllAdd_Address${obj.machineNo}"><!-- 클릭 시 상세 기구보기 모달로 이동 -->
                                  <div class="sideleft" style="height: 60px">
                                      <div class="item_rate">
                                          <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->
                                          <div class="item_progress">
                                              <c:set var="canQuantity" value="${canQuantity = (obj.holdingQuantity - obj.usingQuantity) }" />
                                              <!-- canQuantity : 사용가능한 기구가 0이면 빨강(혼잡) 2이하면 파랑(보통) 3이상이면 여유(녹색)-->
                                              <c:choose>
                                                   <c:when test="${canQuantity == 0}">
                                                      <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                          <input type="image" data-width="60" value="100" data-fgColor="#ff8000"
                                                                 data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                                 src="/img/${obj.machineImgname}" style="width: 25px; height: 25px; "
                                                                 data-readOnly="true" data-linecap="round">
                                                      </div>
                                                  </c:when>
                                                  <c:when test="${canQuantity <= 2}">
                                                      <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                          <input type="image" data-width="60" value="60" data-fgColor="#1E90FF"
                                                                 data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                                 src="/img/${obj.machineImgname}" style="width: 25px; height: 25px; "
                                                                 data-readOnly="true" data-linecap="round">
                                                      </div>
                                                  </c:when>
                                                  <c:otherwise>
                                                      <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                          <input type="image" data-width="60" value="20" data-fgColor="#32CD32"
                                                                 data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                                 src="/img/${obj.machineImgname}" style="width: 25px; height: 25px; "
                                                                 data-readOnly="true" data-linecap="round">
                                                      </div>
                                                  </c:otherwise>
                                              </c:choose>

                                          </div>
                                      </div>
                                      <div>
                                              <div class="em__pkLink">
                                                  <ul class="nav__list with_border fullBorder mb-0">
                                                      <li>
                                              <div class="item-link hoverNone" style="padding: 0">
                                                  <div class="group">
                                                      <span class="short__name"></span>
                                                      <span>${obj.machineName}</span>
                                                        <c:choose>
                                                            <c:when test="${canQuantity == 0}">
                                                                <span class="number_item" style="margin-left: 6px">혼잡</span>
                                                            </c:when>
                                                            <c:when test="${canQuantity <= 2}">
                                                                <span class="number_item" style="margin-left: 6px; color: blue; border: 1px solid blue;">보통</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="number_item" style="margin-left: 6px; color: limegreen; border: 1px solid limegreen;">여유</span>
                                                            </c:otherwise>
                                                         </c:choose>


                                                  </div>
                                              </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                          <p style="font-size: 9px;" class="color-text">#정직한 #유산소운동</p>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                                          </svg>
                                          <c:set var="canQuantity" value="${canQuantity = (obj.holdingQuantity - obj.usingQuantity) }" />
                                          <span style="font-size: 12px; font-weight: bold"><fmt:formatNumber value="${canQuantity}" />대 남음</span>

                                      </div>
                                  </div>
                                  <%-- 상세페이지 내 즐겨찾기 버튼 id :  machineSave  --%>
                                  <div class="npPage__balanceProvider" style="padding: 0; ">
                                      <div class="npblock__favorite" style="padding: 0; border: none;">
                                          <button type="submit" id="machineSave"
                                                  class="btn btn_favorite item-active" style="border: none;">
                                              <i class="ri-star-s-line"></i>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                              </form>
                            </c:forEach>

                          </section>





              <!-- End. em_swiper_products -->

          </div><!-- 첫번째 탭 끝. -->
        </div>
      </c:otherwise>
      </c:choose>

              </section>
        </div>
<%--      </div>--%>

    </section>

  </div>
</div>



<%-- 기구 검색 필터 모달 1 --%>
<!-- Modal Content -->
<div class="modal transition-bottom screenFull defaultModal emModal__filters fade" id="mdllFilter" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form id="search_form" action="/selectExerciseType" method="get">
    <input type="hidden" name="custNo" value="${logincust.custNo}"/>
    <input type="hidden" name="machineNo" value="${obj.machineNo}"/>
    <input type="hidden" name="gymNo" value="${obj.gymNo}"/>
    <input type="hidden" name="myMachineStatus" value="1"/>
    <div class="modal-dialog modal-dialog-scrollable">

        <div class="modal-content">
            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                <div class="itemProduct_sm">
                    <h1 class="size-18 weight-600 color-secondary m-0">운동기구 검색</h1>
                </div>
            </div>
            <div class="modal-body padding-b-100">
                <div class="em_box_content_filter">
                    <div class="title_bk">
                        <h2>상체</h2>
                    </div>
                    <div class="buttons_select">
                        <div class="items">
                            <div class="btn-group" role="group"
                                 name="exerciseType"
                                 aria-label="Basic checkbox toggle button group">
                                <input type="checkbox" class="btn-check" id="btncheck1" value="1" autocomplete="off" name="exerciseType" style="display: none;"
                                       <c:if test="${ms.exerciseType == '1'}"></c:if>>
                                <label class="btn btn-outline-primary" for="btncheck1">등</label>

                                <input type="checkbox" class="btn-check" id="btncheck2" value="1" autocomplete="off" name="exerciseType" style="display: none;"
                                <c:if test="${ms.exerciseType == '1'}"></c:if>>
                                <label class="btn btn-outline-primary" for="btncheck2">어깨</label>

                                <input type="checkbox" class="btn-check" id="btncheck3" value="1" autocomplete="off" name="exerciseType" style="display: none;"
                                       <c:if test="${ms.exerciseType == '1'}"></c:if>>
                                <label class="btn btn-outline-primary" for="btncheck3">팔</label>
                            </div>

                        </div>
                    </div>
                    <br>
                    <div class="title_bk">
                        <h2>하체</h2>
                    </div>
                    <div class="buttons_select">
                        <div class="items">
                            <div class="btn-group" role="group"
                                 name="exerciseType"
                                 aria-label="Basic checkbox toggle button group">
                                <input type="checkbox" class="btn-check" id="btncheck4" value="2" autocomplete="off" name="exerciseType" style="display: none;"
                                <c:if test="${ms.exerciseType == '2'}"></c:if>>
                                <label class="btn btn-outline-primary" for="btncheck4">허벅지</label>

                                <input type="checkbox" class="btn-check" id="btncheck5" value="2" autocomplete="off" name="exerciseType" style="display: none;"
                                <c:if test="${ms.exerciseType == '2'}"></c:if>>
                                <label class="btn btn-outline-primary" for="btncheck5">종아리</label>

                                <input type="checkbox" class="btn-check" id="btncheck6" value="2" autocomplete="off" name="exerciseType" style="display: none;"
                                <c:if test="${ms.exerciseType == '2'}"></c:if>>
                                <label class="btn btn-outline-primary" for="btncheck6">엉덩이</label>
                            </div>
                        </div>
                    </div>

                    <div class="title_bk margin-t-20">
                        <h2>운동 시간</h2>
                    </div>
                    <div class="emPatternSizes">
                        <div class="box_sizes justify-content-center" style="display: flex; flex-direction: column;">
                            <div class="item" style="width: 200px; border-radius: 10px; margin-bottom: 5px">오전 7시 ~ 오전 9시</div>
                            <div class="item selected" style="width: 200px; border-radius: 10px; margin-bottom: 5px">오전 10시 ~ 오후 1시</div>
                            <div class="item" style="width: 200px; border-radius: 10px; margin-bottom: 5px">오후 2시 ~ 오후 5시</div>
                            <div class="item" style="width: 200px; border-radius: 10px; margin-bottom: 5px">오후 6시 ~ 오후 9시</div>
                            <div class="item" style="width: 200px; border-radius: 10px; ">오후 10시 ~ 오후 11시</div>
                        </div>
                    </div>

                    </div>

                </div>
            <div class="modal-footer border-0 pt-0 env-pb">
                <button id="search_btn" type="submit" class="btn btn-info">검색하기</button>
            </div>
            </div>



        </div>
    </form>


    </div>
<%-- 기구 상세보기 모달 2 --%>
<!-- Modal -->
<c:forEach  var="obj" items="${gymAllMachine}" >
<form name="machine_form" id="machine_form"  action="/addmymachine" method="get">
<input type="hidden" name="custNo" value="${logincust.custNo}"/>
<input type="hidden" name="machineNo" value="${obj.machineNo}"/>
<input type="hidden" name="gymNo" value="${obj.gymNo}"/>
<input type="hidden" name="myMachineStatus" value="1"/>
<div class="modal defaultModal modalCentered change__address fade" id="mdllAdd_Address${obj.machineNo}" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                <div class="itemProduct_sm">
                    <h1 class="size-18 weight-600 color-secondary m-0">${obj.machineName}</h1>
                </div>
                <%--    즐겨찾기 버튼   --%>
                <div class="npPage__balanceProvider" style="padding: 0; ">
                    <div class="npblock__favorite" style="padding: 0; border: none; ">
                        <button type="submit" id="machineSave"
                                class="btn btn_favorite item-active" style="border: none;">
                            <i class="ri-star-s-line"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="modal-body">
                <ul class="nav__listAddress itemSingle"  style="display: flex; align-items: center; flex-direction: column;">
                       <img src="/img/${obj.machineImgname}" alt="" style="width: 120px; height: 120px;"><br>
                        <p class="size-12 color-text" style="text-align: center;">
                            <span style="color: black">인기시간대 <span style="color: blueviolet; font-weight: bold; font-size: 14px;">오후 6시 23분🌟</span></span><br>
                            <span style="color: black">평균 이용회원이 지난 주보다</span> <span style="color: blueviolet; font-weight: bold;  font-size: 14px;">2.6명 ↑</span><br>
                            <span style="color: black">보통 이 기구에서 회원들이</span> <span style="color: blueviolet; font-weight: bold;  font-size: 14px;">${obj.usingTime} 머물러요</span>
                        </p><br>
                    <li class="item selected">
                        <div class="personal__info">
                            <div class="areaRight">
                                <span class="circle_check" style="width: 15px; height: 15px; margin-right: 5px;"></span>
                                <p  class="size-15 color-secondary weight-400">기구 사용 Tip</p>
                            </div>
                            <p class="size-11 color-text weight-400">등 근육을 키울 때 매우 적합한 운동으로,<br> 손잡이의 너비를 조절해가며 다양한 운동부위를 타깃으로 정할 수 있어요!</p>
                        </div>

                    </li>

                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn_default_lg"
                        data-dismiss="modal" aria-label="Close">확인</button>

            </div>
        </div>
    </div>
</div>
</form>
</c:forEach>
</div>

</div>



<script>
    <%--   운동기구 search 기능     --%>
    // let machine_search = {
    //     init : function () {
    //         $('#search_btn').click(function (){
    //             machine_search.send();
    //         });
    //     },
    //     send : function () {
    //         $('#search_form').attr({
    //             action: '/selectExerciseType', // main 컨트롤러에서 처리.
    //             method: 'get'
    //         });
    //         $('#search_form').submit();
    //     }
    // }
    // 마커를 담을 배열입니다
    var markers = [];

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
            level : 3 // 지도의 확대 레벨
        };

    // 지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({zIndex: 1});

    // 키워드로 장소를 검색
    searchPlaces();

    // 키워드 검색을 요청하는 함수
    function searchPlaces() {
        var keyword = document.getElementById('keyword').value;

        if (!keyword.replace(/^\s+|\s+$/g, '')) {
            // alert('키워드를 입력해주세요!');
            return false;
        }

        // getDBResults 함수를 구현하여 해당 키워드에 맞는 헬스장 정보를 get
        getDBResults(keyword, function (results) {
            console.log("키워드 '" + keyword + "'로 검색 결과:");
            console.log(results);

            // 주소를 좌표로 변환하여 지도에 마커를 표시
            geocodeAddress(results);

        });
    }

    function getDBResults(keyword, callback) {
        // DB 주소 정보 가져오기
        $.ajax({
            url     : '/map/getaddress',
            dataType: 'json',
            success : function (data) {
                let gymAddresses = data;

                let filteredResults = gymAddresses.filter(function (result) {
                    // 추후 종목 추가할 것!
                    return result.gymAddress.includes(keyword);
                });

                callback(filteredResults);
            },
            error   : function () {
                console.log('error');
                callback([]);
            }
        });
    }

    // 주소를 좌표로 변환하여 지도에 마커를 표시하는 함수
    function geocodeAddress(gymAddresses) {

        var listEl = document.getElementById('placesList'),
            menuEl = document.getElementById('menu_wrap'),
            fragment = document.createDocumentFragment(),
            bounds = new kakao.maps.LatLngBounds(),
            listStr = '';

        // 검색 결과 목록에 추가된 항목들을 제거합니다
        removeAllChildNods(listEl);

        // 지도에 표시되고 있는 마커를 제거합니다
        removeMarker();

        for (let i = 0; i < gymAddresses.length; i++) {
            let gymAddress = gymAddresses[i].gymAddress;
            let gymName = gymAddresses[i].gymName;

            // 비동기
            // 주소를 좌표로 변환합니다
            // geocoder.addressSearch 비동기 함수로 변환 작업이 완료되기 전에 다음 작업을 실행하게 되면 마커가 찍히지 않는다. 해결방법으로는 비동기 작업이 완료된 후에 마커를 추가하고 지도 범위를 설정
            // 콜백함수 또는 프로미스를 사용하거나 한꺼번에 처리
            geocoder.addressSearch(gymAddress, function (result, status) {
                // 정상적으로 좌표 검색이 완료됐으면
                if (status === kakao.maps.services.Status.OK) {
                    // 마커를 생성하고 지도에 표시합니다
                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                    var marker = addMarker(coords, i);
                    console.log("좌표 찍겠습니다" + coords);
                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                    // LatLngBounds 객체에 좌표를 추가합니다
                    bounds.extend(coords);

                    let itemEl = getListItem(i, gymAddresses[i]);  // 검색 결과 항목 Element를 생성합니다
                    fragment.appendChild(itemEl);
                    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
                    listEl.appendChild(fragment);
                    menuEl.scrollTop = 0;
                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                    map.setBounds(bounds);

                    // 페이지 번호를 표출합니다
                    displayPagination(pagination);

                    // 마커와 검색결과 항목에 mouseover 했을때
                    // 해당 장소에 인포윈도우에 장소명을 표시합니다
                    // mouseout 했을 때는 인포윈도우를 닫습니다
                    (function (marker, title) {
                        kakao.maps.event.addListener(marker, 'mouseover', function () {
                            displayInfowindow(marker, title);
                        });
                        kakao.maps.event.addListener(marker, 'mouseout', function () {
                            infowindow.close();
                        });
                        itemEl.onmouseover = function () {
                            displayInfowindow(marker, title);
                        };

                        itemEl.onmouseout = function () {
                            infowindow.close();
                        };
                    })(marker, gymName);
                } else {
                    console.log("실패한 주소 찍겠습니다" + gymAddresses[i].gymAddress);
                    console.log("실패한 센터 번호 찍겠습니다" + gymAddresses[i].gymNo);
                }
            });
        }
    }

    // 검색결과 항목을 Element로 반환하는 함수입니다
    function getListItem(index, places) {

        var el = document.createElement('li'),
            itemStr = '<span class="markerbg marker_' + (index + 1) + '"></span>' +
                '<div class="info" data-gymNo="' + places.gymNo + '">' +
                '   <h5>' + places.gymName + '</h5>';
        itemStr += '    <span>' + places.gymAddress + '</span>';
        itemStr += '  <span class="tel">' + places.gymPhone + '</span>' +
            '</div>';

        el.innerHTML = itemStr;
        el.className = 'item';

        // 검색결과 항목 클릭 이벤트 처리
        el.addEventListener('click', function () {
            var gymNo = this.querySelector('.info').getAttribute('data-gymNo');
            navigateToDetailPage(gymNo); // 디테일 화면으로 이동하는 함수 호출
        });

        return el;
    }

    // 디테일 화면으로 이동하는 함수
    function navigateToDetailPage(gymNo) {
        window.location.href = '/ticket/detail?gymNo=' + gymNo;
    }

    // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
    function addMarker(position, idx, title) {
        var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
            imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
            imgOptions = {
                spriteSize  : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                spriteOrigin: new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                offset      : new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
            },
            markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
                position: position, // 마커의 위치
                image   : markerImage
            });

        marker.setMap(map); // 지도 위에 마커를 표출합니다
        markers.push(marker);  // 배열에 생성된 마커를 추가합니다

        return marker;
    }

    // 지도 위에 표시되고 있는 마커를 모두 제거합니다
    function removeMarker() {
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }
        markers = [];
    }

    // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
    function displayPagination(pagination) {
        var paginationEl = document.getElementById('pagination'),
            fragment = document.createDocumentFragment(),
            i;

        // 기존에 추가된 페이지번호를 삭제합니다
        while (paginationEl.hasChildNodes()) {
            paginationEl.removeChild(paginationEl.lastChild);
        }

        for (i = 1; i <= pagination.last; i++) {
            var el = document.createElement('a');
            el.href = "#";
            el.innerHTML = i;

            if (i === pagination.current) {
                el.className = 'on';
            } else {
                el.onclick = (function (i) {
                    return function () {
                        pagination.gotoPage(i);
                    }
                })(i);
            }

            fragment.appendChild(el);
        }
        paginationEl.appendChild(fragment);
    }

    // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
    // 인포윈도우에 장소명을 표시합니다
    function displayInfowindow(marker, title) {
        var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

        infowindow.setContent(content);
        infowindow.open(map, marker);
    }

    // 검색결과 목록의 자식 Element를 제거하는 함수입니다
    function removeAllChildNods(el) {
        while (el.hasChildNodes()) {
            el.removeChild(el.lastChild);
        }
    }



    // 실행
    $(function (){
        machine_search.init();
        //myMachine_form.init();
    });

</script>