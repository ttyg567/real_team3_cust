<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .nav .nav-item{
        width: 120px;
    }
<%-- 베스트센터 이미지 : 규격에 꽉차게 함. --%>
    .image_bg {
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        width: 100%;
        height: 100%;
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

        <!-- Start navListProducts -->
        <div class="padding-l-50 padding-t-10">
            <ul class="nav navListProducts with__lined navWhite">
                <li class="nav-item">
                    <a class="nav-link" href="/view/1">투데이</a>
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
                                          class="size-27 weight-600 color-white text-uppercase mb-1"
                                          style="text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);">
                                          헬쓱 최다검색 센터<br>성수 밥불러스</h2>
                                      <p data-swiper-parallax="-200" class="size-12 color-white"
                                         style="text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);">
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
                                  <img src="/assets/img/gymImg/yoga_main_7.jpg" alt="">
                                  <div
                                          class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-left">
                                      <h2 data-swiper-parallax="-300"
                                          class="size-27 weight-600 color-black text-uppercase mb-1"
                                          style="text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);">
                                          체계적인 커리큘럼과 회원 바디관리<br>클라임 요가원</h2>
                                      <p data-swiper-parallax="-200" class="size-12 color-black"
                                         style="text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);">
                                          조인인원 모집 시 15% 할인 쿠폰 증정</p>
                                  </div>
                              </a>
                          </div>

                      </div>
                  </div>
                  <div class="swiper-slide">
                      <div class="--item-inside">
                          <div class="cover_img">
                              <a href="/groupboard">
                                  <img src="/assets/img/gymImg/crossfit_main_12.jpg" alt="">
                                  <div
                                          class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-left">
                                      <h2 data-swiper-parallax="-300"
                                          class="size-27 weight-600 color-white text-uppercase mb-1"
                                          style="text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);">
                                          WOMEN 전용 크로스핏 센터 오픈<br>리베핏</h2>
                                      <p data-swiper-parallax="-200" class="size-12 color-white"
                                         style="text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);">
                                          20% 할인 쿠폰 증정</p>
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
              <h3 class="size-18 weight-500 color-secondary m-0">6월 베스트 센터</h3>
              <p class="size-13 color-text m-0 pt-1">운동환경 관리에 우수한 센터들이 선정됐어요😷</p>
          </div>
          <a href="/ticket/all" class="d-block color-text size-12">더보기</a>
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
                                  <div class="image_bg" style="background-image: url('/assets/img/gymImg/${gym.gymImgname}');"></div>
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
                                  <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                      <path fill="#555" d="M13.6816069,1.68151414 C15.6886881,1.20225236 17.3492986,1.70793555 18.5305552,2.77637221 C19.5626391,3.70988338 20.1587415,5.33450059 19.9630126,7.16572033 C19.8161255,8.53998089 19.0697083,9.93491864 17.720706,11.386568 L10.4473397,18.3091773 C10.1789774,18.5645979 9.75131756,18.5634627 9.48437469,18.306621 L2.26602773,11.360285 C1.19796664,10.2267143 0.516216376,9.15006254 0.232531945,8.11775634 C-0.179041108,6.62007311 -0.0389102525,5.1069236 0.610402012,3.87469373 C1.38014048,2.41392548 2.91616709,1.54639939 5.14169869,1.54639939 C6.66436262,1.54639939 8.26181311,2.29873453 9.94732517,3.76705682 C11.0946237,2.70056091 12.3405404,2.00174132 13.6816069,1.68151414 Z M9.96986805,16.8832036 L16.7307562,10.4500428 C17.8683506,9.22426481 18.4802442,8.08073063 18.593038,7.02544401 C18.7443646,5.60964799 18.3027389,4.40604174 17.5956909,3.76652276 C16.7370508,2.98989 15.5402429,2.62544232 14.0080827,2.99129989 C12.7513412,3.29139148 11.5737369,4.01053975 10.4701027,5.16500603 C10.2073896,5.43981945 9.76565601,5.45085998 9.4889549,5.1895285 C7.85204028,3.64353785 6.39709722,2.89460061 5.14169869,2.89460061 C3.41950102,2.89460061 2.36199017,3.49186778 1.83462163,4.49267941 C1.34644218,5.41912009 1.23828402,6.58702475 1.56270689,7.76757505 C1.78126554,8.56289346 2.34931983,9.45999126 3.25514439,10.4225684 L9.96986805,16.8832036 Z"/>
                                  </svg> <span class="users">　${gym.likecount} likes</span>
                              </div>
                              <h3>최신시설과 쾌적한 센터환경 유지로 헬쓱이용 회원 최고 만족도!</h3>
                              <p class="item_price">${gym.gymName}</p>
                          </div>
                      </div>
                    <%--    이용권 리스트 아코디언 : component-multiple-listview.html   --%>
                        <!-- Start emPage___profile -->
                        <div class="em__pkLink accordion bg-white" id="accordionExample5">
                            <ul class="nav__list with_border fullBorder">

                                <li>
                                    <div id="headingTwo-text">
                                        <div class="item-link main_item" data-toggle="collapse"
                                             data-target="#collapseTwo-text"
                                             aria-expanded="false" aria-controls="collapseTwo-text">
                                            <div class="group">

                                                <div>
                                                    <span class="path__name">운동 이용권</span>
                                                </div>
                                            </div>
                                            <div class="group">
                                                <span class="short__name"></span>
                                                <i class="tio-chevron_right -arrwo"></i>
                                            </div>
                                        </div>
                                    </div>

                                </li>
                                    <%-- 운동 이용권 선택 시 나오는 아코디언 --%>
                                <div id="collapseTwo-text" class="collapse" aria-labelledby="headingTwo-text"
                                     data-parent="#accordionExample5">
                                    <div class="em__pkLink">

                                            <ul class="nav__list with_border fullBorder mb-0">
                                                <li class="border-0">

                                                        <div class="group">
                                                            <span class="path__name">
                                                                <!--간격용  -->
                                                                <a href="#" class="item-link"></a>
                                                                <a href="/ticket/detail?gymNo=${gym.gymNo}"
                                                                style="color: gray; text-decoration: none; font-size: 16px; font-weight: bold;
                                                                margin-left: 20px">${gym.gymName} ${gym.ticketName}</a>

                                                                <span class="short__name"></span>
                                                                <i class="tio-chevron_right -arrwo"></i>
                                                                <!--간격용  -->
                                                                <a href="#" class="item-link"></a>
                                                            </span>
                                                            <div class="group">

                                                            </div>

                                                        </div>

                                                    </a>
                                                </li>
                                            </ul>

                                    </div>
                                </div>

                            </ul>
                        </div>
                        <!-- End. emPage___profile  -->
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
                                  <div class="image_bg" style="background-image: url('/assets/img/gymImg/${gym.gymImgname}');"></div>
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
                                  <div class="image_bg" style="background-image: url('/assets/img/gymImg/${gym.gymImgname}');"></div>
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
                                  <div class="image_bg" style="background-image: url('/assets/img/gymImg/${gym.gymImgname}');"></div>
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
                                  <div class="image_bg" style="background-image: url('/assets/img/gymImg/${gym.gymImgname}');"></div>
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
                                  <div class="image_bg" style="background-image: url('/assets/img/gymImg/${gym.gymImgname}');"></div>
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
                                  <div class="image_bg" style="background-image: url('/assets/img/gymImg/${gym.gymImgname}');"></div>
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
                                  <div class="image_bg" style="background-image: url('/assets/img/gymImg/${gym.gymImgname}');"></div>
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
                          </div>
                      </div>
                    </c:forEach>
                  </div>
              </div><!-- swim 끝 -->
          </div>


      </section>
  </div><%--  끝.  --%>

