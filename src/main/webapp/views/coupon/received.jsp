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
                <h2 class="size-20 weight-500 color-secondary margin-b-10">축하드려요! ${couponOpen.couponName} 쿠폰 당첨!</h2>
                <p class="size-15 color-text margin-b-10 moving-text">▼ 쿠폰함에서 확인할 수 있어요! ▼</p>
                <a href="/"
                   class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
                    내 쿠폰함 보기</a>
            </div><br/>
            <div id="notification">
                <img id="ame1" src="/assets/img/gift/ame1.jpg" style="cursor: pointer; width: 270px; height: 270px;"><br/>
<%--                유효기간 : 2023-06-20 ~ 2023-08-20--%>
                <p style="color: darkgray; margin-top: 10px;">
                    유효기간:
                    ${couponOpen.couponIsdate.split(" ")[0]} ~ ${couponOpen.couponExdate.split(" ")[0]}
                </p>
                <img id="ame2" src="/assets/img/gift/ame2.jpg" style="cursor: pointer; width: 270px; height: 120px;"><br/>
            </div>
        </section>
    </div>
</div>

<%--<script>--%>
<%--    // Handle the click event on the gift icon--%>
<%--    document.getElementById('giftIcon').addEventListener('click', function () {--%>
<%--        // Redirect to the desired page when the gift icon is clicked--%>
<%--        window.location.href = '/coupon/received.jsp';--%>
<%--    });--%>

<%--    // Display the gift icon when the notification is received--%>
<%--    function displayNotification() {--%>
<%--        document.getElementById('giftIcon').style.display = 'block';--%>
<%--    }--%>

<%--    // Call the displayNotification function to show the gift icon when needed--%>
<%--    displayNotification();--%>
<%--</script>--%>