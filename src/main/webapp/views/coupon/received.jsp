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
        <header class="main_haeder bg-transparent">
            <div class="em_side_right absolute top-0 right-0 padding-t-20">
                <a class="btn btn__back rounded-10" href="/">
                    <i class="tio-clear"></i>
                </a>
            </div>
        </header>
        <!-- End.main_haeder -->
        <div>
            <c:choose>
                <c:when test="${couponOpen.couponName == '할인권'}">
                    <!-- Swiper -->
                    <div class="swiper-container swiper-intro-default swiper__text padding-t-40">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="content_text">
                                    <h2 class="txt_gradient">축하드려요! 조인 완료하셨어요!</h2>
                                    <h2 class="size-20 weight-500 color-secondary margin-b-10">이용권을 바로 구매하세요</h2>
                                    <p class="size-15 color-text margin-b-10 moving-text">
                                        ▼ ${couponOpen.gymName} ${couponOpen.ticketName} ▼</p>
                                    <a href="/ticket/detail?gymNo=${couponOpen.gymNo}"
                                       class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
                                        이용권 구매하러 가기</a>
                                </div>
                                <br/>
                                <div id="notification1">
                                    <p style="color: darkgray; margin-top: 10px;">
                                            ${couponOpen.groupboardTitle}
                                    </p>
                                    <img src="/assets/img/${couponOpen.groupboardImgname}" alt="" style="height:450px">
                                </div>
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <!-- Swiper -->
                    <div class="swiper-container swiper-intro-default swiper__text padding-t-40">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="content_text">
                                    <h2 class="txt_gradient">축하드려요! ${couponOpen.couponName} 쿠폰 당첨!</h2>
                                    <h2 class="size-20 weight-500 color-secondary margin-b-10">이용권을 바로 구매하세요</h2>
                                    <p class="size-15 color-text margin-b-10 moving-text">▼ 커피 한 잔으로 오늘도 이겨내보아요! ▼</p>
                                    <a href="/coupon/my_coupon?custNo=${logincust.custNo}"
                                       class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
                                        내 쿠폰함 보기</a>
                                </div>
                                <br/>
                                <div id="notification">
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
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>