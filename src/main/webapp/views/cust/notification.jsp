<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>

<body>


<div id="wrapper">
  <div id="content">
    <!-- Start main_haeder -->
    <header class="main_haeder header-sticky multi_item">
      <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/">
          <i class="tio-chevron_left size-24 color-text"></i>
          <span class="color-text size-14">Back</span>
        </a>
      </div>
      <div class="title_page">
                    <span class="page_name">
                        알림 설정
                    </span>
      </div>
    </header>
    <!-- End.main_haeder -->

    <!-- Start emPage__Stand -->
    <section class="emPage__Stand padding-t-70">
      <div class="emhead__title emBlock__border">
        <span>헬쓱 알림</span>
      </div>
      <div class="embody__notification">
        <div class="itemSwitch">
          <label for="toggleOne">
            <h2>기본 알림</h2>
            <p>멋진 헬쓱 생활을 위해 꼭 필요한 알림을 보내드려요
               </p>
          </label>
          <div class="em_toggle">
            <button type="button" class="btn btn-toggle toggle_lg active" data-toggle="button"
                    aria-pressed="true" autocomplete="off" id="toggleOne">
              <div class="handle"></div>
            </button>
          </div>
        </div>
        <div class="itemSwitch">
          <label for="toggleTwo">
            <h2>혜택 알림</h2>
            <p>헬쓱의 다양한 혜택과 소식을 알려드려요, </p>
            <p>알림을 꺼도 중요한 정보는 받을 수 있어요 ! </p>
          </label>
          <div class="em_toggle">
            <button type="button" class="btn btn-toggle toggle_lg" data-toggle="button"
                    aria-pressed="false" autocomplete="off" id="toggleTwo">
              <div class="handle"></div>
            </button>
          </div>
        </div>
      </div>
      <div class="emhead__title emBlock__border">
        <span>운동 알림</span>
      </div>
      <div class="embody__notification">
        <div class="itemSwitch">
          <label for="toggleThree">
            <h2>스케쥴 알림</h2>
            <p>스케쥴과 관련된 알림을 보내드려요</p>
          </label>
          <div class="em_toggle">
            <button type="button" class="btn btn-toggle toggle_lg" data-toggle="button"
                    aria-pressed="false" autocomplete="off" id="toggleThree">
              <div class="handle"></div>
            </button>
          </div>
        </div>
        <div class="itemSwitch">
          <label for="toggleFour">
            <h2>이용권 알림</h2>
            <p>이용권과 관련된 알림을 보내드려요</p>
          </label>
          <div class="em_toggle">
            <button type="button" class="btn btn-toggle toggle_lg active" data-toggle="button"
                    aria-pressed="true" autocomplete="off" id="toggleFour">
              <div class="handle"></div>
            </button>
          </div>
        </div>
      </div>
    </section>
    <!-- End. emPage__Stand -->

  </div>

</div>
<!-- jquery -->
<script src="assets/js/jquery-3.6.0.js"></script>
<!-- popper.min.js 1.16.1 -->
<script src="assets/js/popper.min.js"></script>
<!-- bootstrap.js v4.6.0 -->
<script src="assets/js/bootstrap.min.js"></script>

<!-- Owl Carousel v2.3.4 -->
<script src="assets/js/vendor/owl.carousel.min.js"></script>
<!-- Swiper 6.4.11 -->
<script src="assets/js/vendor/swiper-bundle.min.js"></script>
<!-- sharer 0.4.0 -->
<script src="assets/js/vendor/sharer.js"></script>
<!-- short-and-sweet v1.0.2 - Accessible character counter for input elements -->
<script src="assets/js/vendor/short-and-sweet.min.js"></script>
<!-- jquery knob -->
<script src="assets/js/vendor/jquery.knob.min.js"></script>
<!-- main.js -->
<script src="assets/js/main.js" defer></script>
<!-- PWA app service registration and works js -->
<script src="assets/js/pwa-services.js"></script>
</body>
</html>
