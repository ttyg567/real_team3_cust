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
                  <img src="assets/img/mainbanner1.png" alt="">
                  </a>
                </div>
              </div>
              <div class="item em_item"><!-- 2번 배너 -->
                <div class="em_img">
                  <a href="/groupboard" class="em_link">
                    <img src="assets/img/mainbanner1.png" alt="">
                  </a>
                </div>
              </div>
              <div class="item em_item"><!-- 3번 배너 -->
                <div class="em_img">
                  <a href="/groupboard" class="em_link">
                    <img src="assets/img/mainbanner1.png" alt="">
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
              <hr style="height: 30px; color: #EFECEC; border: none; border-top: 10px solid;">

          <!-- 카테고리 밑 영역 시작 : 회원 추천 이용권 -->
          <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
              <div>
                  <h3 class="size-18 weight-500 color-secondary m-0">${logincust.custName}님의 운동센터 혼잡도☀️☁️🌩️</h3>
                  <p class="size-13 color-text m-0 pt-1">운동 예약 전 미리 확인하면 효율 UP!</p>
              </div>
              <a href="/" class="d-block color-text size-12 m-0">더보기</a>
          </div><br>
              <!-- 센터 기구 항목 나열. page-balance-provider.html
              진척도 :  page-my-savings-wallet.html -->
              <!-- 즐겨찾기 삭제할 때 쓸것. page-basket-provider.html -->
              <!-- 이용권 항목들 나열 공간 : Start em_swiper_products -->
              <div class="em_swiper_products margin-b-20">
                  <div class="em_body_products">
                      <div class="owl-carousel owl-theme em-owlRight">
                          <c:forEach var="gym" items="${allGym}">
                          <div class="item em_item_product">
                              <div class="em_head"><!-- 선택 시 센터 상세페이지로 이동 -->
                                  <a href="/ticket/detail?gymNo=${gym.gymNo}" >
                                      <img src="/assets/img/gymImg/${gym.gymRegiimgname}" alt="">
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
                                      <p class="item_price">358,000원 <span class="price_old">390,000원</span></p>

                                  </div>
                              </div>
                          </div>
                          </c:forEach>

                      </div>
                  </div>
              </div>
              <!-- End. em_swiper_products -->

          </div><!-- 첫번째 탭 끝. -->
        </div>

        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            <!-- Start banner_sliderFull-->
            <div class="banner_sliderFull margin-b-20">
                <!-- Swiper -->
                <div class="swiper-container em-swiperSliderFull">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide">
                            <div class="--item-inside">
                                <div class="cover_img">
                                    <a href="/groupboard">
                                    <img src="/assets/img/health3.jpg" alt="">
                                    <div
                                            class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-left">
                                        <h2 data-swiper-parallax="-300"
                                            class="size-27 weight-600 color-white text-uppercase mb-1">
                                            헬쓱 최다검색 센터<br>성수 밥불러스</h2>
                                        <p data-swiper-parallax="-200" class="size-12 color-white">
                                            조인인원 모집 시 20% 할인 쿠폰 증정</p>
                                    </div>
                                    </a>
                                </div>

                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="--item-inside">
                                <div class="cover_img">
                                    <a href="/groupboard">
                                        <img src="/assets/img/health3.jpg" alt="">
                                        <div
                                                class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-left">
                                            <h2 data-swiper-parallax="-300"
                                                class="size-27 weight-600 color-white text-uppercase mb-1">
                                                헬쓱 최다검색 센터<br>성수 밥불러스</h2>
                                            <p data-swiper-parallax="-200" class="size-12 color-white">
                                                조인인원 모집 시 20% 할인 쿠폰 증정</p>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="--item-inside">
                                <div class="cover_img">
                                    <a href="/groupboard">
                                        <img src="/assets/img/health3.jpg" alt="">
                                        <div
                                                class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-left">
                                            <h2 data-swiper-parallax="-300"
                                                class="size-27 weight-600 color-white text-uppercase mb-1">
                                                헬쓱 최다검색 센터<br>성수 밥불러스</h2>
                                            <p data-swiper-parallax="-200" class="size-12 color-white">
                                                조인인원 모집 시 20% 할인 쿠폰 증정</p>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                </div>

            </div><!-- End. banner_sliderFull -->
            <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
                <div>
                    <h3 class="size-18 weight-500 color-secondary m-0">6월 베스트</h3>
                    <p class="size-13 color-text m-0 pt-1">운동환경 관리에 우수한 센터들이 선정됐어요😷</p>
                </div>
                <a href="/groupboard/groupboard_list" class="d-block color-text size-12">더보기</a>
            </div>
        </div>

        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
          <!-- Start title -->
