<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header 구간  -->
<jsp:include page="/views/header.jsp" />


<div id="wrapper">
  <div id="content">

    <!-- Start page_join -->
    <section class="page_news">
      <div class="emBlock__border padding-l-20 bg-snow">
        <ul class="nav navListProducts">
          <li class="nav-item"><!-- 진한 글씨로 표기된 페이지 active '전체' -->
            <a class="nav-link active" href="/groupboard/groupboard_list">전체</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/groupboard_workout">헬스</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/groupboard_personaltraining">PT</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/groupboard_crossfit">크로스핏</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/groupboard_yoga">요가</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/groupboard_pilates">필라테스</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/groupboard_golf">골프</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/groupboard_swimming">수영</a>
          </li>
        </ul>
      </div>

      <ul class="itemList__news">
        <c:forEach  var="obj" items="${alljoin}" >
        <%--  li : 화면에 보여질 조인들   --%>
        <li class="items-nav">
          <a class="btn"
               data-toggle="modal"
               data-target="#mdllJobDetails${obj.groupboardNo}">
            <div class="media align-items-center">
            <%--1.대표 이미지--%><img class="img_news" src="/assets/img/${obj.groupboardImgname}" alt="">
              <div class="media-body">
                <div class="txt">
                    <%--2.조인글 제목--%><h2>${obj.groupboardTitle}</h2>
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
                      <%--3. 신청인원 / 모집인원 --%>
                      <span>${obj.applicationMember}명 신청 중</span> <span>${obj.expectMember}명 모집</span>
                    </div>
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
                      <%--4. 조회수--%><span>${obj.boardViews}</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </a>
        </li>
        </c:forEach>


      </ul>
    </section>
    <!-- End. page_join -->

    <!-- spinner_loading -->
    <div class="spinner_loading">
      <div class="bounce1"></div>
      <div class="bounce2"></div>
      <div class="bounce3"></div>
    </div>
    <!-- End. spinner_loading -->

  </div>




      <!-- Modal : center 에서 사용한 것 처럼 모달로 각 조인들 상세보기-->
         <!-- 조인 상세보기를 위해선 forEach 한번 더! -->
    <c:forEach  var="obj" items="${alljoin}" >
    <%-- join 신청하는 기능이 페이지에 있을 땐, from 태그와, input hidden이 꼭 있어야해
     action -> 기재된 컨트롤러에서 처리 --%>
      <form id="join_form" action="/groupboard/success_apply" method="get">
        <input type="hidden" name="custNo" value="${logincust.custNo}"/>
        <input type="hidden" name="groupboardNo" value="${obj.groupboardNo}"/>
       <div class="modal transition-bottom screenFull defaultModal mdllJobs_details fade" id="mdllJobDetails${obj.groupboardNo}"
           tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-dialog-scrollable">
          <div class="modal-content">
            <div class="modal-header padding-l-20 padding-r-50">
              <%-- 이미지 넣을 맨 상단 구간 --%>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tio-clear"></i>
              </button>
              <%-- 이미지 넣을 맨 상단 구간 --%>
              <%--                <div class="absolute right-0 padding-r-20">--%>
              <%-- 창닫기 아이콘  --%>

              <%--                </div>--%>
              <%-- 창닫기 아이콘  --%>
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
                            <h2>지니</h2>
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
                      <div class="title">
                        <h6>센터 내용</h6>
                      </div>
                      <ul class="item_list">
                        <li>성수 피트니스 | 서울 성수동</li>
                        <li>2023.6.30(토) 마감</li>
                        <li>${obj.expectMember}</li>
                      </ul><hr>
                      <div class="title">
                        <h6>이용권 내용</h6>
                      </div>
                      <ul class="item_list">
                        <li>헬스 이용권(3개월)</li>
                        <li>560,000원 -> 498,000원</li>
                      </ul><hr>
                      <div class="title">
                        <h6>위치</h6>
                        <div id="groupboard_map">
                          지도나타낼 위치
                        </div>
                      </div><hr>
                      <p>
                        ${obj.groupboardContents}
                      </p>
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
</div><!-- /.modal -->
