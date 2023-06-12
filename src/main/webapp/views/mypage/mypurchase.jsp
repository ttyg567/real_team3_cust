<%--
  Created by IntelliJ IDEA.
  User: ohjeeyei
  Date: 2023/06/12
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="wrapper">
    <div id="content">
        <section class="padding-t-70 change_colorSearch">
            <div class="input_SaerchDefault">
                <div class="form-group with_icon mb-0">
                    <div class="input_group">
                        <div>
                            <h3 class="size-18 weight-500 color-secondary m-0"> 보유 중인 이용권</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="emCoureses__grid course__list">
            <div class="em_bodyCarousel padding-t-20">
                <!-- em_itemCourse_grid -->
                <div class="em_itemCourse_grid list">
                    <c:forEach var="obj" items="${clist}">
                        <c:if test="${obj.custNo == sessionScope.logincust.custNo}">
                                <a href="/" class="card">
                                    <div class="row no-gutters">
                                        <div class="col-4">
                                            <div class="cover_card">
                                                <img src="/assets/img/${obj.ticketImgname}" class="card-img-top" alt="img">
                                            </div>
                                        </div>
                                        <div class="col-8 my-auto">
                                            <div class="card-body">
                                                <div class="icon_play bg-secondary">
                                                    <i class="tio-play"></i>
                                                </div>
                                                <div class="head__title">
                                                    <span class="type">
                                                      <c:choose>
                                                          <c:when test="${obj.ticketType == 1}">
                                                              <p>기간권</p>
                                                          </c:when>
                                                          <c:when test="${obj.ticketType == 2}">
                                                              <p>횟수권</p>
                                                          </c:when>
                                                      </c:choose>
                                                    </span>
                                                </div>
                                                <h5 class="card-title">
                                                    UI & Web Design using Adobe Illustrator CC
                                                </h5>
                                                <p class="card-text">
                                                    Build professional web & appdesigns using Adobe Illustrator CC
                                                </p>
                                                <div class="card_footer">
                                                    <div class="card_user">
                                                        <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                                             xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                             viewBox="0 0 16 16">
                                                            <g id="Profile" transform="translate(2.667 1.333)">
                                                                <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                                        transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                                        stroke-linecap="round" stroke-linejoin="round"
                                                                        stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                                                <path id="Path_33945"
                                                                      d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                                                      transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                                                      stroke-linecap="round" stroke-linejoin="round"
                                                                      stroke-miterlimit="10" stroke-width="1.2" />
                                                            </g>
                                                        </svg>
                                                        <span>${obj.gymNo}</span>
                                                    </div>
                                                    <div class="amount_co size-14 weight-600 color-secondary">
                                                        ${obj.purchasePrice}<span class="color-text">원</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </a>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </section>
        <section class="padding-t-70 change_colorSearch">
            <div class="input_SaerchDefault">
                <div class="form-group with_icon mb-0">
                    <div class="input_group">
                        <div>
                            <h3 class="size-18 weight-500 color-secondary m-0"> 만료된 이용권</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="emCoureses__grid course__list">
            <div class="em_bodyCarousel padding-t-20">
                <!-- em_itemCourse_grid -->
                <div class="em_itemCourse_grid list">
                    <a href="page-chapters-learning.html" class="card">
                        <div class="row no-gutters">
                            <div class="col-4">
                                <div class="cover_card">
                                    <img src="/assets/img/0ffd6s54.jpg" class="card-img-top" alt="img">
                                </div>
                            </div>
                            <div class="col-8 my-auto">
                                <div class="card-body">
                                    <div class="icon_play bg-secondary">
                                        <i class="tio-play"></i>
                                    </div>
                                    <div class="head_card">
                                        <span>- 5 h 30 min</span>
                                        <span>45 lectures</span>
                                    </div>
                                    <h5 class="card-title">
                                        UI & Web Design using Adobe Illustrator CC
                                    </h5>
                                    <p class="card-text">
                                        Build professional web & appdesigns using Adobe Illustrator CC
                                    </p>
                                    <div class="card_footer">
                                        <div class="card_user">
                                            <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                                                 xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                 viewBox="0 0 16 16">
                                                <g id="Profile" transform="translate(2.667 1.333)">
                                                    <circle id="Ellipse_736" cx="3.185" cy="3.185" r="3.185"
                                                            transform="translate(1.867)" fill="none" stroke="#7e848e"
                                                            stroke-linecap="round" stroke-linejoin="round"
                                                            stroke-miterlimit="10" stroke-width="1.2" opacity="0.4" />
                                                    <path id="Path_33945"
                                                          d="M0,2.011a1.477,1.477,0,0,1,.146-.647A2.7,2.7,0,0,1,2.026.284,11.191,11.191,0,0,1,3.588.064a16.7,16.7,0,0,1,2.923,0,11.32,11.32,0,0,1,1.562.22,2.593,2.593,0,0,1,1.879,1.08,1.513,1.513,0,0,1,0,1.3A2.567,2.567,0,0,1,8.073,3.738a10.478,10.478,0,0,1-1.562.226A17.214,17.214,0,0,1,4.131,4a2.71,2.71,0,0,1-.543-.037,10.282,10.282,0,0,1-1.556-.226A2.58,2.58,0,0,1,.146,2.664,1.519,1.519,0,0,1,0,2.011Z"
                                                          transform="translate(0 8.79)" fill="none" stroke="#7e848e"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.2" />
                                                </g>
                                            </svg>
                                            <span>Lisa Peters</span>
                                        </div>
                                        <div class="amount_co size-14 weight-600 color-secondary">
                                            <span class="color-text">$</span> 45.99
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>
    </div>
</div>
