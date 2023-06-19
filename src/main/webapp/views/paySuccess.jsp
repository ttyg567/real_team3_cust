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
      <div class="em_side_right absolute top-0 padding-t-20">
        <a class="btn btn__back rounded-10" href="index.html">
          <i class="tio-clear"></i>
        </a>
      </div>

    </header>
    <!-- End.main_haeder -->

    <section class="emPage__ResultPayment">
      <div class="em__seccess">
        <div class="icon">
          <i class="tio-done"></i>
        </div>
        <h2 class="size-18 weight-500 color-secondary margin-b-10">감사합니다.</h2>
        <p class="size-13 color-text margin-b-40">결제가 완료되었어요, </p>
        <p class="size-13 color-text margin-b-40">이제 열심히 운동하는 일만 남았네요 !</p>
        <a href="/class/reservation"
           class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
          수업 예약하러가기</a>
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
<script src="assets/js/pwa-services.js"></script>
</body>
</html>
