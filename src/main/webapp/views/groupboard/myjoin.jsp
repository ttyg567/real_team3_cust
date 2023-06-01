<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Start em_loading -->
<%--<section class="em_loading" id="loaderPage">--%>
<%--  <div class="spinner_flash"></div>--%>
<%--</section>--%>
<!-- End. em_loading -->

<div id="wrapper">
  <div id="content">
    <!-- Start main_haeder -->
    <header class="header_tab">
      <div class="main_haeder multi_item">
        <div class="em_side_right">
          <a class="rounded-circle d-flex align-items-center text-decoration-none"
             href="/groupboard">
            <i class="tio-chevron_left size-24 color-text"></i>
            <span class="color-text size-14">뒤로가기</span>
          </a>
        </div>
        <div class="title_page">
                        <span class="page_name">
                            나의 조인
                        </span>
        </div>
        <div class="em_side_right">
          <a href="#" class="size-14 white-onScroll color-blue hover:color-blue">새로만들기</a>

        </div>
      </div>
      <div class="tab__line two_item">
        <ul class="nav nav-pills" id="pills-tab" role="tablist">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home"
               role="tab" aria-controls="pills-home" aria-selected="true">참여한 조인</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile"
               role="tab" aria-controls="pills-profile" aria-selected="false">개설한 조인</a>
          </li>

        </ul>
      </div>

    </header>
    <!-- End.main_haeder -->

    <section class="components_page paddingTab_header">

      <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
             aria-labelledby="pills-home-tab">

          <!-- 참여한 조인 start title -->
          <div class="emTitle_co padding-20">
            <h2 class="size-16 weight-500 color-secondary mb-1">확정된 조인은 결제하기를 누르면 할인된 금액이 적용되어 있어요 </h2>
          </div>
          <!-- 참여한 조인 End. title -->

          <!-- 조인리스트 넣는 공간 -->
          <ul class="itemList__news" style="background-color: white">
            <c:forEach var="obj" items="${myapplyjoin}">
            <li class="items-nav">
              <a href="/ticket_detail" class="btn">
                <div class="media align-items-center">
                  <img class="img_news" src="/assets/img/${obj.groupboardImgname}" alt="">
                  <div class="media-body">
                    <div class="txt">
                      <h2>${obj.groupboardTitle}</h2>
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
                                    stroke-width="1.5" />
                              <path id="Stroke_3" data-name="Stroke 3"
                                    d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                    fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                    stroke-linejoin="round" stroke-miterlimit="10"
                                    stroke-width="1.5" />
                            </g>
                          </svg>
                        </div>
                        <span>${obj.applicationMemberCount}명 신청 | ${obj.expectMember}명 모집</span>
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
                                      stroke-width="1.5" />
                                <path id="Stroke_3" data-name="Stroke 3"
                                      d="M2.119,3.99,0,2.726V0"
                                      transform="translate(5.781 3.053)" fill="none"
                                      stroke="#cbcdd8" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
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
            </c:forEach>
          </ul>
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
          <ul class="itemList__news" style="background-color: white">
            <c:forEach var="obj" items="${mycreatejoin}">
              <li class="items-nav">
                <a href="/ticket_detail" class="btn">
                  <div class="media align-items-center">
                    <img class="img_news" src="/assets/img/${obj.groupboardImgname}" alt="">
                    <div class="media-body">
                      <div class="txt">
                        <h2>${obj.groupboardTitle}</h2>
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
                                      stroke-width="1.5" />
                                <path id="Stroke_3" data-name="Stroke 3"
                                      d="M0,4.564c0,2.05,2.589,4.564,5.782,4.564s5.782-2.512,5.782-4.564S8.976,0,5.782,0,0,2.514,0,4.564Z"
                                      fill="none" stroke="#cbcdd8" stroke-linecap="round"
                                      stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" />
                              </g>
                            </svg>
                          </div>
                          <span>${obj.applicationMemberCount}명 신청 | ${obj.expectMember}명 모집</span>
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
                                        stroke-width="1.5" />
                                  <path id="Stroke_3" data-name="Stroke 3"
                                        d="M2.119,3.99,0,2.726V0"
                                        transform="translate(5.781 3.053)" fill="none"
                                        stroke="#cbcdd8" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-miterlimit="10"
                                        stroke-width="1.5" />
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
            </c:forEach>
          </ul>
          <!-- 조인리스트 넣는 공간 끝 -->

        </div> <!-- 개설한 조인 끝. -->

      </div>


    </section>


</div>
</div>