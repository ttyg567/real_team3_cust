<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/cust/login">
            <i class="tio-chevron_left size-24 color-text"></i>
        </a>
    </div>
    <div class="title_page">
                    <span class="page_name">
                        <!-- title -->
                    </span>
    </div>
</header>
<!-- End.main_haeder -->

<section class="em__signTypeOne padding-t-50">
    <div class="em_titleSign">
        <div class="brand mb-3">
            <img src="/assets/img/logo.jpg" alt="">
        </div>
        <h1>회원가입</h1>
        <p class="size-13 color-text">헬쓱에 오신 것을 환영합니다.</p>
    </div>
    <div class="" style="display: flex;  flex-direction: column; align-items: center;">
        <button type="button" class="btn color-white justify-content-center" id="normal_login" style="width: 250px; height: 50px; background-color: blueviolet;">일반 가입하기</button>
    </div><br><br>
    <p class="size-13 color-text" style="text-align: center"> ----- 소셜 로그인으로 시작하기 ----- </p>
    <div class="" style="display: flex;  flex-direction: column; align-items: center;">
        <img src="/assets/img/login/google.png" id="google_login" alt="google_login" style="width: 250px; height: 50px; margin-top: 10px;">
        <img src="/assets/img/login/kakao.png" id="kakao_login" alt="kakao_login" style="width: 250px; height: 50px; margin-top: 10px;">
    </div>
</section>

<script>
    $(document).ready(function () {

        document.getElementById("normal_login").addEventListener("click", function() {
            window.location.href = "/cust/register";
        });

        document.getElementById("google_login").addEventListener("click", function() {
            window.location.href = "/oauth2/authorization/google";
        });

        document.getElementById("kakao_login").addEventListener("click", function() {
            // window.location.href = "/your/kakao/login/path";
        });

    });

</script>

