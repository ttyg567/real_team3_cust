<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    <%-- 운동 종목 : 텍스트 글씨 진하게 --%>
    .em__actions span{
        font-weight: bolder;
    }
    .em__actions .icon{
        border-radius: 30px;
    }
    <%-- 운동 종목 : 아이콘 사진 크기 조정 --%>
    .icon img{
        width: 30px;
        height: 30px;
    }
    #map img{
        border-radius: 15px;
        width: 100%;
        height: 100%;
        border: #9f9f9f 1px solid;
    }
    .join-button {
        position: fixed;
        z-index: 20;
        bottom: 100px;
        right: 50px;
    }

    .join-button img {
        width: 50px;
        height: 50px;
        border-radius: 30px;
        opacity: 0.5; /* 초기에 불투명도 설정 */
        filter: alpha(opacity=50); /* IE8 이하 버전을 위한 설정 */
        transition: opacity 0.3s ease; /* 불투명도 변화에 대한 트랜지션 설정 */
        -webkit-transition: opacity 0.3s ease; /* Safari 및 Chrome을 위한 설정 */
    }

    .join-button img:hover {
        opacity: 1; /* 커서를 올릴 때 불투명도 제거 */
        filter: alpha(opacity=100); /* IE8 이하 버전을 위한 설정 */
    }
    .embody__content svg{
        margin-right: 15px;
    }
    .joincontent{
        margin-bottom: 15px;
    }
</style>
<%--<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4617571d8f9917ae900e8b494a093c31"></script>--%>


<!-- header 구간  -->
<jsp:include page="/views/groupboard/groupboardheader.jsp" />
<!-- Start input_SaerchDefault -->
<section class="padding-t-70 change_colorSearch">
    <div class="title_welcome">
                        <span class="color-secondary size-16 weight-500">
                            성동구
                             <i class="tio-chevron_down -arrwo"></i>
                        </span>
        <p class="size-13 weight-400 color-text mb-0" style="font-size: 5px; color:#8890E8">
            ${logincust.custName}님이 참여하기 좋은 조인 위주로 보여드렸어요.
        </p>
    </div>

</section>
<br>

<!-- End. input_SaerchDefault -->
<!-- Start emCategories__learning -->
<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-10 mt-0 padding-b-0">
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">운동 종목별</h3>
        </div>
        <a href="/groupboard/list" class="d-block color-text size-12 m-0 hover:color-blue">더보기</a>
    </div>

    <section class="np__bkOperationsService padding-10">
        <%--<section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">--%>
        <div class="em__actions">
            <a href="/groupboard/workout" class="btn">
                <div class="icon bg-blue bg-opacity-10">
                    <img src="/assets/img/cate2.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>헬스</span>
            </a>
            <a href="/groupboard/personaltraining" class="btn">
                <div class="icon bg-green bg-opacity-10">
                    <img src="/assets/img/cate1.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>PT</span>
            </a>
            <a href="/groupboard/crossfit" class="btn">
                <div class="icon bg-yellow bg-opacity-10">
                    <img src="/assets/img/cate3.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>크로스핏</span>
            </a>
            <a href="/groupboard/yoga" class="btn">
                <div class="icon bg-red bg-opacity-10">
                    <img src="/assets/img/cate4.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>요가</span>
            </a>
            <a href="/groupboard/pilates" class="btn">
                <div class="icon bg-yellow bg-opacity-10">
                    <img src="/assets/img/cate5.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>필라테스</span>
            </a>
            <a href="/groupboard/golf" class="btn">
                <div class="icon bg-green bg-opacity-10">
                    <img src="/assets/img/cate6.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>골프</span>
            </a>
            <a href="/groupboard/swimming" class="btn">
                <div class="icon bg-blue bg-opacity-10">
                    <img src="/assets/img/cate7.png" alt="">
                    <%--                    <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>--%>
                </div>
                <span>수영</span>
            </a>
        </div>
        <%--</section>--%>
    </section>
</section>
<hr style="height: 30px; color: #EFECEC; border: none; border-top: 5px solid;">
<!-- End. emCategories__learning -->

