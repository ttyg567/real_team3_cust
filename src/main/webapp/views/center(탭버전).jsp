<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
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
    <!-- Start main_haeder -->
    <header class="header_tab">
      <div class="main_haeder bg-white multi_item">
        <div class="em_side_right">


        </div>
        <div class="title_page">
          <a href="/">
            <img src="/assets/img/logo.jpg" alt="" style="width: 70px; height:50px; margin-top: 5px">
          </a>
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
<%--               알림 주석--%>
<%--            <svg class="hover_ico color-primary" id="Iconly_Two-tone_Notification" data-name="Iconly/Two-tone/Notification"--%>
<%--                 xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">--%>
<%--              <g id="Notification" transform="translate(3.5 2)">--%>
<%--                <path id="Path_425"--%>
<%--                      d="M0,11.787v-.219A3.6,3.6,0,0,1,.6,9.75,4.87,4.87,0,0,0,1.8,7.436c0-.666,0-1.342.058-2.009C2.155,2.218,5.327,0,8.461,0h.078c3.134,0,6.306,2.218,6.617,5.427.058.666,0,1.342.049,2.009A4.955,4.955,0,0,0,16.4,9.759a3.506,3.506,0,0,1,.6,1.809v.209a3.566,3.566,0,0,1-.844,2.39A4.505,4.505,0,0,1,13.3,15.538a45.078,45.078,0,0,1-9.615,0A4.554,4.554,0,0,1,.835,14.167,3.6,3.6,0,0,1,0,11.787Z"--%>
<%--                      transform="translate(0 0)" fill="none" stroke="#200e32" stroke-linecap="round"--%>
<%--                      stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />--%>
<%--                <path id="Path_421"--%>
<%--                      d="M0,0A3.061,3.061,0,0,0,2.037,1.127,3.088,3.088,0,0,0,4.288.5,2.886,2.886,0,0,0,4.812,0"--%>
<%--                      transform="translate(6.055 18.852)" fill="none" stroke="#200e32"--%>
<%--                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"--%>
<%--                      stroke-width="1.5" opacity="0.4" />--%>
<%--              </g>--%>
<%--            </svg>--%>
            <span class="flashCircle"></span>
          </a>

        </div>
      </div>
      <div class="tab__line three_item">
        <ul class="nav nav-pills" id="pills-tab" role="tablist">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home"
               role="tab" aria-controls="pills-home" aria-selected="true">투데이</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile"
               role="tab" aria-controls="pills-profile" aria-selected="false">베스트</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact"
               role="tab" aria-controls="pills-contact" aria-selected="false">특가</a>
          </li>
        </ul>
      </div>

    </header>
    <!-- End.main_haeder -->

    <section class="components_page paddingTab_header">

      <div class="tab-content padding-20" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
             aria-labelledby="pills-home-tab">
          <!-- 첫번째 탭 . 내용넣는 구간 -->
          <div class="emTitle_co">
            <!-- Start banner_sliderFull  -->
            <section class="banner_sliderFull margin-b-20 margin-t-50">
              <!-- Swiper -->
              <div class="swiper-container em-swiperSliderFull -height-sm">
                <div class="swiper-wrapper">
                  <div class="swiper-slide">
                    <div class="--item-inside">
                      <div class="cover_img d-flex justify-content-center">
                        <img src="/assets/img/mainbanner1.png" alt="">
                        <div
                                class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-center">
                          <h2 data-swiper-parallax="-300"
                              class="size-30 weight-600 color-white text-uppercase mb-1">
                            be fashionable
                          </h2>
                          <p data-swiper-parallax="-200" class="size-14 color-white">
                            It's Colors Season</p>
                          <a data-swiper-parallax="-100" href="#"
                             class="btn rounded-8 bg-secondary color-white size-14 weight-400 min-w-115 h-41 hover:color-white d-inline-flex align-items-center justify-content-center">
                            Shop Now
                            <i class="tio-chevron_right ml-1 size-16 color-white color-opacity-70"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="--item-inside">
                      <div class="cover_img d-flex justify-content-center">
                        <img src="assets/img/0654.jpeg" alt="">
                        <div
                                class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-center">
                          <h2 data-swiper-parallax="-300"
                              class="size-30 weight-600 color-white text-uppercase mb-1">
                            be fashionable
                          </h2>
                          <p data-swiper-parallax="-200" class="size-14 color-white">
                            It's Colors Season</p>
                          <a data-swiper-parallax="-100" href="#"
                             class="btn rounded-8 bg-red color-white size-14 weight-400 min-w-115 h-41 hover:color-white d-inline-flex align-items-center justify-content-center">
                            Shop Now
                            <i class="tio-chevron_right ml-1 size-16 color-white color-opacity-70"></i>
                          </a>
                        </div>
                      </div>

                    </div>
                  </div>
                  <div class="swiper-slide"><!-- 세번째 사진 -->
                    <div class="--item-inside">
                      <div class="cover_img d-flex justify-content-center">
                        <img src="assets/img/0654.jpeg" alt="">
                        <div
                                class="text_img position-absolute bottom-0 padding-b-50 padding-l-20 text-center">
                          <h2 data-swiper-parallax="-300"
                              class="size-30 weight-600 color-white text-uppercase mb-1">
                            be fashionable
                          </h2>
                          <p data-swiper-parallax="-200" class="size-14 color-white">
                            It's Colors Season</p>
                          <a data-swiper-parallax="-100" href="#"
                             class="btn rounded-8 bg-red color-white size-14 weight-400 min-w-115 h-41 hover:color-white d-inline-flex align-items-center justify-content-center">
                            Shop Now
                            <i class="tio-chevron_right ml-1 size-16 color-white color-opacity-70"></i>
                          </a>
                        </div>
                      </div>

                    </div>
                  </div><!-- 세번째 사진 끝 -->
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
              </div>
            </section>
            <!-- End. banner_sliderFull -->
          </div>
          <!-- 첫번째 탭 끝. -->

        </div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
          <!-- Start title -->
          <div class="emTitle_co">
            <h2 class="size-20 weight-600 color-secondary mb-1">Profile</h2>
            <p class="size-14 color-text mb-3">This is an example text.</p>

            <p class="size-16 color-text">
              Velit euismod in pellentesque massa placerat. Nibh nisl condimentum id venenatis a. Quis
              risus
              sed vulputate odio. Fermentum posuere urna nec tincidunt praesent semper. Non
              consectetur a erat
              nam at lectus urna duis. Vitae elementum curabitur vitae nunc sed velit dignissim
              sodales ut.
            </p>
          </div>
          <!-- End. title -->
        </div>
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">

          <!-- Start title -->
          <div class="emTitle_co">
            <h2 class="size-20 weight-600 color-secondary mb-1">Contact</h2>
            <p class="size-14 color-text mb-3">This is an example text.</p>

            <p class="size-16 color-text">
              Velit euismod in pellentesque massa placerat. Nibh nisl condimentum id venenatis a. Quis
              risus
              sed vulputate odio. Fermentum posuere urna nec tincidunt praesent semper. Non
              consectetur a erat
              nam at lectus urna duis. Vitae elementum curabitur vitae nunc sed velit dignissim
              sodales ut.
            </p>
          </div>
          <!-- End. title -->
        </div>
      </div>


    </section>

  </div>
</div>