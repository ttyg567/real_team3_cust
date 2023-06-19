<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
              <div>
                  <h3 class="size-18 weight-500 color-secondary m-0">지금 ${logincust.custName}님의 운동센터 혼잡도는 <span style="color: limegreen; font-weight: bold;">맑음</span> 이에요</h3>
                  <p class="size-13 color-text m-0 pt-1">헬쓱에서 운동 수업을 예약하시기 전에 활용할 수 있어요</p>
              </div>
          </div><br>
              <!-- 센터 기구 항목 나열. page-balance-provider.html
              진척도 :  page-my-savings-wallet.html -->
              <section class=" components_page padding-b-30">

                  <div class="pt_simpleDetails m-0 py-2 rounded-0 emBlock__border">
                      <div class="em_bodyinner">
                          <div class="embkRateCustomer" >
                              <div class="emBoxRating">
                                  <div class="row" style="height: 160px">
                                      <div class="col-4" style="height: 150px; padding-right: 0px">
                                          <img src="/img/good.png"  alt="" style="height: 100%; padding-left: 15px;">
<%--                                           <div class="item_rate">--%>
<%--                                              <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->--%>
<%--                                              <div class="item_progress">--%>
<%--                                                  <div class="itemCircle" style="height: 90%">--%>
<%--                                                      <input type="text" data-width="120" value="20" data-fgColor="#556FFF"--%>
<%--                                                             data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"--%>
<%--                                                             data-readOnly="true" data-linecap="round">--%>
<%--                                                  </div>--%>

