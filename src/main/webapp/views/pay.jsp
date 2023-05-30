<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>
<body class="bg-snow">

<div id="wrapper">
  <div id="content">
    <!-- Start main_haeder -->
    <header class="main_haeder header-sticky multi_item">
      <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="app-pages.html">
          <i class="tio-chevron_left size-24 color-text"></i>
          <span class="color-text size-14">Back</span>
        </a>
      </div>
      <div class="title_page">
                    <span class="page_name">
                       결제하기
                    </span>
      </div>

    </header>
    <!-- End.main_haeder -->

    <!-- Start emSection__payment -->
    <section class="emSection__payment">
      <div class="credite_saved itemSingle">
        <div class="bg-white padding-20">
          <form action="">
            <div class="form-group">
              <label>센터명</label>
              <div class="input_group">
                <input type="text" class="form-control is-valid" value="스포애니 성수점"
                       required="" readonly>
              </div>
              <label>이용권</label>
              <div class="input_group">
                <input type="text" class="form-control is-valid" value="1개월 이용권"
                        required="" readonly>
              </div>
              <label>가격</label>
              <div class="input_group">
                <input type="text" class="form-control is-valid" value="99,000원"
                        required="" readonly>
              </div>
            </div>

      <div class="padding-20 px-0">
        <p class="size-14 color-text m-0">Choose a new method</p>
      </div>
      <a href="page-credit-card.html" class="btn itemPay">
        <span>무통장 입금</span>
        <div class="icon__payment">
          <img src="assets/img/icon/visa.svg" alt="">
          <img src="assets/img/icon/american-express.svg" alt="">
          <img src="assets/img/icon/shopify.svg" alt="">
          <img src="assets/img/icon/master-card.svg" alt="">
        </div>
      </a>
      <a href="#" class="btn itemPay">
        <span>카카오페이</span>
        <div class="icon__payment">
          <img src="assets/img/icon/paypal.svg" alt="">
        </div>
      </a>
          </form>

    <!-- End. emSection__payment -->

    <div class="buttons__footer text-center bg-transparent">
      <div class="d-flex align-items-center margin-b-20 text-center justify-content-center">
        <i class="tio-security size-20 color-snow"></i>
        <span class="d-block size-14 color-snow ml-2">Safe and secure payments</span>
      </div>
      <div class="env-pb">
        <a href="/paySuccess" class="btn bg-primary rounded-pill btn__default" style="margin-bottom: 50px; position: fixed; z-index:9999; bottom: 65px">
          <span class="color-white">Pay $130</span>
          <div class="icon rounded-circle">
            <i class="tio-chevron_right"></i>
          </div>
        </a>
      </div>
    </div>

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
