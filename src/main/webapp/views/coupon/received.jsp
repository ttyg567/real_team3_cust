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
</style>

<body class="d-flex align-items-center justify-content-center">

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
        <div>
            <c:choose>
                <c:when test="${couponOpen.couponName == '할인권'}">
                    <!-- Swiper -->
                    <!-- Swiper -->
                    <div class="container">
                        <div class="container">
                            <div class="swiper-slide">
                                <div class="content_text" style="margin-top: 80px">
                                    <h4 class="txt_gradient" style="font-size: 25px;">축하드려요! 조인 완료! <br> 할인 쿠폰 도착!</h4>
                                    <h6 class="size-20 weight-500 color-secondary margin-b-10">이용권을 바로 구매하세요</h6>
                                    <p class="size-15 color-text margin-b-10 moving-text">
                                        ▼ ${couponOpen.gymName} ${couponOpen.ticketName} ▼</p>
                                    <a href="/ticket/detail?gymNo=${couponOpen.gymNo}"
                                       class="btn rounded-10 h-48 min-w-130 size-14 color-white border-snow border-solid d-inline-flex align-items-center justify-content-center"
                                       style="background-color: #af9ad5;">
                                        이용권 구매하러 가기</a>
                                </div>
                            </div>
                            <br/>
                            <div id="notification1" style="text-align: center">
                                <p style="color: darkgray; margin-top: 10px;">
                                        ${couponOpen.groupboardTitle}
                                </p>
                                <img src="/assets/img/${couponOpen.groupboardImgname}" alt="" style="width: 300px; height:300px;">
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <!-- Swiper -->
                    <div class="container">
                        <div class="container">
                            <div class="swiper-slide">
                                <div class="content_text" style="margin-top: 80px">
                                    <h4 class="txt_gradient" style="font-size: 25px;">축하드려요!
                                        <br> ${couponOpen.couponName} 쿠폰 당첨!</h4>
                                    <h6 class="size-20 weight-500 color-secondary margin-b-10">오늘도 수고 많으셨어요</h6>
                                    <p class="size-15 color-text margin-b-10 moving-text">▼ 커피 한 잔으로 오늘도 이겨내보아요! ▼</p>
                                    <a href="/coupon/my_coupon?custNo=${logincust.custNo}"
                                       class="btn rounded-10 h-48 min-w-130 size-14 color-white border-snow border-solid d-inline-flex align-items-center justify-content-center"
                                       style="background-color: #af9ad5;">
                                        내 쿠폰함 보기</a>
                                </div>
                            </div>
                            <br/>
                            <div id="notification" style="text-align: center">
                                <img id="ame1" src="/assets/img/gift/ame1.jpg"
                                     style="cursor: pointer; width: 270px; height: 270px;"><br/>
                                    <%--                유효기간 : 2023-06-20 ~ 2023-08-20--%>
                                <p style="color: darkgray; margin-top: 10px;">
                                    유효기간:
                                        ${couponOpen.couponIsdate.split(" ")[0]}
                                    ~ ${couponOpen.couponExdate.split(" ")[0]}
                                </p>
                                <img id="ame2" src="/assets/img/gift/ame2.jpg"
                                     style="cursor: pointer; width: 270px; height: 120px;"><br/>
                            </div>
                        </div>
                    </div>

                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>