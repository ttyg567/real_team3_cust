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
      <jsp:include page="/views/bestheader.jsp" />

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
      <!-- 베스트 선정 항목 카데고리들  Start navListProducts -->
      <section class="padding-l-20 padding-t-10" >
          <ul class="nav navListProducts with__lined">
              <li class="nav-item" >
                  <a class="nav-link active" href="#" style="font-size: 14px;">전체</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size: 14px;">헬스</a>
              </li>
              <li class="nav-item" style="width: 100px">
                  <a class="nav-link" href="#" style="font-size: 14px; padding-right: 10px">PT</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size: 14px; width: 80px">크로스핏</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size: 14px;">요가</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size: 14px; width: 80px">필라테스</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size: 14px;">골프</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size: 14px;">수영</a>
              </li>
          </ul>
      </section>
      <!-- End. navListProducts -->
      <%-- 각 운동센터별 순위에 든 항목 나열 : 최상위 3개만 보여주는 걸로 제한.--%>
      <div class="em_swiper_products margin-b-20">
          <div class="em_body_products">
              <div class="owl-carousel owl-theme em-owlRight">
                  <c:forEach var="gym" items="${allGym}" varStatus="status" begin="1" end="3">
                      <div class="item em_item_product">
                          <div class="em_head"><!-- 선택 시 센터 상세페이지로 이동 -->
                              <a href="/ticket/detail?gymNo=${gym.gymNo}" >
                                  <img src="/assets/img/gym/${gym.gymImgname}" alt="">
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