<!-- Start em_swiper_products -->
<%--관심지역에 오픈된 조인 : 슬라이드 --%>
<!-- Start banner_swiper -->
<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-0 mt-0 padding-b-0">
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">나의 관심지역</h3>
            <p class="size-13 color-text m-0 pt-1">거리가 가까울 수록 포기와는 거리가 멀어져요!</p>
        </div>
        <a href="/groupboard/groupboard_list" class="d-block color-text size-12 m-0 hover:color-blue">더보기</a>
    </div>
    <!-- 1.관심지역 슬라이드. Swiper -->
    <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
    <c:forEach var="obj" items="${alljoin}" >
<%--        ${obj.groupboardNo}--%>
        <div class="item em_item">
            <a data-toggle="modal"
               data-target="#mdllJobDetails${obj.groupboardNo}" class="em_cover_img text-decoration-none">
                <img src="/assets/img/${obj.groupboardImgname}" alt="">
            </a>
            <div class="card-body">
                <h6 class="card-title"><!-- 글제목 -->
                        ${obj.groupboardTitle}
                </h6>

                <div class="card_user color-text">
                    <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                    </svg>
                   <%-- 모집인원 - 신청된 인원 = 신청가능 인원   --%>
                    <c:set var="canapplymember" value="${canapplymember = (obj.expectMember - obj.applicationMember) }" />
                    <span style="font-size: smaller; color: #5d6072; font-weight: bold "><span style="color:#8890E8"><fmt:formatNumber value="${canapplymember}" />명</span> 조인 가능</span>
                </div>
                <div class="color-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                    <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                    <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                </svg>
                <span class="card-text" style="font-size: x-small; color: #5d6072; ">
                    ${obj.gymName}
                </span>
                </div>
            </div>
        </div>
        </c:forEach>

    </div>

</section>
<!-- End. banner_swiper -->

<%--선호운동 비슷한 조인 : 슬라이드 --%>
<!-- Start banner_swiper -->
<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-10 mt-0 padding-b-40">
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">선호운동이 비슷한 회원들</h3>
            <p class="size-13 color-text m-0 pt-1">운동효능감까지 Up해요!</p>
        </div>
        <a href="/groupboard/groupboard_list" class="d-block color-text size-12 m-0 hover:color-blue">더보기</a>
    </div>
    <!-- 2. 선호운동 비슷한 조인 슬라이드. Swiper -->
    <div class="owl-carousel owl-theme em-owlCentred em_owl_swipe">
        <c:forEach var="obj" items="${alljoin}" >
            <%--        ${obj.groupboardNo}--%>
            <div class="item em_item">
                <a data-toggle="modal"
                   data-target="#mdllJobDetails${obj.groupboardNo}" class="em_cover_img text-decoration-none">
                    <img src="/assets/img/${obj.groupboardImgname}" alt="">
                </a>
                <div class="card-body">
                    <h6 class="card-title"><!-- 글제목 -->
                            ${obj.groupboardTitle}
                    </h6>

                    <div class="card_user color-text">
                        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                        </svg>
                        <%-- 모집인원 - 신청된 인원 = 신청가능 인원   --%>
                        <c:set var="canapplymember" value="${canapplymember = (obj.expectMember - obj.applicationMember) }" />
                        <span style="font-size: smaller; color: #5d6072; font-weight: bold "><span style="color:#8890E8"><fmt:formatNumber value="${canapplymember}" />명</span> 조인 가능</span>
                    </div>
                    <div class="color-text">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                            <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                            <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                        </svg>
                        <span class="card-text" style="font-size: x-small; color: #5d6072">
                    ${obj.gymName}
                </span>
                    </div>
                </div>
            </div>
        </c:forEach>

    </div>
</section>
<!-- End. banner_swiper -->

