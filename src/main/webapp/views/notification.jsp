<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>

<div id="wrapper">
  <div id="content">
    <!-- 헤더 -->
    <header class="main_haeder header-sticky multi_item">
      <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/">
          <i class="tio-chevron_left size-24 color-black"></i>
        </a>
      </div>
      <div class="title_page">
                    <span class="page_name">
                        나의 알림
                    </span>
      </div>
    </header>
    <!-- End.main_haeder -->

    <!-- Start emPage__activities -->
    <section class="emPage__activities _creative padding-t-70">
      <%--  알림내역이 생기면 반복적으로 뿌려지는 구간 --%>
      <input type="hidden" name="custNo" value="${logincust.custNo}"/>
      <c:forEach  var="obj" items="${myNoti}" >
    <div class="group">
        <%--  알림의 타입명  --%>
        <div class="title_group">
          <span>${obj.notiTitle}</span>
        </div>
        <%--  알림의 내용  --%>
        <a href="#" class="item__activiClassic">
          <div class="media">
            <div class="img_user">
              <img src="/assets/img/persons/pexels-juliana-stein-1898555.jpg" alt="">
            </div>
            <div class="media-body my-auto">
              <div class="txt"   style="width: 100%;">
                  <h2  style="width: 100%;">
                      <span>${obj.gymName} ${obj.className}</span>
                      <br> ${obj.classStarttime} ${obj.notiMessage}
                  </h2>
<%--                <h2>오늘의 '필라테스' '1:1' 수업이 <span>'19:00'에 예정되어 있습니다.</span></h2>--%>
                <p>${obj.notiDate}</p>
              </div>
            </div>
          </div>
        </a>
      </div>
      </c:forEach>


    </section>
    <!-- End. emPage__activities -->

  </div>


</div>
