<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>
<body class="bg-snow">

<!-- Start em_loading -->
<section class="em_loading" id="loaderPage">
  <div class="spinner_flash"></div>
</section>
<!-- End. em_loading -->

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
                        Payment Method
                    </span>
      </div>

    </header>
    <!-- End.main_haeder -->

    <!-- Start emSection__payment -->
    <section class="emSection__payment">
      <div class="credite_saved itemSingle">
        <button type="button" class="btn item item_credit selected">
          <div class="media align-items-center">
            <div class="icon">
              <img src="assets/img/icon/visa.svg" alt="">
            </div>
            <div class="media-body">
              <div class="txt">
                <h5>4002 **** **** 0970</h5>
                <span>Expires 04/23</span>
              </div>
            </div>
          </div>
          <div class="check">
            <i class="ri-check-fill"></i>
          </div>
        </button>
        <button type="button" class="btn item item_credit">
          <div class="media align-items-center">
            <div class="icon">
              <img src="assets/img/icon/american-express.svg" alt="">
            </div>
            <div class="media-body">
              <div class="txt">
                <h5>3210 **** **** 9850</h5>
                <span>Expires 09/26</span>
              </div>
            </div>
          </div>
          <div class="check">
            <i class="ri-check-fill"></i>
          </div>
        </button>
      </div>
      <div class="padding-20 px-0">
        <p class="size-14 color-text m-0">Choose a new method</p>
      </div>
      <a href="page-credit-card.html" class="btn itemPay">
        <span>Credit Card</span>
        <div class="icon__payment">
          <img src="assets/img/icon/visa.svg" alt="">
          <img src="assets/img/icon/american-express.svg" alt="">
          <img src="assets/img/icon/shopify.svg" alt="">
          <img src="assets/img/icon/master-card.svg" alt="">
        </div>
      </a>
      <a href="#" class="btn itemPay">
        <span>PayPal</span>
        <div class="icon__payment">
          <img src="assets/img/icon/paypal.svg" alt="">
        </div>
      </a>
    </section>
    <!-- End. emSection__payment -->

    <div class="buttons__footer text-center bg-transparent">
      <div class="d-flex align-items-center margin-b-20 text-center justify-content-center">
        <i class="tio-security size-20 color-snow"></i>
        <span class="d-block size-14 color-snow ml-2">Safe and secure payments</span>
      </div>
      <div class="env-pb">
        <a href="page-payment-successful.html" class="btn bg-primary rounded-pill btn__default">
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