<%--                                              </div>--%>
<%--                                           </div>--%>

                                      </div>
                                      <div class="col-8" style="height: 150px">
                                          <span class="size-13 color-black m-0 pt-1" style="font-weight: bold">나의 운동기구</span>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-patch-exclamation-fill color-facebook" viewBox="0 0 16 16">
                                              <path d="M10.067.87a2.89 2.89 0 0 0-4.134 0l-.622.638-.89-.011a2.89 2.89 0 0 0-2.924 2.924l.01.89-.636.622a2.89 2.89 0 0 0 0 4.134l.637.622-.011.89a2.89 2.89 0 0 0 2.924 2.924l.89-.01.622.636a2.89 2.89 0 0 0 4.134 0l.622-.637.89.011a2.89 2.89 0 0 0 2.924-2.924l-.01-.89.636-.622a2.89 2.89 0 0 0 0-4.134l-.637-.622.011-.89a2.89 2.89 0 0 0-2.924-2.924l-.89.01-.622-.636zM8 4c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995A.905.905 0 0 1 8 4zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                          </svg>
                                          <div class="progress__rate">
                                              <div class="">
                                                  <div class="item" style="height: 40px;  display: flex; align-items: center;">
                                                      <div  style="width: 100%">
                                                      <p class="size-13 color-black m-0 pt-1">스미스 머신</p>
                                                      <div class="progress" style="height: 8px;">
                                                          <div class="progress-bar" role="progressbar" style="width: 20%; background-color: #32CD32;"
                                                               aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                          </div>
                                                      </div>
                                                      </div>

                                                  </div>
                                                  <div class="item" style="height: 40px;  display: flex; align-items: center;">
                                                      <div  style="width: 100%">
                                                          <p class="size-13 color-black m-0 pt-1">런닝머신</p>
                                                          <div class="progress" style="height: 8px;">
                                                              <div class="progress-bar" role="progressbar" style="width: 70%"
                                                                   aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                              </div>
                                                          </div>
                                                      </div>

                                                  </div>
                                                  <div class="item" style="height: 40px;  display: flex; align-items: center;">
                                                      <div  style="width: 100%;">
                                                          <p class="size-13 color-black m-0 pt-1">와일드 풀다운</p>
                                                          <div class="progress" style="height: 8px;">
                                                              <div class="progress-bar" role="progressbar" style="width: 50%;  background-color: #1E90FF"
                                                                   aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                              </div>
                                                          </div>
                                                      </div>

                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>

                              </div>
                          </div>
                    <%-- 기구 나열 --%>
                              <p class="size-14 color-black m-0 pt-1" style="font-weight: bold; padding-bottom: 10px">이용이 가능한 운동기구</p>
                          <%-- 검색 버튼 --%>
                          <button type="button" class="btn btn-outline-secondary"
                                  data-toggle="modal"
                                  data-target="#mdllFilter"
                                  style="border-radius: 15px; font-size: 12px;">시간대별 <i class="tio-chevron_down -arrwo"></i>
                          </button>
                          <button type="button" class="btn btn-outline-secondary"
                                  data-toggle="modal"
                                  data-target="#mdllFilter"
                                  style="border-radius: 15px; font-size: 12px;">부위별 <i class="tio-chevron_down -arrwo"></i>
                          </button>
                          <%-- 기구 리스트 나열 --%>
                          <section class="emPage__basket npPkg__basket default" style="padding-top: 10px">
                              <div class="itemPkg_cart">
                                  <div class="sideleft" style="height: 60px">
                                      <div class="item_rate">
                                          <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->
                                          <div class="item_progress">
                                              <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                  <input type="image" data-width="60" value="60" data-fgColor="#ff8000"
                                                         data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                         src="/img/런닝머신.png" style="width: 25px; height: 25px; "
                                                         data-readOnly="true" data-linecap="round">
                                              </div>
                                          </div>
                                      </div>
                                      <div>
                                              <div class="em__pkLink">
                                                  <ul class="nav__list with_border fullBorder mb-0">
                                                      <li>
                                              <div class="item-link hoverNone" style="padding: 0">
                                                  <div class="group">
                                                      <span class="short__name"></span>
                                                      <span>런닝머신</span>
                                                      <span class="number_item" style="margin-left: 6px">혼잡</span>

                                                  </div>
                                              </div>
                                                      </li>
                                                  </ul>
                                              </div>
                                          <p style="font-size: 9px;" class="color-text">#정직한 #유산소운동</p>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                                          </svg>
                                          <span style="font-size: 12px; font-weight: bold">3대 남음</span>
                                      </div>
                                  </div>
                                  <%--  즐겨찾기 버튼   --%>
                                  <div class="npPage__balanceProvider" style="padding: 0; ">
                                      <div class="npblock__favorite" style="padding: 0; border: none;">
                                          <button type="button" class="btn btn_favorite item-active" style="border: none;">
                                              <i class="ri-star-s-line"></i>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                              <div class="itemPkg_cart">
                                  <div class="sideleft" style="height: 60px">
                                      <div class="item_rate">
                                          <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->
                                          <div class="item_progress">
                                              <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px;">
                                                  <input type="image" data-width="60" value="20" data-fgColor="#32CD32"
                                                         data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                         src="/img/스미스 머신.png" style="width: 25px; height: 25px;"
                                                         data-readOnly="true" data-linecap="round">
                                              </div>
                                          </div>
                                      </div>
                                      <div>
                                          <div class="em__pkLink">
                                              <ul class="nav__list with_border fullBorder mb-0">
                                                  <li>
                                                      <div class="item-link hoverNone" style="padding: 0">
                                                          <div class="group">
                                                              <span class="short__name"></span>
                                                              <span>스미스 머신</span>
                                                              <span class="number_item" style="margin-left: 6px; color: limegreen;
                                                               border: 1px solid limegreen;">여유</span>
                                                          </div>
                                                      </div>
                                                  </li>
                                              </ul>
                                          </div>
                                          <p style="font-size: 9px;" class="color-text">#멀티기구 #이두박근 #어깨 #삼두근 #허벅지</p>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                                          </svg>
                                          <span style="font-size: 12px; font-weight: bold">2대 남음</span>
                                      </div>
                                  </div>
                                  <%--  즐겨찾기 버튼   --%>
                                  <div class="npPage__balanceProvider" style="padding: 0px;">
                                      <div class="npblock__favorite" style="padding: 0px; border: none;">
                                          <button type="button" class="btn btn_favorite item-active" style="border: none;">
                                              <i class="ri-star-s-line"></i>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                              <div class="itemPkg_cart">
                                  <div class="sideleft" style="height: 60px">
                                      <div class="item_rate">
                                          <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->
                                          <div class="item_progress">
                                              <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                  <input type="image" data-width="60" value="50" data-fgColor="#1E90FF"
                                                         data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                         src="/img/와이드 풀다운.png" style="width: 25px; height: 25px; "
                                                         data-readOnly="true" data-linecap="round">
                                              </div>
                                          </div>
                                      </div>
                                      <div>
                                          <div class="em__pkLink">
                                              <ul class="nav__list with_border fullBorder mb-0">
                                                  <li>
                                                      <div class="item-link hoverNone" style="padding: 0">
                                                          <div class="group">
                                                              <span class="short__name"></span>
                                                              <span>와이드 풀다운</span>
                                                              <span class="number_item" style="margin-left: 6px; color: blue;
                                                               border: 1px solid blue;">보통</span>

                                                          </div>
                                                      </div>
                                                  </li>
                                              </ul>
                                          </div>
                                          <p style="font-size: 9px;" class="color-text">#악랄한 #광배근운동 #원터치좌석조정</p>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                                          </svg>
                                          <span style="font-size: 12px; font-weight: bold">1대 남음</span>
                                      </div>
                                  </div>
                                  <%--  즐겨찾기 버튼   --%>
                                  <div class="npPage__balanceProvider" style="padding: 0; ">
                                      <div class="npblock__favorite" style="padding: 0; border: none;">
                                          <button type="button" class="btn btn_favorite item-active" style="border: none;">
                                              <i class="ri-star-s-line"></i>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                              <div class="itemPkg_cart">
                                  <div class="sideleft" style="height: 60px">
                                      <div class="item_rate">
                                          <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->
                                          <div class="item_progress">
                                              <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                  <input type="image" data-width="60" value="0" data-fgColor="#1E90FF"
                                                         data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                         src="/img/다리 프레스 머신.png" style="width: 25px; height: 25px; "
                                                         data-readOnly="true" data-linecap="round">
                                              </div>
                                          </div>
                                      </div>
                                      <div>
                                          <div class="em__pkLink">
                                              <ul class="nav__list with_border fullBorder mb-0">
                                                  <li>
                                                      <div class="item-link hoverNone" style="padding: 0">
                                                          <div class="group">
                                                              <span class="short__name"></span>
                                                              <span>다리 프레스 머신</span>
                                                              <span class="number_item" style="margin-left: 6px; color: limegreen;
                                                               border: 1px solid limegreen;">여유</span>
                                                          </div>
                                                      </div>
                                                  </li>
                                              </ul>
                                          </div>
                                          <p style="font-size: 9px;" class="color-text">#다리운동기본서</p>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                                          </svg>
                                          <span style="font-size: 12px; font-weight: bold">1대 남음</span>
                                      </div>
                                  </div>
                                  <%--  즐겨찾기 버튼   --%>
                                  <div class="npPage__balanceProvider" style="padding: 0; ">
                                      <div class="npblock__favorite" style="padding: 0; border: none;">
                                          <button type="button" class="btn btn_favorite item-active" style="border: none;">
                                              <i class="ri-star-s-line"></i>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                              <div class="itemPkg_cart">
                                  <div class="sideleft" style="height: 60px">
                                      <div class="item_rate">
                                          <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->
                                          <div class="item_progress">
                                              <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                  <input type="image" data-width="60" value="40" data-fgColor="#32CD32"
                                                         data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                         src="/img/machine1.png" style="width: 25px; height: 25px; "
                                                         data-readOnly="true" data-linecap="round">
                                              </div>
                                          </div>
                                      </div>
                                      <div>
                                          <div class="em__pkLink">
                                              <ul class="nav__list with_border fullBorder mb-0">
                                                  <li>
                                                      <div class="item-link hoverNone" style="padding: 0">
                                                          <div class="group">
                                                              <span class="short__name"></span>
                                                              <span>핵스쿼트 머신</span>
                                                              <span class="number_item" style="margin-left: 6px; color: limegreen;
                                                               border: 1px solid limegreen;">여유</span>
                                                          </div>
                                                      </div>
                                                  </li>
                                              </ul>
                                          </div>
                                          <p style="font-size: 9px; " class="color-text">#엉덩이운동</p>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                                          </svg>
                                          <span style="font-size: 12px; font-weight: bold">1대 남음</span>
                                      </div>
                                  </div>
                                  <%--  즐겨찾기 버튼   --%>
                                  <div class="npPage__balanceProvider" style="padding: 0; ">
                                      <div class="npblock__favorite" style="padding: 0; border: none;">
                                          <button type="button" class="btn btn_favorite item-active" style="border: none;">
                                              <i class="ri-star-s-line"></i>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                              <div class="itemPkg_cart">
                                  <div class="sideleft" style="height: 60px">
                                      <div class="item_rate">
                                          <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->
                                          <div class="item_progress">
                                              <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                  <input type="image" data-width="60" value="100" data-fgColor="#ff8000"
                                                         data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                         src="/img/machine2.png" style="width: 25px; height: 25px; "
                                                         data-readOnly="true" data-linecap="round">
                                              </div>
                                          </div>
                                      </div>
                                      <div>
                                          <div class="em__pkLink">
                                              <ul class="nav__list with_border fullBorder mb-0">
                                                  <li>
                                                      <div class="item-link hoverNone" style="padding: 0">
                                                          <div class="group">
                                                              <span class="short__name"></span>
                                                              <span>하이풀 머신</span>
                                                              <span class="number_item" style="margin-left: 6px">혼잡</span>
                                                          </div>
                                                      </div>
                                                  </li>
                                              </ul>
                                          </div>
                                          <p style="font-size: 9px;" class="color-text">#다용도운동기구</p>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                                          </svg>
                                          <span style="font-size: 12px; font-weight: bold">0대 남음</span>
                                      </div>
                                  </div>
                                  <%--  즐겨찾기 버튼   --%>
                                  <div class="npPage__balanceProvider" style="padding: 0; ">
                                      <div class="npblock__favorite" style="padding: 0; border: none;">
                                          <button type="button" class="btn btn_favorite item-active" style="border: none;">
                                              <i class="ri-star-s-line"></i>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                              <div class="itemPkg_cart">
                                  <div class="sideleft" style="height: 60px">
                                      <div class="item_rate">
                                          <!-- 그래프바 : value 값 조절하면 그래프도 움직임-->
                                          <div class="item_progress">
                                              <div class="itemCircle" style="height: 60px; padding-right: 15px; padding-top: 0px">
                                                  <input type="image" data-width="60" value="50" data-fgColor="#1E90FF"
                                                         data-bgColor="#E9EAEC" data-thickness=".15" class="circleFull"
                                                         src="/img/machine3.png" style="width: 25px; height: 25px; "
                                                         data-readOnly="true" data-linecap="round">
                                              </div>
                                          </div>
                                      </div>
                                      <div>
                                          <div class="em__pkLink">
                                              <ul class="nav__list with_border fullBorder mb-0">
                                                  <li>
                                                      <div class="item-link hoverNone" style="padding: 0">
                                                          <div class="group">
                                                              <span class="short__name"></span>
                                                              <span>로우풀 머신</span>
                                                              <span class="number_item" style="margin-left: 6px; color: blue;
                                                               border: 1px solid blue;">보통</span>
                                                          </div>
                                                      </div>
                                                  </li>
                                              </ul>
                                          </div>
                                          <p style="font-size: 9px;" class="color-text">#어깨 #등운동</p>
                                          <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                                          </svg>
                                          <span style="font-size: 12px; font-weight: bold">1대 남음</span>
                                      </div>
                                  </div>
                                  <%--  즐겨찾기 버튼   --%>
                                  <div class="npPage__balanceProvider" style="padding: 0; ">
                                      <div class="npblock__favorite" style="padding: 0; border: none;">
                                          <button type="button" class="btn btn_favorite item-active" style="border: none;">
                                              <i class="ri-star-s-line"></i>
                                          </button>
                                      </div>
                                  </div>
                              </div>
                          </section>
                          <!-- 즐겨찾기 삭제할 때 쓸것. page-basket-provider.html -->







              <!-- End. em_swiper_products -->

          </div><!-- 첫번째 탭 끝. -->
        </div>


              </section>
        </div>
