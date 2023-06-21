<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .illustration__container {
        position: relative;
    }

    .illustration__img {
        display: block;
        width: 100%;
        height: auto;
    }

    /*.illustration__text {*/
    /*    position: absolute;*/
    /*    top: 50%;*/
    /*    left: 50%;*/
    /*    transform: translate(-50%, -50%);*/
    /*    text-align: center;*/
    /*    color: #ffffff;*/
    /*}*/

    /*.illustration__text h1,*/
    /*.illustration__text p {*/
    /*    margin: 0;*/
    /*}*/

    .illustration__text p {
        margin-top: 10px;
        font-size: 16px;
    }

    .illustration__text a {
        display: inline-block;
        margin-top: 20px;
    }
    html, body {
        height: 100%;
        margin: 0;
    }

    .emPage__noconnection {
        height: 100%;
    }

    .illustration__container {
        position: relative;
        width: 100%;
        height: 100%;
    }

    .illustration__img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .illustration__text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        color: #ffffff;
    }
    .illustration__text {
        position: absolute;
        bottom: 0;
        width: 100%;
        text-align: center;
        color: #ffffff;
    }

    .illustration__text h1,
    .illustration__text p {
        margin: 0;
    }
</style>
<%--<main class="main-content  mt-0">--%>
<%--    <section class="my-10">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-6 my-auto">--%>
<%--                    <h1 class="display-1 text-bolder text-gradient text-danger">실패</h1>--%>
<%--                    <h2>잠시 후에 다시 시도해주세요.</h2>--%>
<%--                    <p class="lead">헬쓱 고객 센터 1234-5678 </p>--%>
<%--                    <a href="/" class="btn bg-gradient-dark mt-4">Go to Homepage</a>--%>
<%--                </div>--%>
<%--                <div class="col-lg-6 my-auto position-relative">--%>
<%--                    <img class="w-100 position-relative" src="/assets/img/illustrations/error-404.png" alt="404-error">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>
<%--</main>--%>

<body class="page__NoConnection">
<!-- Start em_loading -->

<!-- End. em_loading -->
<div id="wrapper">
    <div id="content">
        <!-- Start main_haeder -->
        <header class="main_haeder header-sticky bg-transparent border-none multi_item">
            <div class="em_side_right">
                <a class="rounded-circle d-flex align-items-center text-decoration-none" href="app-pages.html">
                    <i class="tio-chevron_left size-24 color-text"></i>
                    <span class="color-text size-14">Back</span>
                </a>
            </div>
            <div class="title_page">
                    <span class="page_name">
                     헬쓱
                    </span>
            </div>
        </header>
        <!-- End.main_haeder -->

        <section class="emPage__noconnection basicErrors">
            <div class="illustration__container">
                <img src="assets/img/error.jpg" alt="" class="illustration__img" >
                <div class="illustration__text">
                    <h4 class="color-secondary"
                        style="margin-top: -140px; margin-left: 20px;text-align: left">헬쓱이가 죄송해요,</h4><br>
                    <p class="color-text"
                    style=" margin-left: 20px;text-align: left">작은 문제가 생긴 것 같아요.  다시 시도해주세요!</p>
                    <a href="/" class="btn btn__gohome bg-red color-white"
                  style="margin-top: 50">Try again</a>
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
<script src="assets/js/pwa-services.js"></script>
</body>

