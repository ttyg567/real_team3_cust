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
      <div class="title d-flex justify-content-between align-items-center padding-t-20 padding-l-20 padding-r-20">
          <div>
              <h3 class="size-18 weight-500 color-secondary m-0">6월 베스트</h3>
              <p class="size-13 color-text m-0 pt-1">운동환경 관리에 우수한 센터들이 선정됐어요😷</p>
          </div>
          <a href="/groupboard/groupboard_list" class="d-block color-text size-12">더보기</a>
      </div>
      <!-- 베스트 선정 항목 카데고리들  Start navListProducts -->
      <!-- Start navListProducts -->
      <section class="padding-t-20">
          <ul class="nav nav-pills navListProducts bg-white" id="pills-tab" role="tablist">
              <li class="nav-item" role="presentation" >
                  <a class="nav-link active" id="pills-total-tab" data-toggle="pill" href="#pills-total" role="tab"
                     aria-controls="pills-total" aria-selected="true"
                     style="font-size: 14px; padding-left: 10px">전체</a>
              </li>
              <li class="nav-item" role="presentation" >
                  <a class="nav-link" id="pills-workout-tab" data-toggle="pill" href="#pills-workout" role="tab"
                     aria-controls="pills-workout" aria-selected="false"
                     style="font-size: 14px">헬스</a>
              </li>
              <li class="nav-item" role="presentation">
                  <a class="nav-link" id="pills-PT-tab" data-toggle="pill" href="#pills-PT" role="tab"
                     aria-controls="pills-PT" aria-selected="false"
                     style="font-size: 14px">PT</a>
              </li>
              <li class="nav-item" role="presentation" style="font-size: 14px">
                  <a class="nav-link" id="pills-crossfit-tab" data-toggle="pill" href="#pills-crossfit"
                     role="tab" aria-controls="pills-crossfit" aria-selected="false"
                     style="font-size: 14px; width: 80px;">크로스핏</a>
              </li>
              <li class="nav-item" role="presentation">
                  <a class="nav-link" id="pills-yoga-tab" data-toggle="pill" href="#pills-yoga" role="tab"
                     aria-controls="pills-yoga" aria-selected="false"
                     style="font-size: 14px">요가</a>
              </li>
              <li class="nav-item" role="presentation">
                  <a class="nav-link" id="pills-pilates-tab" data-toggle="pill" href="#pills-pilates" role="tab"
                     aria-controls="pills-pilates" aria-selected="false"
                     style="font-size: 14px; width: 80px;">필라테스</a>
              </li>
              <li class="nav-item" role="presentation">
                  <a class="nav-link" id="pills-golf-tab" data-toggle="pill" href="#pills-golf" role="tab"
                     aria-controls="pills-golf" aria-selected="false"
                     style="font-size: 14px">골프</a>
              </li>
              <li class="nav-item" role="presentation">
                  <a class="nav-link" id="pills-swim-tab" data-toggle="pill" href="#pills-swim" role="tab"
                     aria-controls="pills-swim" aria-selected="false"
                     style="font-size: 14px">수영</a>
              </li>
          </ul>

      </section>
      <!-- End. navListProducts -->

      <section class="em_masonry__layout bg-snow em_list_layout widthFull">
          <!-- 0.전체 : 카테고리 선택 시 보이는 아이템들(pills-total) -->
          <div class="tab-content" id="pills-tabContent">
              <div class="tab-pane fade show active" id="pills-total" role="tabpanel"
                   aria-labelledby="pills-total-tab">

                  <div>
                      <!-- item -->
                    <c:forEach var="gym" items="${allGym}">
                      <div class="item em_item_product item_list">
                          <div class="em_head">
                              <a href="#" class="image_product">
                                  <img src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                              </a>
                          </div>
                          <div class="title_product">
                              <button type="button" class="btn rounded-8 btn_addBookmark item-active -active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.6648 18.6316L5.73341 21.8811C5.25984 22.1272 4.67641 21.953 4.41533 21.4875V21.4875C4.3398 21.3433 4.29905 21.1834 4.29634 21.0206V6.62247C4.29634 3.87647 6.17277 2.77808 8.873 2.77808H15.2162C17.8341 2.77808 19.7929 3.80325 19.7929 6.4394V21.0206C19.7929 21.2804 19.6897 21.5295 19.506 21.7132C19.3224 21.8969 19.0733 22 18.8135 22C18.6478 21.9974 18.485 21.9567 18.3375 21.8811L12.3696 18.6316C12.1497 18.5128 11.8847 18.5128 11.6648 18.6316Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                      <path opacity="0.4" d="M8.36957 9.32266H15.6648" stroke="#200E32"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                  </svg>
                                  <span class="icon_active"></span>
                              </button>

                              <div class="itemRating">
                                  <span class="number">우수</span>
                                  <span class="users">9 Reviews</span>
                              </div>
                              <h3>Mens 100% Cotton Solid Color Panda Print Thin Casual T-Shirt</h3>
                              <p class="item_price">$23.00</p>

                              <button type="button" class="btn btn_addCart item-active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M12.75 8.32727C12.75 7.91306 12.4142 7.57727 12 7.57727C11.5858 7.57727 11.25 7.91306 11.25 8.32727V11.2405H8.33333C7.91911 11.2405 7.58333 11.5763 7.58333 11.9905C7.58333 12.4047 7.91911 12.7405 8.33333 12.7405H11.25V15.6536C11.25 16.0678 11.5858 16.4036 12 16.4036C12.4142 16.4036 12.75 16.0678 12.75 15.6536V12.7405H15.6667C16.0809 12.7405 16.4167 12.4047 16.4167 11.9905C16.4167 11.5763 16.0809 11.2405 15.6667 11.2405H12.75V8.32727Z"
                                            fill="#200E32" />
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M16.6857 2H7.31429C4.04762 2 2 4.31208 2 7.58516V16.4148C2 19.6879 4.0381 22 7.31429 22H16.6857C19.9619 22 22 19.6879 22 16.4148V7.58516C22 4.31208 19.9619 2 16.6857 2Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                  </svg>
                                  <div class="icon_active"></div>
                                  <span class="txt_added">Added!</span>
                              </button>
                          </div>
                      </div>
                    </c:forEach>
                  </div>

              </div>

        <%-- 1. 헬스 탭 누르면 나오는 아이템들   --%>
          <div class="tab-pane fade" id="pills-workout" role="tabpanel"
               aria-labelledby="pills-workout-tab">
              <div>
                      <!-- 헬스 -->
                    <c:forEach var="gym" items="${allGym}">
                      <div class="item em_item_product item_list">
                          <div class="em_head">
                              <a href="#" class="image_product">
                                  <img src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                              </a>
                          </div>
                          <div class="title_product">
                              <button type="button" class="btn rounded-8 btn_addBookmark item-active -active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.6648 18.6316L5.73341 21.8811C5.25984 22.1272 4.67641 21.953 4.41533 21.4875V21.4875C4.3398 21.3433 4.29905 21.1834 4.29634 21.0206V6.62247C4.29634 3.87647 6.17277 2.77808 8.873 2.77808H15.2162C17.8341 2.77808 19.7929 3.80325 19.7929 6.4394V21.0206C19.7929 21.2804 19.6897 21.5295 19.506 21.7132C19.3224 21.8969 19.0733 22 18.8135 22C18.6478 21.9974 18.485 21.9567 18.3375 21.8811L12.3696 18.6316C12.1497 18.5128 11.8847 18.5128 11.6648 18.6316Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                      <path opacity="0.4" d="M8.36957 9.32266H15.6648" stroke="#200E32"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                  </svg>
                                  <span class="icon_active"></span>
                              </button>

                              <div class="itemRating">
                                  <span class="number">우수</span>
                                  <span class="users">9 Reviews</span>
                              </div>
                              <h3>베스트 헬스장</h3>
                              <p class="item_price">$23.00</p>

                              <button type="button" class="btn btn_addCart item-active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M12.75 8.32727C12.75 7.91306 12.4142 7.57727 12 7.57727C11.5858 7.57727 11.25 7.91306 11.25 8.32727V11.2405H8.33333C7.91911 11.2405 7.58333 11.5763 7.58333 11.9905C7.58333 12.4047 7.91911 12.7405 8.33333 12.7405H11.25V15.6536C11.25 16.0678 11.5858 16.4036 12 16.4036C12.4142 16.4036 12.75 16.0678 12.75 15.6536V12.7405H15.6667C16.0809 12.7405 16.4167 12.4047 16.4167 11.9905C16.4167 11.5763 16.0809 11.2405 15.6667 11.2405H12.75V8.32727Z"
                                            fill="#200E32" />
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M16.6857 2H7.31429C4.04762 2 2 4.31208 2 7.58516V16.4148C2 19.6879 4.0381 22 7.31429 22H16.6857C19.9619 22 22 19.6879 22 16.4148V7.58516C22 4.31208 19.9619 2 16.6857 2Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                  </svg>
                                  <div class="icon_active"></div>
                                  <span class="txt_added">Added!</span>
                              </button>
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div><!-- 헬스 끝 -->
              <%-- 2. PT 탭 누르면 나오는 아이템들   --%>
              <div class="tab-pane fade" id="pills-PT" role="tabpanel"
                   aria-labelledby="pills-PT-tab">
                  <div>
                      <!-- PT -->
                    <c:forEach var="gym" items="${allGym}">
                      <div class="item em_item_product item_list">
                          <div class="em_head">
                              <a href="#" class="image_product">
                                  <img src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                              </a>
                          </div>
                          <div class="title_product">
                              <button type="button" class="btn rounded-8 btn_addBookmark item-active -active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.6648 18.6316L5.73341 21.8811C5.25984 22.1272 4.67641 21.953 4.41533 21.4875V21.4875C4.3398 21.3433 4.29905 21.1834 4.29634 21.0206V6.62247C4.29634 3.87647 6.17277 2.77808 8.873 2.77808H15.2162C17.8341 2.77808 19.7929 3.80325 19.7929 6.4394V21.0206C19.7929 21.2804 19.6897 21.5295 19.506 21.7132C19.3224 21.8969 19.0733 22 18.8135 22C18.6478 21.9974 18.485 21.9567 18.3375 21.8811L12.3696 18.6316C12.1497 18.5128 11.8847 18.5128 11.6648 18.6316Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                      <path opacity="0.4" d="M8.36957 9.32266H15.6648" stroke="#200E32"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                  </svg>
                                  <span class="icon_active"></span>
                              </button>

                              <div class="itemRating">
                                  <span class="number">우수</span>
                                  <span class="users">9 Reviews</span>
                              </div>
                              <h3>베스트 PT</h3>
                              <p class="item_price">$23.00</p>

                              <button type="button" class="btn btn_addCart item-active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M12.75 8.32727C12.75 7.91306 12.4142 7.57727 12 7.57727C11.5858 7.57727 11.25 7.91306 11.25 8.32727V11.2405H8.33333C7.91911 11.2405 7.58333 11.5763 7.58333 11.9905C7.58333 12.4047 7.91911 12.7405 8.33333 12.7405H11.25V15.6536C11.25 16.0678 11.5858 16.4036 12 16.4036C12.4142 16.4036 12.75 16.0678 12.75 15.6536V12.7405H15.6667C16.0809 12.7405 16.4167 12.4047 16.4167 11.9905C16.4167 11.5763 16.0809 11.2405 15.6667 11.2405H12.75V8.32727Z"
                                            fill="#200E32" />
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M16.6857 2H7.31429C4.04762 2 2 4.31208 2 7.58516V16.4148C2 19.6879 4.0381 22 7.31429 22H16.6857C19.9619 22 22 19.6879 22 16.4148V7.58516C22 4.31208 19.9619 2 16.6857 2Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                  </svg>
                                  <div class="icon_active"></div>
                                  <span class="txt_added">Added!</span>
                              </button>
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div><!-- PT 끝 -->
              <%-- 3. 크로스핏 탭 누르면 나오는 아이템들   --%>
              <div class="tab-pane fade" id="pills-crossfit" role="tabpanel"
                   aria-labelledby="pills-crossfit-tab">
                  <div>
                      <!-- crossfit -->
                    <c:forEach var="gym" items="${allGym}">
                      <div class="item em_item_product item_list">
                          <div class="em_head">
                              <a href="#" class="image_product">
                                 <img src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                              </a>
                          </div>
                          <div class="title_product">
                              <button type="button" class="btn rounded-8 btn_addBookmark item-active -active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.6648 18.6316L5.73341 21.8811C5.25984 22.1272 4.67641 21.953 4.41533 21.4875V21.4875C4.3398 21.3433 4.29905 21.1834 4.29634 21.0206V6.62247C4.29634 3.87647 6.17277 2.77808 8.873 2.77808H15.2162C17.8341 2.77808 19.7929 3.80325 19.7929 6.4394V21.0206C19.7929 21.2804 19.6897 21.5295 19.506 21.7132C19.3224 21.8969 19.0733 22 18.8135 22C18.6478 21.9974 18.485 21.9567 18.3375 21.8811L12.3696 18.6316C12.1497 18.5128 11.8847 18.5128 11.6648 18.6316Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                      <path opacity="0.4" d="M8.36957 9.32266H15.6648" stroke="#200E32"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                  </svg>
                                  <span class="icon_active"></span>
                              </button>

                              <div class="itemRating">
                                  <span class="number">우수</span>
                                  <span class="users">9 Reviews</span>
                              </div>
                              <h3>베스트 crossfit</h3>
                              <p class="item_price">$23.00</p>

                              <button type="button" class="btn btn_addCart item-active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M12.75 8.32727C12.75 7.91306 12.4142 7.57727 12 7.57727C11.5858 7.57727 11.25 7.91306 11.25 8.32727V11.2405H8.33333C7.91911 11.2405 7.58333 11.5763 7.58333 11.9905C7.58333 12.4047 7.91911 12.7405 8.33333 12.7405H11.25V15.6536C11.25 16.0678 11.5858 16.4036 12 16.4036C12.4142 16.4036 12.75 16.0678 12.75 15.6536V12.7405H15.6667C16.0809 12.7405 16.4167 12.4047 16.4167 11.9905C16.4167 11.5763 16.0809 11.2405 15.6667 11.2405H12.75V8.32727Z"
                                            fill="#200E32" />
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M16.6857 2H7.31429C4.04762 2 2 4.31208 2 7.58516V16.4148C2 19.6879 4.0381 22 7.31429 22H16.6857C19.9619 22 22 19.6879 22 16.4148V7.58516C22 4.31208 19.9619 2 16.6857 2Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                  </svg>
                                  <div class="icon_active"></div>
                                  <span class="txt_added">Added!</span>
                              </button>
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div><!-- crossfit 끝 -->
              <%-- 2. 요가 탭 누르면 나오는 아이템들   --%>
              <div class="tab-pane fade" id="pills-yoga" role="tabpanel"
                   aria-labelledby="pills-yoga-tab">
                  <div>
                      <!-- yoga -->
                    <c:forEach var="gym" items="${allGym}">
                      <div class="item em_item_product item_list">
                          <div class="em_head">
                              <a href="#" class="image_product">
                                  <img src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                              </a>
                          </div>
                          <div class="title_product">
                              <button type="button" class="btn rounded-8 btn_addBookmark item-active -active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.6648 18.6316L5.73341 21.8811C5.25984 22.1272 4.67641 21.953 4.41533 21.4875V21.4875C4.3398 21.3433 4.29905 21.1834 4.29634 21.0206V6.62247C4.29634 3.87647 6.17277 2.77808 8.873 2.77808H15.2162C17.8341 2.77808 19.7929 3.80325 19.7929 6.4394V21.0206C19.7929 21.2804 19.6897 21.5295 19.506 21.7132C19.3224 21.8969 19.0733 22 18.8135 22C18.6478 21.9974 18.485 21.9567 18.3375 21.8811L12.3696 18.6316C12.1497 18.5128 11.8847 18.5128 11.6648 18.6316Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                      <path opacity="0.4" d="M8.36957 9.32266H15.6648" stroke="#200E32"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                  </svg>
                                  <span class="icon_active"></span>
                              </button>

                              <div class="itemRating">
                                  <span class="number">우수</span>
                                  <span class="users">9 Reviews</span>
                              </div>
                              <h3>베스트 yoga</h3>
                              <p class="item_price">$23.00</p>

                              <button type="button" class="btn btn_addCart item-active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M12.75 8.32727C12.75 7.91306 12.4142 7.57727 12 7.57727C11.5858 7.57727 11.25 7.91306 11.25 8.32727V11.2405H8.33333C7.91911 11.2405 7.58333 11.5763 7.58333 11.9905C7.58333 12.4047 7.91911 12.7405 8.33333 12.7405H11.25V15.6536C11.25 16.0678 11.5858 16.4036 12 16.4036C12.4142 16.4036 12.75 16.0678 12.75 15.6536V12.7405H15.6667C16.0809 12.7405 16.4167 12.4047 16.4167 11.9905C16.4167 11.5763 16.0809 11.2405 15.6667 11.2405H12.75V8.32727Z"
                                            fill="#200E32" />
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M16.6857 2H7.31429C4.04762 2 2 4.31208 2 7.58516V16.4148C2 19.6879 4.0381 22 7.31429 22H16.6857C19.9619 22 22 19.6879 22 16.4148V7.58516C22 4.31208 19.9619 2 16.6857 2Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                  </svg>
                                  <div class="icon_active"></div>
                                  <span class="txt_added">Added!</span>
                              </button>
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div><!-- yoga 끝 -->
              <%-- 5. 필라테스 탭 누르면 나오는 아이템들   --%>
              <div class="tab-pane fade" id="pills-pilates" role="tabpanel"
                   aria-labelledby="pills-pilates-tab">
                  <div>
                      <!-- pilates -->
                    <c:forEach var="gym" items="${allGym}">
                      <div class="item em_item_product item_list">
                          <div class="em_head">
                              <a href="#" class="image_product">
                                <img src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                              </a>
                          </div>
                          <div class="title_product">
                              <button type="button" class="btn rounded-8 btn_addBookmark item-active -active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.6648 18.6316L5.73341 21.8811C5.25984 22.1272 4.67641 21.953 4.41533 21.4875V21.4875C4.3398 21.3433 4.29905 21.1834 4.29634 21.0206V6.62247C4.29634 3.87647 6.17277 2.77808 8.873 2.77808H15.2162C17.8341 2.77808 19.7929 3.80325 19.7929 6.4394V21.0206C19.7929 21.2804 19.6897 21.5295 19.506 21.7132C19.3224 21.8969 19.0733 22 18.8135 22C18.6478 21.9974 18.485 21.9567 18.3375 21.8811L12.3696 18.6316C12.1497 18.5128 11.8847 18.5128 11.6648 18.6316Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                      <path opacity="0.4" d="M8.36957 9.32266H15.6648" stroke="#200E32"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                  </svg>
                                  <span class="icon_active"></span>
                              </button>

                              <div class="itemRating">
                                  <span class="number">우수</span>
                                  <span class="users">9 Reviews</span>
                              </div>
                              <h3>베스트 pilates</h3>
                              <p class="item_price">$23.00</p>

                              <button type="button" class="btn btn_addCart item-active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M12.75 8.32727C12.75 7.91306 12.4142 7.57727 12 7.57727C11.5858 7.57727 11.25 7.91306 11.25 8.32727V11.2405H8.33333C7.91911 11.2405 7.58333 11.5763 7.58333 11.9905C7.58333 12.4047 7.91911 12.7405 8.33333 12.7405H11.25V15.6536C11.25 16.0678 11.5858 16.4036 12 16.4036C12.4142 16.4036 12.75 16.0678 12.75 15.6536V12.7405H15.6667C16.0809 12.7405 16.4167 12.4047 16.4167 11.9905C16.4167 11.5763 16.0809 11.2405 15.6667 11.2405H12.75V8.32727Z"
                                            fill="#200E32" />
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M16.6857 2H7.31429C4.04762 2 2 4.31208 2 7.58516V16.4148C2 19.6879 4.0381 22 7.31429 22H16.6857C19.9619 22 22 19.6879 22 16.4148V7.58516C22 4.31208 19.9619 2 16.6857 2Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                  </svg>
                                  <div class="icon_active"></div>
                                  <span class="txt_added">Added!</span>
                              </button>
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div><!-- pilates 끝 -->
              <%-- 6.  골프 탭 누르면 나오는 아이템들   --%>
              <div class="tab-pane fade" id="pills-golf" role="tabpanel"
                   aria-labelledby="pills-golf-tab">
                  <div>
                      <!-- golf -->
                    <c:forEach var="gym" items="${allGym}">
                      <div class="item em_item_product item_list">
                          <div class="em_head">
                              <a href="#" class="image_product">
                                  <img src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                              </a>
                          </div>
                          <div class="title_product">
                              <button type="button" class="btn rounded-8 btn_addBookmark item-active -active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.6648 18.6316L5.73341 21.8811C5.25984 22.1272 4.67641 21.953 4.41533 21.4875V21.4875C4.3398 21.3433 4.29905 21.1834 4.29634 21.0206V6.62247C4.29634 3.87647 6.17277 2.77808 8.873 2.77808H15.2162C17.8341 2.77808 19.7929 3.80325 19.7929 6.4394V21.0206C19.7929 21.2804 19.6897 21.5295 19.506 21.7132C19.3224 21.8969 19.0733 22 18.8135 22C18.6478 21.9974 18.485 21.9567 18.3375 21.8811L12.3696 18.6316C12.1497 18.5128 11.8847 18.5128 11.6648 18.6316Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                      <path opacity="0.4" d="M8.36957 9.32266H15.6648" stroke="#200E32"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                  </svg>
                                  <span class="icon_active"></span>
                              </button>

                              <div class="itemRating">
                                  <span class="number">우수</span>
                                  <span class="users">9 Reviews</span>
                              </div>
                              <h3>베스트 golf</h3>
                              <p class="item_price">$23.00</p>

                              <button type="button" class="btn btn_addCart item-active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M12.75 8.32727C12.75 7.91306 12.4142 7.57727 12 7.57727C11.5858 7.57727 11.25 7.91306 11.25 8.32727V11.2405H8.33333C7.91911 11.2405 7.58333 11.5763 7.58333 11.9905C7.58333 12.4047 7.91911 12.7405 8.33333 12.7405H11.25V15.6536C11.25 16.0678 11.5858 16.4036 12 16.4036C12.4142 16.4036 12.75 16.0678 12.75 15.6536V12.7405H15.6667C16.0809 12.7405 16.4167 12.4047 16.4167 11.9905C16.4167 11.5763 16.0809 11.2405 15.6667 11.2405H12.75V8.32727Z"
                                            fill="#200E32" />
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M16.6857 2H7.31429C4.04762 2 2 4.31208 2 7.58516V16.4148C2 19.6879 4.0381 22 7.31429 22H16.6857C19.9619 22 22 19.6879 22 16.4148V7.58516C22 4.31208 19.9619 2 16.6857 2Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                  </svg>
                                  <div class="icon_active"></div>
                                  <span class="txt_added">Added!</span>
                              </button>
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div><!-- golf 끝 -->
              <%-- 7. 수영 탭 누르면 나오는 아이템들   --%>
              <div class="tab-pane fade" id="pills-swim" role="tabpanel"
                   aria-labelledby="pills-swim-tab">
                  <div>
                      <!-- swim -->
                    <c:forEach var="gym" items="${allGym}">
                      <div class="item em_item_product item_list">
                          <div class="em_head">
                              <a href="#" class="image_product">
                                <img src="/assets/img/gymImg/${gym.gymImgname}" alt="">
                              </a>
                          </div>
                          <div class="title_product">
                              <button type="button" class="btn rounded-8 btn_addBookmark item-active -active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M11.6648 18.6316L5.73341 21.8811C5.25984 22.1272 4.67641 21.953 4.41533 21.4875V21.4875C4.3398 21.3433 4.29905 21.1834 4.29634 21.0206V6.62247C4.29634 3.87647 6.17277 2.77808 8.873 2.77808H15.2162C17.8341 2.77808 19.7929 3.80325 19.7929 6.4394V21.0206C19.7929 21.2804 19.6897 21.5295 19.506 21.7132C19.3224 21.8969 19.0733 22 18.8135 22C18.6478 21.9974 18.485 21.9567 18.3375 21.8811L12.3696 18.6316C12.1497 18.5128 11.8847 18.5128 11.6648 18.6316Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                      <path opacity="0.4" d="M8.36957 9.32266H15.6648" stroke="#200E32"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                  </svg>
                                  <span class="icon_active"></span>
                              </button>

                              <div class="itemRating">
                                  <span class="number">우수</span>
                                  <span class="users">9 Reviews</span>
                              </div>
                              <h3>베스트 swim</h3>
                              <p class="item_price">$23.00</p>

                              <button type="button" class="btn btn_addCart item-active">
                                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd"
                                            d="M12.75 8.32727C12.75 7.91306 12.4142 7.57727 12 7.57727C11.5858 7.57727 11.25 7.91306 11.25 8.32727V11.2405H8.33333C7.91911 11.2405 7.58333 11.5763 7.58333 11.9905C7.58333 12.4047 7.91911 12.7405 8.33333 12.7405H11.25V15.6536C11.25 16.0678 11.5858 16.4036 12 16.4036C12.4142 16.4036 12.75 16.0678 12.75 15.6536V12.7405H15.6667C16.0809 12.7405 16.4167 12.4047 16.4167 11.9905C16.4167 11.5763 16.0809 11.2405 15.6667 11.2405H12.75V8.32727Z"
                                            fill="#200E32" />
                                      <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M16.6857 2H7.31429C4.04762 2 2 4.31208 2 7.58516V16.4148C2 19.6879 4.0381 22 7.31429 22H16.6857C19.9619 22 22 19.6879 22 16.4148V7.58516C22 4.31208 19.9619 2 16.6857 2Z"
                                            stroke="#200E32" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                  </svg>
                                  <div class="icon_active"></div>
                                  <span class="txt_added">Added!</span>
                              </button>
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div><!-- swim 끝 -->
          </div>


      </section>
  </div></div><%--  끝.  --%>