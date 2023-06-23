<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
//
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

<div id="wrapper" style="display: flex; justify-content: center; height: 100vh; margin-top: 200px;">
    <div id="content">
        <section class="emPage__ResultPayment">
            <div class="em__seccess">
                <h2 class="size-20 weight-500 color-secondary margin-b-10">죄송합니다. 잠시 후에 시도해주세요</h2>
                <p class="size-15 color-text margin-b-40">헬쓱 고객센터: 1234-5678</p>
                <p class="size-15 color-text margin-b-10 moving-text">▼ 저를 클릭해주세요! ▼</p>
            </div>
            <div id="notification" style="text-align: center;">
                <img id="failIcon" src="/assets/img/login/fail.gif" style="cursor: pointer;">
            </div>
        </section>
    </div>
</div>

<script>
    // Handle the click event on the gift icon
    document.getElementById('failIcon').addEventListener('click', function () {
        // Redirect to the desired page when the gift icon is clicked
        window.location.href = "/view/1";
    });
</script>