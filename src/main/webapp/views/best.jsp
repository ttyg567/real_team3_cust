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