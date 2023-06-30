<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    @keyframes moveText {
        0% {
            transform: translateY(0);
        }
        50% {
            transform: translateY(-5px);
        }
        100% {
            transform: translateY(0);
        }
    }
    /* Apply the animation to the moving text */
    .moving-text {
        animation: moveText 2s infinite;
    }
    .brand {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 30px;
        /*height: 100vh; !* 이미지를 수직 가운데로 정렬하기 위한 높이 설정 *!*/
    }
</style>
<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>
<body>


<!-- End. em_loading -->

<div id="wrapper">
    <div id="content">
        <form id="gift_form">
            <input type="hidden" id="couponNo" value="${couponNo}">
        <!-- Start main_haeder -->
        <header class="main_haeder header-sticky multi_item d-lfex justify-content-end">
            <div class="em_side_right">
                <div class="title_page">
                    <span class="page_name">
                     헬쓱
                    </span>
                </div>
                <a href="/"
                   class="link__forgot d-block size-14 color-text text-decoration-none hover:color-secondary transition-all">
                    Skip
                </a>
            </div>
        </header>
        <!-- End.main_haeder -->

        <!-- Start npPage_introDefault -->
        <section class="npPage_introDefault padding-t-70">
            <div class="brand">
                <img id="giftIcon" src="/assets/img/gift/kolly.gif"
                     style="cursor: pointer; width: 200px; width: 200px;">
            </div>
            <!-- Swiper -->
            <div class="swiper-container swiper-intro-default swiper__text padding-t-40">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="content_text">
                            <h2 class="txt_gradient">헬쓱이를 위한 선물이 도착했어요</h2>
                            <p class="size-15 color-text margin-b-40 moving-text">콜리를 클릭해주세요!</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="content_text">
                            <h2 class="txt_gradient">랜덤 이벤트 데이, 또 찾아올게요</h2>
                            <p class="size-15 color-text margin-b-40 moving-text">콜리를 클릭해주세요!</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="content_text">
                            <h2 class="txt_gradient">헬쓱 조인 멤버들과도 함께 운동을</h2>
                            <p class="size-15 color-text margin-b-40 moving-text">콜리를 클릭해주세요!</p>
                        </div>
                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>
        </section>
        <!-- End. npPage_introDefault -->
        </form>
    </div>
</div>

</body>
</html>

<script>
    // Handle the click event on the gift icon
    document.getElementById('giftIcon').addEventListener('click', function () {
        let couponNo = document.getElementById('couponNo').value;
        window.location.href = '/coupon/received?couponNo='+couponNo;
    });
</script>