<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(document).ready(function () {
        login_form.init();
    });
</script>

<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/">
            <i class="tio-chevron_left size-24 color-text"></i>
            <span class="color-text size-14">Back</span>
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
        <div class="brand">
            <img src="/assets/img/logo.jpg" alt="">
        </div>
    </div>
    <div class="em__body">
        <form id="login_form">
            <div class="form-group with_icon">
                <label>이메일 주소</label>
                <div class="input_group">
                    <input type="email" class="form-control" placeholder="example@mail.com" id="custEmail" name="custEmail" required>
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Message" data-name="Iconly/Two-tone/Message"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Message" transform="translate(2 3)">
                                <path id="Path_445" d="M11.314,0,7.048,3.434a2.223,2.223,0,0,1-2.746,0L0,0"
                                      transform="translate(3.954 5.561)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" opacity="0.4"/>
                                <path id="Rectangle_511"
                                      d="M4.888,0h9.428A4.957,4.957,0,0,1,17.9,1.59a5.017,5.017,0,0,1,1.326,3.7v6.528a5.017,5.017,0,0,1-1.326,3.7,4.957,4.957,0,0,1-3.58,1.59H4.888C1.968,17.116,0,14.741,0,11.822V5.294C0,2.375,1.968,0,4.888,0Z"
                                      transform="translate(0 0)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                            </g>
                        </svg>

                    </div>
                </div>
            </div>
            <div class="form-group with_icon mb-2" id="show_hide_password">
                <label>패스워드</label>
                <div class="input_group">
                    <input type="password" class="form-control" placeholder="enter your password" id="custPwd" name="custPwd" required >
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Password" data-name="Iconly/Two-tone/Password"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Password" transform="translate(2 2)">
                                <path id="Stroke_1" data-name="Stroke 1"
                                      d="M13.584,0H4.915C1.894,0,0,2.139,0,5.166v8.168C0,16.361,1.885,18.5,4.915,18.5h8.668c3.031,0,4.917-2.139,4.917-5.166V5.166C18.5,2.139,16.614,0,13.584,0Z"
                                      transform="translate(0.75 0.75)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" opacity="0.4"/>
                                <path id="Stroke_3" data-name="Stroke 3"
                                      d="M3.7,1.852A1.852,1.852,0,1,1,1.851,0,1.852,1.852,0,0,1,3.7,1.852Z"
                                      transform="translate(4.989 8.148)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_5" data-name="Stroke 5" d="M0,0H6.318V1.852"
                                      transform="translate(8.692 10)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_7" data-name="Stroke 7" d="M.5,1.852V0"
                                      transform="translate(11.682 10)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                            </g>
                        </svg>
                    </div>
                    <button type="button" class="btn hide_show icon_password">
                        <i class="tio-hidden_outlined"></i>
                    </button>
                </div>
            </div>
            <a href="/cust/forgotpwd" class="link__forgot">비밀번호를 잊어버리셨나요?</a>
        </form>
        <div style="text-align: center">
            <a href="/cust/register" class="btn under hover:color-secondary justify-content-center">
                아직 헬쓱이가 아니라면 가입하러 가기!
            </a>
        </div>
        <div style="text-align: center">
            <button type="button" class="btn bg-primary color-white justify-content-center" id="login_btn">로그인</button>
        </div>
    </div>
<%--        <div class="em__footer"></div>--%>
</section>

<%--<!-- Start searchMenu__hdr -->--%>
<%--<section class="searchMenu__hdr">--%>
<%--    <form>--%>
<%--        <div class="form-group">--%>
<%--            <div class="input_group">--%>
<%--                <input type="search" class="form-control" placeholder="type something here...">--%>
<%--                <i class="ri-search-2-line icon_serach"></i>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--    <button type="button" class="btn btn_meunSearch -close __removeMenu">--%>
<%--        <i class="tio-clear"></i>--%>
<%--    </button>--%>
<%--</section>--%>
<%--<!-- End. searchMenu__hdr -->--%>

<%--<!-- Modal Buttons Share -->--%>
<%--<div class="modal transition-bottom -inside screenFull defaultModal mdlladd__rate fade" id="mdllButtons_share"--%>
<%--     tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content rounded-15">--%>

<%--            <div class="modal-body rounded-15 p-0">--%>
<%--                <div class="emBK__buttonsShare icon__share padding-20">--%>
<%--                    <button type="button" class="btn" data-sharer="facebook" data-hashtag="hashtag"--%>
<%--                            data-url="https://orinostudio.com/nepro/">--%>
<%--                        <div class="icon bg-facebook rounded-10">--%>
<%--                            <i class="tio-facebook_square"></i>--%>
<%--                        </div>--%>
<%--                    </button>--%>
<%--                    <button type="button" class="btn" data-sharer="telegram" data-title="Checkout Nepro!"--%>
<%--                            data-url="https://orinostudio.com/nepro/" data-to="+44555-5555">--%>
<%--                        <div class="icon bg-telegram rounded-10">--%>
<%--                            <i class="tio-telegram"></i>--%>
<%--                        </div>--%>
<%--                    </button>--%>
<%--                    <button type="button" class="btn" data-sharer="skype"--%>
<%--                            data-url="https://orinostudio.com/nepro/" data-title="Checkout Nepro!">--%>
<%--                        <div class="icon bg-skype rounded-10">--%>
<%--                            <i class="tio-skype"></i>--%>
<%--                        </div>--%>
<%--                    </button>--%>
<%--                    <button type="button" class="btn" data-sharer="linkedin"--%>
<%--                            data-url="https://orinostudio.com/nepro/">--%>
<%--                        <div class="icon bg-linkedin rounded-10">--%>
<%--                            <i class="tio-linkedin_square"></i>--%>
<%--                        </div>--%>
<%--                    </button>--%>
<%--                    <button type="button" class="btn" data-sharer="twitter" data-title="Checkout Nepro!"--%>
<%--                            data-hashtags="pwa, Nepro, template, mobile, app, shopping, ecommerce"--%>
<%--                            data-url="https://orinostudio.com/nepro/">--%>
<%--                        <div class="icon bg-twitter rounded-10">--%>
<%--                            <i class="tio-twitter"></i>--%>
<%--                        </div>--%>
<%--                    </button>--%>
<%--                    <button type="button" class="btn" data-sharer="whatsapp" data-title="Checkout Nepro!"--%>
<%--                            data-url="https://orinostudio.com/nepro/">--%>
<%--                        <div class="icon bg-whatsapp rounded-10">--%>
<%--                            <i class="tio-whatsapp_outlined"></i>--%>
<%--                        </div>--%>
<%--                    </button>--%>
<%--                </div>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>