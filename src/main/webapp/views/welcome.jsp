<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport"
        content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="default">
  <meta name="format-detection" content="telephone=no">

  <meta name="theme-color" content="#ffffff">
  <title>Nepro – The Multipurpose Mobile HTML5 Template</title>
  <meta name="description" content="Nepro – The Multipurpose Mobile HTML5 Template">
  <meta name="keywords"
        content="bootstrap 4, mobile template, 404, chat, about, cordova, phonegap, mobile, html, ecommerce, shopping, store, delivery, wallet, banking, education, jobs, careers, distance learning" />

  <!-- favicon -->
  <link rel="icon" type="image/png" href="assets/img/favicon/32.png" sizes="32x32">
  <link rel="apple-touch-icon" href="assets/img/favicon/favicon192.png">

  <!-- CSS Libraries-->
  <!-- bootstrap v4.6.0 -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <!--
      theiconof v3.0
      https://www.theiconof.com/search
   -->
  <link rel="stylesheet" href="assets/css/icons.css">
  <!-- Remix Icon -->
  <link rel="stylesheet" href="assets/css/remixicon.css">
  <!-- Swiper 6.4.11 -->
  <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
  <!-- Owl Carousel v2.3.4 -->
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
  <!-- Custom styles for this template -->
  <link rel="stylesheet" href="assets/css/main.css">
  <!-- normalize.css v8.0.1 -->
  <link rel="stylesheet" href="assets/css/normalize.css">

  <!-- manifest meta -->
  <link rel="manifest" href="_manifest.json" />
</head>


<body>

<!-- Start em_loading -->
<section class="em_loading" id="loaderPage">
  <div class="spinner_flash"></div>
</section>
<!-- End. em_loading -->

<div id="wrapper">
  <div id="content">
    <!-- Start main_haeder -->
    <header class="main_haeder header-sticky multi_item bg-transparent d-lfex justify-content-end">
      <div class="em_side_right">
        <a href="index.html"
           class="link__forgot d-block size-14 color-white text-decoration-none hover:color-secondary transition-all">
          Skip
        </a>
      </div>
    </header>
    <!-- End.main_haeder -->

    <!-- Start em_introPage -->
    <section class="em_welcomeClassic __welcomeSwiper">
      <div class="cover_image">
        <img src="assets/img/065489.jpg" alt="">

        <!-- Swiper -->
        <div class="swiper-container swiperWelcome">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="content_text">
                <h2>Browse All Branches</h2>
                <p>Discover products easily by swiping from one branch to another</p>
              </div>
            </div>
            <div class="swiper-slide">
              <div class="content_text">
                <h2>Browse All Branches</h2>
                <p>Discover products easily by swiping from one branch to another</p>
              </div>
            </div>
            <div class="swiper-slide">
              <div class="content_text">
                <h2>Browse All Branches</h2>
                <p>Discover products easily by swiping from one branch to another</p>
              </div>
            </div>
          </div>
          <!-- Add Pagination -->
          <div class="swiper-pagination"></div>
        </div>

        <div class="actionSign">
          <a href="page-register.html" class="btn btn__icon bg-white h-52 rounded-8">
            Sign Up
            <div class="icon">
              <svg id="Iconly_Light_Arrow_-_Right_Square"
                   data-name="Iconly/Light/Arrow - Right Square" xmlns="http://www.w3.org/2000/svg"
                   width="24" height="24" viewBox="0 0 24 24">
                <g id="Arrow_-_Right_Square" data-name="Arrow - Right Square"
                   transform="translate(2 22) rotate(-90)">
                  <path id="Stroke_1" data-name="Stroke 1"
                        d="M4.916,18.5h8.669c3.02,0,4.915-2.139,4.915-5.166V5.166C18.5,2.139,16.615,0,13.585,0H4.916C1.886,0,0,2.139,0,5.166v8.168C0,16.361,1.886,18.5,4.916,18.5Z"
                        transform="translate(0.75 0.75)" fill="none" stroke="#200e32"
                        stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                        stroke-width="1.5" opacity="0.4" />
                  <path id="Stroke_3" data-name="Stroke 3" d="M.5,8.172V0"
                        transform="translate(9.5 5.914)" fill="none" stroke="#200e32"
                        stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                        stroke-width="1.5" />
                  <path id="Stroke_5" data-name="Stroke 5" d="M7.5,0,3.748,3.764,0,0"
                        transform="translate(6.252 10.322)" fill="none" stroke="#200e32"
                        stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                        stroke-width="1.5" />
                </g>
              </svg>
            </div>
          </a>
          <a href="page-signin.html" class="btn color-white min-w-150 h-52 justify-content-center">
            Sign In
          </a>
        </div>
      </div>
    </section>
    <!-- End. em_introPage -->

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