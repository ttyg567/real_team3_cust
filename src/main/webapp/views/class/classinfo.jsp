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
    .notification {
        background-color: #f8f8f8;
        border: 1px solid #ddd;
        padding: 10px;
        margin-bottom: 10px;
    }

    .notification p {
        margin: 0;
        color: darkgray;
        margin-top: 10px;
    }
    ul {
        list-style-type: none; /* li 요소의 동그라미 제거 */
        padding: 0;
        margin: 0;
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

        <c:choose>
            <c:when test="${classStatus == 'update'}">
                <section class="emPage__ResultPayment">
                    <div class="em__seccess">
                        <h2 class="size-20 weight-500 color-secondary margin-b-10">수업이 다음과 같이 변동했어요!</h2>
                        <p class="size-17 color-text margin-b-10 moving-text">▼ 자세한 사항은 운동센터로 문의해주세요 ▼</p>
                        <p class="size-15 color-text margin-b-10 moving-text">${update_class.gymName} | ${update_class.gymPhone}</p>
                        <a href="/class/my_reservation"
                           class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
                            수업 캘린더 보기</a>
                    </div><br/>

                    <ul>
                        <li>
                            <div class="notification">
                                <p>수업명: ${update_class.className}</p>
                                <p>트레이너: ${update_class.trainerName}</p>
                                <p>수업일시: ${update_class.classDate}</p>
                                <p>수업시간: ${update_class.classStarttime}~${update_class.classEndtime}</p>
                            </div>
                        </li>
                    </ul>
                </section>
            </c:when>
            <c:otherwise>
                <section class="emPage__ResultPayment">
                    <div class="em__seccess">
                        <h2 class="size-20 weight-500 color-secondary margin-b-10">수업에 변동사항이 있습니다!</h2>
                        <h2 class="size-20 weight-500 color-secondary margin-b-10">자세한 사항은 운동센터로 문의해주세요</h2>
                        <p class="size-15 color-text margin-b-10 moving-text">▼ ${couponOpen.gymName} ${couponOpen.gymNo} ▼</p>
                        <a href="/class/my_reservation"
                           class="btn rounded-10 h-48 min-w-130 size-14 color-secondary border-snow border-solid d-inline-flex align-items-center justify-content-center">
                            수업 캘린더 보기</a>
                    </div><br/>
                    <div id="notification">
                    </div>
                </section>
            </c:otherwise>
        </c:choose>
    </div>
</div>