<!-- 조인만들기 버튼 : 로그인 고객은 만들기 가능, 비로그인 고객은 로그인 유도 창 안내 -->
<c:choose>
    <c:when test="${logincust == null}">
        <div class="join-button" style="position: fixed; z-index:20;  bottom: 80px; right: 20px">
            <a href="/cust/login"><img src="/img/join2.png" style="width:50px; height: 50px; drop-shadow(5px 5px 5px #000); " title="조인만들기" ></a>
        </div>
    </c:when>
    <c:otherwise>
        <div class="join-button" style="position: fixed; z-index:20;  bottom: 80px; right: 20px">
            <a href="/groupboard/makejoin"><img src="/img/join2.png" style="width:50px; height: 50px; drop-shadow(20px 20px 30px #000); " title="조인만들기" ></a>
        </div>
    </c:otherwise>
</c:choose>
<!-- End. em_swiper_products -->

<%--</div>--%>

<!-- Modal로 보여지는 창 : mdllJobDetails -->
<!-- Modal : center 에서 사용한 것 처럼 모달로 각 조인들 상세보기-->
<!-- 조인 상세보기를 위해선 forEach 한번 더! -->
<c:forEach  var="obj" items="${alljoin}" >
    <%-- join 신청하는 기능이 페이지에 있을 땐, from 태그와, input hidden이 꼭 있어야해
     action -> 기재된 컨트롤러에서 처리 --%>
    <form id="join_form" action="/groupboard/success_apply" method="get">
        <input type="hidden" name="custNo" value="${logincust.custNo}"/>
        <input type="hidden" name="groupboardNo" value="${obj.groupboardNo}"/>
        <input type="hidden" name="gymNo" value="${obj.gymNo}"/>
        <div class="modal transition-bottom screenFull defaultModal mdllJobs_details fade" id="mdllJobDetails${obj.groupboardNo}"
             tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header padding-l-20 padding-r-50">
                            <%-- 이미지 넣을 맨 상단 구간 --%>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="tio-clear"></i>
                        </button>

                    </div>
                    <div class="modal-body p-0"><%-- 제목~내용 구간  --%>
                        <div id="wrapper">

                            <div id="content">
                                <!-- Start emPage__detailsBlog -->
                                <section class="emPage__detailsBlog" style="margin-top: -100px">
                                    <div class="emheader_cover">
                                        <div class="cover">
                                            <img src="/assets/img/${obj.groupboardImgname}" alt="" style="height:450px" >
                                        </div>
                                        <div class="title">
                                            <div class="size-18 weight-600 color-primary"style="text-align: right">
                                                <span class="color-text"></span>
                                                <c:choose>
                                                    <c:when test="${obj.groupboardStatus == 1}">
                                                        <p>모집중</p>
                                                    </c:when>
                                                    <c:when test="${obj.groupboardStatus == 2}">
                                                        <p>모집취소</p>
                                                    </c:when>
                                                    <c:when test="${obj.groupboardStatus == 3}">
                                                        <p>신청중</p>
                                                    </c:when>
                                                    <c:when test="${obj.groupboardStatus == 4}">
                                                        <p>신청취소</p>
                                                    </c:when>
                                                    <c:otherwise><!-- groupboardStatus == 5 -->
                                                        <p>확정</p>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <div class="em__header">
                                                <h3 class="">${obj.groupboardTitle}</h3>
                                            </div>

                                            <div class="item__auther emBlock__border">
                                                <div class="item_person">
                                                    <img src="/assets/img/${obj.groupboardImgname}" alt="">
                                                        <%-- 조인을 만든 고객 이름   --%>
                                                    <h2>${obj.custName}</h2>
                                                </div>
                                                <div class="sideRight">
                                                    <div class="time">
                                                        <div class="icon">
                                                            <svg id="Iconly_Curved_Time_Square" data-name="Iconly/Curved/Time Square"
                                                                 xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                                 viewBox="0 0 15 15">
                                                                <g id="Time_Square" data-name="Time Square"
                                                                   transform="translate(1.719 1.719)">
                                                                    <path id="Stroke_1" data-name="Stroke 1"
                                                                          d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                                          fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                          stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                                                    <path id="Stroke_3" data-name="Stroke 3" d="M2.119,3.99,0,2.726V0"
                                                                          transform="translate(5.781 3.053)" fill="none" stroke="#cbcdd8"
                                                                          stroke-linecap="round" stroke-linejoin="round"
                                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                                </g>
                                                            </svg>
                                                        </div>
                                                        <span>${obj.writeDate}</span>
                                                    </div>
                                                    <div class="view margin-l-10">
                                                        <div class="icon">
                                                            <svg id="Iconly_Curved_Show" data-name="Iconly/Curved/Show"
                                                                 xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                                 viewBox="0 0 15 15">
                                                                <g id="Show" transform="translate(1.719 2.969)">
                                                                    <path id="Stroke_1" data-name="Stroke 1"
                                                                          d="M3.952,1.976A1.976,1.976,0,1,1,1.976,0,1.977,1.977,0,0,1,3.952,1.976Z"
                                                                          transform="translate(3.806 2.588)" fill="none" stroke="#cbcdd8"
                                                                          stroke-linecap="round" stroke-linejoin="round"
                                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                                    <path id="Stroke_3" data-name="Stroke 3"
                                                                          d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                                                          fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                          stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                                                </g>
                                                            </svg>
                                                        </div>
                                                        <span>${obj.boardViews}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        <%-- 조인모집 작성내용 적히는 공간  --%>
                                    <div class="embody__content">
                                        <div style="height: 150px;  display: flex; flex-wrap: wrap; flex-direction: column; align-content: flex-start; align-items: flex-start;">
                                            <div class="joincontent" style=" display: flex; align-items: center;">
                                           <%-- 센터정보 : 이름 / 위치 --%>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-geo-alt color-primary" viewBox="0 0 16 16">
                                                <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                                                <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                            </svg>

                                            <span>${obj.gymName}  ${obj.gymAddress3}</span>
                                            </div>

                                           <%-- 이용권정보 : 이용권명 / 가격 / 할인율 --%>
                                                <c:choose>
                                                    <c:when test="${obj.ticketType == '1'}">
                                                            <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-ticket-perforated color-primary" viewBox="0 0 16 16">
                                                                <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                                                <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                                            </svg>
                                                                <span>기간권</span> <span>${obj.ticketMonth}개월 이용권</span>
                                                            </div>
                                                            <div class="joincontent" style="text-align: left">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                    <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                    <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                                </svg>
                                                            <span>할인가 <fmt:formatNumber value="${obj.ticketPrice}" pattern="###,### 원" /> | ${obj.ticketDiscount}% 할인 적용 (정상가 <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" />)</span>
                                                            </div>

                                                    </c:when>
                                                    <c:when test="${obj.ticketType == '2'}">
                                                            <div class="joincontent" style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-ticket-perforated color-primary" viewBox="0 0 16 16">
                                                                <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                                                <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                                            </svg>
                                                                <span>횟수권</span> <span>${obj.ticketNumber}회 이용권</span>
                                                            </div>
                                                            <div class="joincontent" style="text-align: left">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                    <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                    <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                                </svg>
                                                                <span>할인가 <fmt:formatNumber value="${obj.ticketPrice}" pattern="###,### 원" />(${obj.ticketDiscount}% 할인 적용) | 정상가 <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" /></span>
                                                            </div>

                                                    </c:when>
                                                </c:choose>

                                            <div class="joincontent">
                                            <%-- 모집인원 정보 --%>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-person color-primary" viewBox="0 0 16 16">
                                                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                                                </svg>
                                                <span>신청 인원  <span style="color: #8890E8; font-weight: bolder"> ${obj.confirmMember}명</span></span> |<span> 모집 인원 ${obj.expectMember}명</span>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="title">
                                            <h6>센터 상세정보</h6>
                                            <%--  센터 지도 이미지 --%>
                                            <div id="map" style="width: 90%; height: 250px; border: #9f9f9f 1px solid; border-radius: 15px;">
                                                <img src="/assets/img/gym1_map.jpg" alt="">
                                            </div>
                                        </div>
                                        <div style="height: 100px; margin-top: 20px;  display: flex; flex-wrap: wrap; flex-direction: column; align-content: flex-start; align-items: flex-start;">

                                            <%--  센터 주소와 연락처 --%>
                                            <div class="joincontent" style=" display: flex; align-items: center;">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building color-primary" viewBox="0 0 16 16">
                                                    <path d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1ZM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Z"/>
                                                    <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V1Zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3V1Z"/>
                                                </svg>
                                                <span>상세 주소 : ${obj.gymAddress1}, ${obj.gymAddress2}</span>
                                            </div>
                                            <div class="joincontent" style=" display: flex; align-items: center;">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone color-primary" viewBox="0 0 16 16">
                                                    <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                                                </svg>
                                                <span>연락처 : ${obj.gymPhone}</span>
                                            </div>

                                        </div>
                                        <hr>
                                        <div class="title">
                                            <h6>모집 소개내용</h6>
                                            <p>
                                             ${obj.groupboardContents}
                                            </p>
                                        </div>
                                    </div>
                                </section>



                                    <%--  모달 맨 밑 푸터   --%>
                                <div class="modal-footer">
                                    <div class="em__footer">
                                        <div class="em_footerinner">
                                            <div class="emfo_button __withIcon">
                                                <button type="button" class="btn btn_addCart" id="itemSave">
                                                    <div class="ico icon_current">
                                                        <svg id="Iconly_Two-tone_Heart" data-name="Iconly/Two-tone/Heart"
                                                             xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                             viewBox="0 0 20 20">
                                                            <g id="Heart" transform="translate(1.667 2.5)">
                                                                <path id="Path_33961"
                                                                      d="M8.124,14.878a30.408,30.408,0,0,1-5.282-3.907A9.935,9.935,0,0,1,.327,7.163,5.229,5.229,0,0,1,3.571.24,5.469,5.469,0,0,1,8.33,1h0A5.477,5.477,0,0,1,13.089.24,5.232,5.232,0,0,1,16.34,7.163a9.935,9.935,0,0,1-2.514,3.808,30.408,30.408,0,0,1-5.282,3.907L8.338,15Z"
                                                                      transform="translate(0 0)" fill="none" stroke="#292e34"
                                                                      stroke-linecap="round" stroke-linejoin="round"
                                                                      stroke-miterlimit="10" stroke-width="1.5"></path>
                                                                <path id="Path_33964" d="M0,0A2.345,2.345,0,0,1,1.681,2.018"
                                                                      transform="translate(11.613 3.378)" fill="none" stroke="#292e34"
                                                                      stroke-linecap="round" stroke-linejoin="round"
                                                                      stroke-miterlimit="10" stroke-width="1.5" opacity="0.4"></path>
                                                            </g>
                                                        </svg>
                                                    </div>
                                                    <span class="textCart color-secondary d-inline-block" >Save</span>
                                                </button>
                                                    <%-- get 방식의 submit으로 정보 전송 --%>
                                                <button type="submit" id="join_addbtn" style="margin-left: 50px"
                                                        class="btn btn__icon bg-primary color-white min-w-175 text-left justify-content-between">
                                                    조인 신청하기
                                                    <a href="/groupboard/success_apply" >
                                                        <div class="icon">
                                                            <svg id="Iconly_Light_Arrow_-_Right_Square"
                                                                 data-name="Iconly/Light/Arrow - Right Square"
                                                                 xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                                 viewBox="0 0 24 24">
                                                                <g id="Arrow_-_Right_Square" data-name="Arrow - Right Square"
                                                                   transform="translate(2 22) rotate(-90)">
                                                                    <path id="Stroke_1" data-name="Stroke 1"
                                                                          d="M4.916,18.5h8.669c3.02,0,4.915-2.139,4.915-5.166V5.166C18.5,2.139,16.615,0,13.585,0H4.916C1.886,0,0,2.139,0,5.166v8.168C0,16.361,1.886,18.5,4.916,18.5Z"
                                                                          transform="translate(0.75 0.75)" fill="none" stroke="#200e32"
                                                                          stroke-linecap="round" stroke-linejoin="round"
                                                                          stroke-miterlimit="10" stroke-width="1.5" opacity="0.4"></path>
                                                                    <path id="Stroke_3" data-name="Stroke 3" d="M.5,8.172V0"
                                                                          transform="translate(9.5 5.914)" fill="none" stroke="#200e32"
                                                                          stroke-linecap="round" stroke-linejoin="round"
                                                                          stroke-miterlimit="10" stroke-width="1.5"></path>
                                                                    <path id="Stroke_5" data-name="Stroke 5" d="M7.5,0,3.748,3.764,0,0"
                                                                          transform="translate(6.252 10.322)" fill="none" stroke="#200e32"
                                                                          stroke-linecap="round" stroke-linejoin="round"
                                                                          stroke-miterlimit="10" stroke-width="1.5"></path>
                                                                </g>
                                                            </svg>

                                                        </div>
                                                    </a>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div><%-- 제목~내용 구간 끝. --%>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </form>
</c:forEach>

<%--<script>// 지도의 크기를 동적으로 변경해주는 함수--%>
<%--// (모달창일 경우 필요) 지도가 있는 영역을 누를 때(모달이 열릴 때) 호출되도록 할 것!--%>
<%--    $(document).ready(function() {--%>
<%--        $('.modal').on('shown.bs.modal', function () {--%>
<%--            setTimeout(function (){--%>
<%--                map.relayout();--%>
<%--            }, 0);--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
<%--<script>--%>
<%--    var mapContainer = document.getElementById('map'), // 지도를 표시할 div--%>
<%--        mapOption = {--%>
<%--            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표--%>
<%--            level: 5 // 지도의 확대 레벨--%>
<%--        };--%>

<%--    // 지도를 생성합니다--%>
<%--    var map = new kakao.maps.Map(mapContainer, mapOption);--%>

<%--       // 아래는 하드코딩한 방식으로 테스트 성공--%>
<%--        // var gymData = [--%>
<%--        //     {"gymName": "헬스장2",--%>
<%--        //         "gymAddress1": "서울특별시 강남구 테헤란로 123" },--%>
<%--        //     // 추가적인 헬스장 데이터...--%>
<%--        // ];--%>

<%--    // JSON 형식의 데이터--%>
<%--    $.ajax({--%>
<%--        url:'/getgymaddress', // ajaxImpl컨트롤러에서 처리--%>
<%--        data:{'gymAddress1':gymAddress1}, // *데이터 줘~ 요청:결과--%>

<%--    });--%>
<%--    // 주소로 좌표를 검색하여 지도에 표시하는 함수--%>
<%--    function displayMarkers() {--%>
<%--        //--%>

<%--            // var gymAddress = null;--%>
<%--            // var gymName = null;--%>

<%--            // 주소-좌표 변환 객체를 생성합니다--%>
<%--            var geocoder = new kakao.maps.services.Geocoder();--%>

<%--            // 주소로 좌표를 검색합니다--%>
<%--            geocoder.addressSearch(gymAddress, function (result, status) {--%>

<%--                // 정상적으로 검색이 완료됐으면--%>
<%--                if (status === kakao.maps.services.Status.OK) {--%>

<%--                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);--%>

<%--                    // 결과값으로 받은 위치를 마커로 표시합니다--%>
<%--                    var marker = new kakao.maps.Marker({--%>
<%--                        map: map,--%>
<%--                        position: coords--%>
<%--                    });--%>


<%--                    // 인포윈도우로 장소에 대한 설명을 표시합니다--%>
<%--                    var infowindow = new kakao.maps.InfoWindow({--%>
<%--                        content: '<div style="width:150px;text-align:center;padding:6px 0;">'+gymName+'</div>'--%>
<%--                    });--%>
<%--                    infowindow.open(map, marker);--%>

<%--                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다--%>
<%--                    map.setCenter(coords);--%>
<%--                }--%>
<%--            });--%>

<%--    }--%>
<%--    // displayMarkers 함수 호출--%>
<%--    displayMarkers();--%>
<%--</script>--%>