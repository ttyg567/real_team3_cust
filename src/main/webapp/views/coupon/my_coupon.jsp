<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Start em_loading -->
<%--<section class="em_loading" id="loaderPage">--%>
<%--  <div class="spinner_flash"></div>--%>
<%--</section>--%>
<!-- End. em_loading -->

<%--<div id="wrapper">--%>
<%--  <div id="content">--%>
<!-- Start main_haeder -->
<header class="header_tab">
    <div class="main_haeder multi_item">
        <div class="em_side_right">
            <a class="rounded-circle d-flex align-items-center text-decoration-none"
               href="/groupboard">
                <i class="tio-chevron_left size-24 color-secondary"></i>
            </a>
        </div>
        <div class="title_page">
                        <span class="page_name">
                            나의 쿠폰
                        </span>
        </div>
    </div>
    <div class="tab__line two_item">
        <ul class="nav nav-pills" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home"
                   role="tab" aria-controls="pills-home" aria-selected="true">사용가능 쿠폰</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile"
                   role="tab" aria-controls="pills-profile" aria-selected="false">사용/만료 쿠폰</a>
            </li>

        </ul>
    </div>

</header>
<!-- End.main_haeder -->

<section class="components_page paddingTab_header">

    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
             aria-labelledby="pills-home-tab">

            <!-- 사용가능 쿠폰 시작 title -->
            <div class="emTitle_co padding-20">
                <h2 class="size-16 weight-500 color-secondary mb-1">만료되기 전에 얼른 사용하세요!</h2>
            </div>
            <!-- 사용가능 쿠폰 끝. title -->

            <!-- 리스트 넣는 공간 -->
            <c:forEach var="obj" items="${mycoupon}">
                <ul class="itemList__news" style="background-color: white">
                    <li class="items-nav">
                        <a href="/coupon/received" class="btn">
                            <div class="media align-items-center">
                                <div class="media-body">
                                    <div class="txt">
                                        <h2>${obj.couponName}</h2>
                                        <div class="view">
                                            <div class="icon">
                                                <svg fill="#000000" height="800px" width="800px" version="1.1"
                                                     id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                                                     xmlns:xlink="http://www.w3.org/1999/xlink"
                                                     viewBox="0 0 503.607 503.607" xml:space="preserve">
                                    <g>
                                        <g>
                                            <g>
                                                <path d="M176.357,209.836c-16.999,0-32.127,8.591-42.084,21.753c-9.955-13.163-25.078-21.753-42.077-21.753
                                                    c-49.511,0-67.141,61.416-31.423,98.022c13.603,13.956,65.013,65.252,68.226,67.916c3.313,2.746,8.167,2.542,11.237-0.473
                                                    c1.609-1.58,5.979-5.884,10.572-10.416c6.815-6.725,13.784-13.617,20.448-20.229c18.6-18.456,31.724-31.646,36.655-36.936
                                                    C243.39,269.673,225.981,209.836,176.357,209.836z M195.634,296.272c-4.714,5.057-17.809,18.219-36.201,36.467
                                                    c-6.651,6.6-13.61,13.482-20.414,20.196c-1.649,1.627-3.269,3.224-4.741,4.676c-14.068-13.809-50.851-50.563-61.486-61.474
                                                    c-26.146-26.796-13.883-69.515,19.405-69.515c15.032,0,28.348,10.354,34.302,24.987c2.837,6.973,12.711,6.973,15.549,0
                                                    c5.953-14.63,19.276-24.987,34.31-24.987C209.859,226.623,221.921,268.081,195.634,296.272z"/>
                                                <path d="M468.211,67.147H35.395C15.844,67.147,0,82.992,0,102.543v56.933v241.588c0,19.551,15.844,35.395,35.395,35.395h432.816
                                                    c19.551,0,35.395-15.844,35.395-35.395V159.475v-56.933C503.607,82.992,487.762,67.147,468.211,67.147z M16.787,102.543
                                                    c0-10.28,8.329-18.608,18.608-18.608h432.816c10.28,0,18.608,8.329,18.608,18.608v48.539H16.787V102.543z M468.211,419.672
                                                    H35.395c-10.28,0-18.608-8.329-18.608-18.608V167.869H486.82v233.195C486.82,411.343,478.491,419.672,468.211,419.672z"/>
                                                <path d="M360.918,251.803c0-18.544-15.03-33.574-33.574-33.574c-18.543,0-33.574,15.03-33.574,33.574s15.03,33.574,33.574,33.574
                                                    C345.888,285.377,360.918,270.347,360.918,251.803z M310.557,251.803c0-9.272,7.515-16.787,16.787-16.787
                                                    c9.272,0,16.787,7.515,16.787,16.787c0,9.272-7.514,16.787-16.787,16.787C318.072,268.59,310.557,261.076,310.557,251.803z"/>
                                                <path d="M411.279,302.164c-18.543,0-33.574,15.03-33.574,33.574c0,18.544,15.03,33.574,33.574,33.574
                                                    c18.544,0,33.574-15.03,33.574-33.574C444.852,317.194,429.822,302.164,411.279,302.164z M411.279,352.525
                                                    c-9.272,0-16.787-7.515-16.787-16.787c0-9.272,7.515-16.787,16.787-16.787c9.272,0,16.787,7.515,16.787,16.787
                                                    C428.066,345.01,420.551,352.525,411.279,352.525z"/>
                                                <path d="M424.708,219.908c-3.708-2.781-8.969-2.03-11.751,1.679L312.236,355.882c-2.781,3.708-2.03,8.969,1.679,11.751
                                                    c3.708,2.781,8.969,2.03,11.751-1.679l100.721-134.295C429.168,227.951,428.417,222.689,424.708,219.908z"/>
                                            </g>
                                        </g>
                                    </g>
                                    </svg>
                                            </div>
                                            <c:choose>
                                                <c:when test="${obj.couponName == '할인권'}">
                                                    <span> 할인율 :  ${obj.couponRate} </span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span> 매장에서 사용 가능해요! </span>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="info_bottom">
                                            <div class="time">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Time_Square"
                                                         data-name="Iconly/Curved/Time Square"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Time_Square" data-name="Time Square"
                                                           transform="translate(1.719 1.719)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M2.119,3.99,0,2.726V0"
                                                                  transform="translate(5.781 3.053)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                        </g>
                                                    </svg>
                                                </div>
                                                <span> 발행일 : ${obj.couponIsdate}<br>
                          만료일 : ${obj.couponExdate}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </c:forEach>
            <!-- 조인리스트 넣는 공간 끝 -->


        </div><!-- 참여한 조인 영역 끝. -->

        <!-- 개설한 조인 시작 -->
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            <!-- 개설한 조인 Start title -->
            <div class="emTitle_co padding-20">
                <h2 class="size-16 weight-500 color-secondary mb-0">개설한 조인의 모집인원이 모두 모여 확정되면 알림을 드려요!</h2>
            </div>
            <!-- End. title -->
            <!-- 조인리스트 넣는 공간 -->
            <c:forEach var="obj" items="${myusedcoupon}">
                <ul class="itemList__news" style="background-color: white">
                    <li class="items-nav">
                        <a href="/ticket_detail" class="btn">
                            <div class="media align-items-center">
                                <div class="media-body">
                                    <div class="txt">
                                        <h2>${obj.couponName}</h2>
                                        <div class="view">
                                            <div class="icon">
                                                <svg id="Iconly_Curved_Show" data-name="Iconly/Curved/Show"
                                                     xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                     viewBox="0 0 15 15">
                                                    <g id="Show" transform="translate(1.719 2.969)">
                                                        <path id="Stroke_1" data-name="Stroke 1"
                                                              d="M3.952,1.976A1.976,1.976,0,1,1,1.976,0,1.977,1.977,0,0,1,3.952,1.976Z"
                                                              transform="translate(3.806 2.588)" fill="none"
                                                              stroke="#cbcdd8" stroke-linecap="round"
                                                              stroke-linejoin="round" stroke-miterlimit="10"
                                                              stroke-width="1.5"/>
                                                        <path id="Stroke_3" data-name="Stroke 3"
                                                              d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                                              fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                              stroke-linejoin="round" stroke-miterlimit="10"
                                                              stroke-width="1.5"/>
                                                    </g>
                                                </svg>
                                            </div>
                                            <span> 할인율 :  ${obj.couponRate} </span>
                                            <span> 발행일 : ${obj.couponIsdate} | 만료일 : ${obj.couponExdate}</span>
                                        </div>
                                        <div class="info_bottom">
                                            <div class="time">
                                                <div class="icon">
                                                    <svg id="Iconly_Curved_Time_Square"
                                                         data-name="Iconly/Curved/Time Square"
                                                         xmlns="http://www.w3.org/2000/svg" width="15" height="15"
                                                         viewBox="0 0 15 15">
                                                        <g id="Time_Square" data-name="Time Square"
                                                           transform="translate(1.719 1.719)">
                                                            <path id="Stroke_1" data-name="Stroke 1"
                                                                  d="M0,5.781c0,4.336,1.446,5.781,5.781,5.781s5.781-1.446,5.781-5.781S10.117,0,5.781,0,0,1.446,0,5.781Z"
                                                                  fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                            <path id="Stroke_3" data-name="Stroke 3"
                                                                  d="M2.119,3.99,0,2.726V0"
                                                                  transform="translate(5.781 3.053)" fill="none"
                                                                  stroke="#cbcdd8" stroke-linecap="round"
                                                                  stroke-linejoin="round" stroke-miterlimit="10"
                                                                  stroke-width="1.5"/>
                                                        </g>
                                                    </svg>
                                                </div>
                                                <span>06월 30일(목) 마감 ㅣ 성수 피트니스</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </c:forEach>
            <!-- 조인리스트 넣는 공간 끝 -->

        </div> <!-- 개설한 조인 끝. -->

    </div>


</section>


<%--</div>--%>
<%--</div>--%>