<%--          <div class="emTitle_co">--%>
              <!-- Start banner_sliderFull-->
              <div class="banner_sliderFull margin-b-20">
                  <!-- Swiper -->
                  <div class="swiper-container em-swiperSliderFull">
                      <div class="swiper-wrapper">
                          <div class="swiper-slide">
                              <div class="--item-inside">
                                  <div class="cover_img">
                                      <img src="assets/img/165.jpeg" alt="">
                                      <div
                                              class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-left">
                                          <h2 data-swiper-parallax="-300"
                                              class="size-30 weight-600 color-white text-uppercase mb-1">
                                              Up to 60% off</h2>
                                          <p data-swiper-parallax="-200" class="size-14 color-white">
                                              Women Clothes, Shoes,Bags, ACC</p>
                                          <a data-swiper-parallax="-100" href="#"
                                             class="btn rounded-8 bg-primary color-white size-14 weight-500 min-w-110 h-41 hover:color-white d-inline-flex align-items-center justify-content-center">
                                              Discover
                                              <i
                                                      class="tio-chevron_right ml-1 size-16 color-white color-opacity-70"></i>
                                          </a>
                                      </div>
                                  </div>

                              </div>
                          </div>
                          <div class="swiper-slide">
                              <div class="--item-inside">
                                  <div class="cover_img">
                                      <img src="assets/img/man-portrait.jpg" alt="">
                                      <div
                                              class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-left">
                                          <h2 data-swiper-parallax="-300"
                                              class="size-30 weight-600 color-white text-uppercase mb-1">
                                              Up to 60% off</h2>
                                          <p data-swiper-parallax="-200" class="size-14 color-white">
                                              Women Clothes, Shoes,Bags, ACC</p>
                                          <a data-swiper-parallax="-100" href="#"
                                             class="btn rounded-8 bg-primary color-white size-14 weight-500 min-w-110 h-41 hover:color-white d-inline-flex align-items-center justify-content-center">
                                              Discover
                                              <i
                                                      class="tio-chevron_right ml-1 size-16 color-white color-opacity-70"></i>
                                          </a>
                                      </div>
                                  </div>

                              </div>
                          </div>
                          <div class="swiper-slide">
                              <div class="--item-inside">
                                  <div class="cover_img">
                                      <img src="assets/img/0987.jpg" alt="">
                                      <div
                                              class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-left">
                                          <h2 data-swiper-parallax="-300"
                                              class="size-30 weight-600 color-white text-uppercase mb-1">
                                              Up to 60% off</h2>
                                          <p data-swiper-parallax="-200" class="size-14 color-white">
                                              Women Clothes, Shoes,Bags, ACC</p>
                                          <a data-swiper-parallax="-100" href="#"
                                             class="btn rounded-8 bg-primary color-white size-14 weight-500 min-w-110 h-41 hover:color-white d-inline-flex align-items-center justify-content-center">
                                              Discover
                                              <i
                                                      class="tio-chevron_right ml-1 size-16 color-white color-opacity-70"></i>
                                          </a>
                                      </div>
                                  </div>

                              </div>
                          </div>
                      </div>
                      <!-- Add Pagination -->
                      <div class="swiper-pagination"></div>
                  </div>
              </div>
              <!-- End. banner_sliderFull -->
            <%--     세번째 탭. 베스트 이용권 항목 보여주는 구간  --%>
            <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
                <div>
                    <h3 class="size-18 weight-500 color-secondary m-0">내 주변 할인 센터</h3>
                     </div>
                <a href="/" class="d-block color-text size-12 m-0">더보기</a>
            </div>
          </div>
          <!-- End. title -->
        </div>
<%--      </div>--%>


    </section>

  </div>
</div>