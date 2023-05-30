<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>
<body class="d-flex align-items-center justify-content-center">

<div id="wrapper">
  <div id="content">
    <!-- Start main_haeder -->
    <header class="main_haeder bg-transparent">
      <div class="em_side_right absolute top-0 margin-t-20">
        <a class="btn btn__back rounded-10" href="index.html">
          <i class="tio-clear"></i>
        </a>
      </div>
      <div class="absolute top-0 padding-t-20 mt-2 right-0 padding-r-20">
        <a href="page-payment-method.html"
           class="link__forgot d-block size-14 color-primary text-decoration-none hover:color-blue transition-all">
          Try again
        </a>
      </div>
    </header>
    <!-- End.main_haeder -->

    <section class="emPage__ResultPayment">
      <div class="em__seccess">
        <img class="w-100 margin-b-30" src="assets/img/icon/Artwork.svg" alt="">
        <h2 class="size-18 weight-500 color-secondary margin-b-10">Payment Process Failed</h2>
        <p class="size-13 color-text margin-b-10">Your card was declined by the seller. </p>
        <a href="page-payment-method.html" class="size-14 color-primary hover:color-blue d-block">Try
          again</a>
        <div class="margin-t-40">
          <a href="index.html"
             class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
            Go th home
          </a>
        </div>
      </div>
    </section>

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
</body>
</html>
