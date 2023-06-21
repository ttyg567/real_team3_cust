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

        <section class="emPage__ResultPayment">
            <div class="em__seccess">
                <h2 class="size-20 weight-500 color-secondary margin-b-10">헬쓱이를 위해 열심히 선물을 챙겨왔어요</h2>
                <p class="size-15 color-text margin-b-40 moving-text">▼ 저를 클릭해주세요! ▼</p>
            </div>
            <div id="notification">
                <img id="giftIcon" src="/assets/img/gift/kolly.gif" style="cursor: pointer;">
            </div>
        </section>
    </div>
</div>

<script>
    // Handle the click event on the gift icon
    document.getElementById('giftIcon').addEventListener('click', function () {
        // Redirect to the desired page when the gift icon is clicked
        window.location.href = '/coupon/received';
    });
</script>