<%--      </div>--%>

    </section>

  </div>
</div>

<%-- 기구 검색 필터 모달 --%>
<!-- Modal Content -->
<div class="modal transition-bottom screenFull defaultModal emModal__filters fade" id="mdllFilter" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                            <div class="group">
                                 <button type="button" class="btn item-active">등</button>
                                <button type="button" class="btn item-active">팔(이두)</button>
                                <button type="button" class="btn item-active">팔(삼두)</button>
                            </div>
                            <div class="group">
                                <button type="button" class="btn item-active">어깨</button>
                                <button type="button" class="btn item-active">가슴</button>
                                <button type="button" class="btn item-active -active">복부</button>

                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="title_bk">
                        <h2>하체</h2>
                    </div>
                    <div class="buttons_select">
                        <div class="items">
                            <div class="group">
                                <button type="button" class="btn item-active">허벅지</button>
                                <button type="button" class="btn item-active">종아리</button>
                                <button type="button" class="btn item-active">엉덩이</button>
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

            </div>
            <div class="modal-footer border-0 pt-0 env-pb">
                <a href="#"
                   class="btn min-w-140 bg-secondary m-0 hover:color-white color-white h-46 d-flex align-items-center rounded-8 justify-content-center">
                    선택
                </a>
            </div>
        </div>
    </div>
</div>

</div>