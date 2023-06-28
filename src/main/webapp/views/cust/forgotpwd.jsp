<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .button-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>

<div id="wrapper">
    <div id="content">
        <!-- Start main_haeder -->
        <header class="main_haeder header-sticky multi_item">
            <div class="em_side_right">
                <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/cust/login">
                    <i class="tio-chevron_left size-24 color-text"></i>
                </a>
            </div>
            <div class="title_page">
                    <span class="page_name">
                        <!-- title here.. -->
                    </span>
            </div>
            <div class="em_side_right">
<%--                <a href="page-signin-email.html"--%>
<%--                   class="link__forgot d-block size-14 color-text text-decoration-none hover:color-secondary transition-all">--%>
<%--                    Need some help?--%>
<%--                </a>--%>
            </div>
        </header>
        <!-- End.main_haeder -->

        <!-- Start em__signTypeOne -->
        <section class="em__signTypeOne typeTwo np__account padding-t-70">
            <div class="em_titleSign">
                <h1>비밀번호를 잃어버리셨군요!</h1>
                <p>
                    가입 당시 이메일로 임시 비밀번호를 전송해드릴게요.
                </p>
            </div>
            <div class="em__body padding-t-30">
                <form action="" class="padding-0">
                    <div class="">
                        <div class="form-group input-lined lined__iconed">
                            <div class="input_group" style="padding-top: 10px;">
                                <input type="email" class="form-control" id="email" placeholder="example@mail.com"
                                       required="">
                                <div class="icon">
                                    <svg id="Iconly_Curved_Message" data-name="Iconly/Curved/Message"
                                         xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                         viewBox="0 0 22 22">
                                        <g id="Message" transform="translate(2.248 2.614)">
                                            <path id="Stroke_1" data-name="Stroke 1"
                                                  d="M10.222,0S7.279,3.532,5.127,3.532,0,0,0,0"
                                                  transform="translate(3.613 5.653)" fill="none" stroke="#9498ac"
                                                  stroke-linecap="round" stroke-linejoin="round"
                                                  stroke-miterlimit="10" stroke-width="1.5"/>
                                            <path id="Stroke_3" data-name="Stroke 3"
                                                  d="M0,8.357C0,2.089,2.183,0,8.73,0s8.73,2.089,8.73,8.357-2.183,8.357-8.73,8.357S0,14.624,0,8.357Z"
                                                  transform="translate(0 0)" fill="none" stroke="#9498ac"
                                                  stroke-linecap="round" stroke-linejoin="round"
                                                  stroke-miterlimit="10" stroke-width="1.5"/>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <label for="email" style="font-weight: bold">이메일 주소</label>
                        </div>
                    </div>
                </form><br><br>
                <div class="button-container">
                    <button href="page-verification-email.html" class="btn rounded-pill btn__default" style="background-color: blueviolet; border-radius: 10px;">
                        <span class="color-white">임시 비밀번호 받기</span>
                        <div class="icon rounded-circle">
                            <i class="tio-chevron_right"></i>
                        </div>
                    </button>
                </div>
            </div>
        </section>
        <!-- End. em__signTypeOne -->
    </div>
</div>

<script>

</script>
