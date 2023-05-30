<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(document).ready(function () {
        register_form.init();
    });
</script>

<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/groupboard">
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
        <div class="brand mb-3">
            <img src="/assets/img/logo.jpg" alt="">
        </div>
        <h1>조인만들기</h1>
        <p class="size-13 color-text">헬쓱 회원들을 모집해서 운동 이용권을 공동구매하면 함께 할인을 받을 수 있어요 </p>
    </div>
    <div class="em__body">
        <!-- form 태그 안에 입력!  -->
        <form role="form" id="register_form">
            <div class="form-group with_icon">
                <label>센터 정보</label>
                <div class="input_group">
                    <input type="email" class="form-control" placeholder="example@mail.com" id="custEmail"
                           name="custEmail" required>
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Message" data-name="Iconly/Two-tone/Call"
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
                    <button type="button" class="btn btn-outline-secondary" style="width: 35%; height: 100%;"
                            data-toggle="modal"
                            id="btnECheck">  <!--data-target="#duplicateCheck" -->
                        검색하기
                    </button>
                </div>
                <br>
                <!-- Modal -->
                <div class="modal defaultModal modalCentered change__address fade" id="duplicateCheck" tabindex="-1"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                                <div class="itemProduct_sm">
                                    <h1 class="size-18 weight-600 color-secondary m-0">사용 가능한 이메일</h1>
                                </div>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <i class="tio-clear"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <ul class="nav__listAddress itemSingle">
                                    <li class="item">
                                        <div class="personal__info">
                                            <h2 class="size-15 color-secondary weight-400">이메일 주소</h2>
                                            <span class="size-14 color-secondary weight-500">이메일 주소 넣기</span>
                                        </div>
                                        <div class="areaRight">
                                            <button class="btn btn-outline-secondary" type="button" id="btnSendcnum"
                                                    style="">인증번호 전송
                                            </button>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="이메일로 전송된 인증번호를 입력하세요"
                                                   aria-label="cNumberInput" name="cNumberInput" id="cNumberInput"
                                                   aria-describedby="cNumberInput" style="display: none; width:70%">
                                            <button class="btn btn-outline-secondary mb-0" type="button"
                                                    id="btnConfirmcnum"
                                                    style="display: none; width:30%">인증번호 확인
                                            </button>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="personal__info">
                                            <span class="size-16 color-secondary weight-500" id="codeAvailable" style="display: none; width:100%">
                                                인증 성공했습니다. 아래의 인증 완료 버튼을 눌러주세요.
                                            </span>
                                            <span class="size-16 color-secondary weight-500" id="codeFailure" style="display: none; width:100%">
                                                인증번호가 일치하지 않습니다. 다시 입력하시거나 인증번호를 다시 받아주세요.
                                            </span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn_default_lg" data-dismiss="modal" aria-label="Close">이메일 인증 완료</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group with_icon">
                <label>이용권 정보</label>
                <div class="input_group">
                    <input type="email" class="form-control" placeholder="example@mail.com" id="custEmail"
                           name="custEmail" required>
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Message" data-name="Iconly/Two-tone/Call"
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
                    <button type="button" class="btn btn-outline-secondary" style="width: 35%; height: 100%;"
                            data-toggle="modal"
                            id="btnECheck">  <!--data-target="#duplicateCheck" -->
                        검색하기
                    </button>
                </div>
                <br>
            </div>

            <!-- 모집인원 수 설정 -->
            <div class="item-link hoverNone">
                <div class="group">
                    <span class="path__name">모집인원</span>
                    <p>회원님을 제외하고 모집받을 인원 수를 선택해 주세요</p>
                </div>
                <div class="group">
                    <div class="itemCountr_manual horizontal hz-lg" style="width: 100%">
                        <a href="#" data-dir="down" class="btn btn_counter co_down">
                            <i class="tio-remove"></i>
                        </a>
                        <input type="text" class="form-control input_no color-secondary" value="1">
                        <a href="#" data-dir="up" class="btn btn_counter co_up">
                            <i class="tio-add"></i>
                        </a>
                    </div>
                </div>
            </div><br>
            <div class="form-group with_icon">
                <label>조인완료 시 예상 할인금액</label>
                <p>회원님이 설정한 모집인원이 모두 신청했을 때 적용받는 금액을 미리 보여드려요</p>
                <div class="input_group">
                    <input type="email" class="form-control" placeholder="example@mail.com" id="custEmail"
                           name="custEmail" required>
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Message" data-name="Iconly/Two-tone/Call"
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
                    <button type="button" class="btn btn-outline-secondary" style="width: 35%; height: 100%;"
                            data-toggle="modal"
                            id="btnECheck">  <!--data-target="#duplicateCheck" -->
                        조회하기
                    </button>
                </div>
                <br>
            </div><br>
            <!-- 작성내용 -->
            <div class="form-group input-lined">
                            <textarea class="form-control" rows="2" id="groupboardTitle"
                                      placeholder="게시글 제목을 작성해 주세요(30자 이내)"></textarea>
                <label for="groupboardTitle">조인 제목</label>
            </div>
            <div class="form-group input-lined">
                            <textarea class="form-control" rows="6" id="groupboardContents"
                                      placeholder="게시글 내용을 작성해 주세요(150자 이내)"></textarea>
                <label for="groupboardContents">조인 내용</label>
            </div>
            <!-- 게시글 종류 선택 -->
            <div class="form-group with_icon">
                <label>카테고리 선택</label>
                <p>회원님이 선택하신 종류로 모집글이 게시됩니다.</p>
                <div class="form-group">
                    <select class="form-control custom-select" id="sportsType" name="sportsType">
                        <option value="1" selected>헬스</option>
                        <option value="2">PT</option>
                        <option value="3">크로스핏</option>
                        <option value="4">요가</option>
                        <option value="5">필라테스</option>
                        <option value="6">골프</option>
                        <option value="7">수영</option>
                    </select>
                </div>
            </div>
        </form><!-- from 태그 종료 -->
    </div>
    <div class="badge badge-danger" id="register_info"
         style="display: none; width: 100%;">
        <span id="register_info_msg"></span>
    </div>
    <div class="em__footer">
        <button type="button" class="btn bg-primary color-white justify-content-center" id="register_btn">작성 완료</button>
        <a href="/groupboard/success_create" class="btn hover:color-secondary justify-content-center">작성 완료</a>
    </div>


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
