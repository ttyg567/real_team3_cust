<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
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
        <section class="npPage_introDefault padding-t-70"
        style="margin-top: 100px">
<%--            <div class="cover">--%>
<%--                <img src="assets/img/0sd6f8.jpg" alt="">--%>
<%--            </div>--%>
            <div class="brand">
                <img src="/assets/img/welcome.png" alt=""
                     style="width: 100px ; display: flex;
                justify-content: center;">
            </div>
            <!-- Swiper -->
            <div class="swiper-container swiper-intro-default swiper__text padding-t-40">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="content_text">
                            <h2 class="txt_gradient">헬쓱에 가입해주셔서 감사해요,</h2>
                            <p>
                               헬쓱과 함께 더 건강해질까요?
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="content_text">
                            <h2 class="txt_gradient">원하는 운동센터의 구매부터 예약까지</h2>
                            <p>
                                언제 어디서나 이용권을 구입하고 수업을 예약할 수 있는 One-Stop 서비스
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="content_text">
                            <h2 class="txt_gradient">할인에 할인을 더하는 헬쓱만의 조인서비스</h2>
                            <p>
                               헬쓱할인가에, 조인할인가를 더하면 ! 고물가 시대, 저비용 건강챙기기
                            </p>
                        </div>
                    </div>

                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>

            <div class="npButtons_networks env-pb margin-b-20" >
                <a href="/cust/pic" class="btn rounded-pill border-snow"
                   style="background-color: rebeccapurple">
                    <span class="color-white">프로필 사진 등록</span>
                </a>


            </div>

        </section>
        <!-- End. npPage_introDefault -->


    </div>
</div>

</body>
</html>
