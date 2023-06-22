<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script>

    function executeFunctions() {
        requestPay();

    }

    function executeFunctions2() {
        requestKPay();

    }

    // function pinsert(){
    //     $('#insert_form').attr({
    //         method : 'post',
    //         action : '/purchaseimpl'
    //     });
    //     $('#insert_form').submit();
    // }



    function requestPay() {
      var IMP = window.IMP; // 생략 가능
      IMP.init("imp43288400"); // 예: imp00000000
    //IMP.request_pay(param, callback) 결제창 호출
      IMP.request_pay({
                pg: "kcp",
                pay_method: "card",
                merchant_uid: 'merchant_'+new Date().getTime(),
                name: "${gymName} ${ticket_pay_option.substring(0, 3)}",
                amount: parseInt("${ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-', ticket_pay_option.lastIndexOf('-') - 1) + 1, ticket_pay_option.lastIndexOf('-'))}"),
                buyer_email: "${logincust.custEmail}",
                buyer_name: "${logincust.custName}",
                buyer_tel: "${logincust.custPhone}",
                buyer_addr: "서울특별시 강남구 신사동",
                buyer_postcode: "01181",
                m_redirect_url: "/paySuccess"
                },
              rsp => {
                if (rsp.success) {
                  alert(`결제성공`);
                  location.href= "/paySuccess";
                  pinsert();
                } else {
                  alert(`결제에 실패하였습니다. 에러 내용: ${rsp.error_msg}`);
                }
              });

    }

    function requestKPay() {
      var IMP = window.IMP; // 생략 가능
      IMP.init("imp43288400"); // 예: imp00000000

        var ticketNo = document.getElementById('ticketNo').value;
        var gymNo = document.getElementById('gymNo').value;
        var sportsType = document.getElementById('sportsType').value;
        var sportsClasstype = document.getElementById('sportsClasstype').value;
        var ticketType = document.getElementById('ticketType').value;
        var ticketMonth = document.getElementById('ticketMonth').value;
        var ticketNumber = document.getElementById('ticketNumber').value;
        var ticketJoin = document.getElementById('ticketJoin').value;
        var purchasePrice = document.getElementById('purchasePrice').value;
        var custNo = document.getElementById('custNo').value;


    //IMP.request_pay(param, callback) 결제창 호출
      IMP.request_pay({
                pg: "kakaopay",
                pay_method: "kakaopay",
                merchant_uid: 'merchant_'+new Date().getTime(),
                name: "${gymName} ${ticket_pay_option.substring(0, 3)}",
                amount: parseInt("${ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-', ticket_pay_option.lastIndexOf('-') - 1) + 1, ticket_pay_option.lastIndexOf('-'))}"),
                buyer_email: "${logincust.custEmail}",
                buyer_name: "${logincust.custName}",
                buyer_tel: "${logincust.custPhone}",
                buyer_addr: "${logincust.custSido} ${logincust.custSigungu}",
                buyer_postcode: "12345",
                m_redirect_url: "/paySuccess"
              },
              rsp => {
                if (rsp.success) {
                  alert(`결제성공`);
                  location.href= "/paySuccess";
                  pinsert();
                } else {
                  alert(`결제에 실패하였습니다. 에러 내용: ${rsp.error_msg}`);
                }
              });

    }
</script>


<div id="wrapper">
  <div id="content">
    <!-- Start main_haeder -->
    <header class="main_haeder header-sticky multi_item">
      <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/ticket/detail?gymNo=${gymNo}">
          <i class="tio-chevron_left size-24 color-text"></i>
          <span class="color-text size-14">Back</span>
        </a>
      </div>
      <div class="title_page">
                    <span class="page_name">
                       결제하기
                    </span>
      </div>

    </header>
    <!-- End.mainㄹㄹㄹㄹㄹㄹㄹ_haeder -->

    <!-- Start emSection__payment -->
    <section class="emSection__payment">
      <div class="credite_saved itemSingle">
        <div class="bg-white padding-20">
            <div class="form-group">
                <label>센터명</label>
                <div class="input_group">

                <input type="text" class="form-control is-valid" value="${gymName}" required="" readonly>
              </div>

                <label>이용권</label>
                <div class="input_group">
                <input type="text" class="form-control is-valid" id="ticketTypeValue" value="${ticket_pay_option.substring(0, 3)}" readonly>
              </div>
                <label>가격</label>
                <div class="input_group">
                    <input type="text" class="form-control is-valid" id="ticketPriceValue" value="${ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-', ticket_pay_option.lastIndexOf('-') - 1) + 1, ticket_pay_option.lastIndexOf('-'))}" readonly>

                </div>

                <div class="padding-20 px-0">
                  <p class="size-14 color-text m-0">결제수단을 선택해주세요</p>
                    <form id="insert_form">
                        <input type="hidden" class="form-control is-valid" id="ticketNo" name="ticketNo" value="${pticket.ticketNo}" required="" readonly>
                        <input type="hidden" class="form-control is-valid" id="gymNo" name="gymNo" value="${pticket.gymNo}" required="" readonly>
                        <input type="hidden" class="form-control is-valid" id="sportsType" name="sportsType" value="${pticket.sportsType}" required="" readonly>
                        <input type="hidden" class="form-control is-valid" id="sportsClasstype" name="sportsClasstype" value="${pticket.sportsClasstype}" required="" readonly>
                        <input type="hidden" class="form-control is-valid" id="ticketType" name="ticketType" value="${pticket.ticketType}" required="" readonly>
                        <input type="hidden" class="form-control is-valid" id="ticketMonth" name="ticketMonth" value="${pticket.ticketMonth}" required="" readonly>
                        <input type="hidden" class="form-control is-valid" id="ticketNumber" name="ticketNumber" value="${pticket.ticketNumber}" required="" readonly>
                        <input type="hidden" class="form-control is-valid" id="ticketJoin" name="ticketJoin" value="${pticket.ticketJoin}" required="" readonly>
                        <input type="hidden" class="form-control is-valid" id="purchasePrice" name="purchasePrice" value="${pticket.ticketPrice}" required="" readonly>
                        <%--                <input type="text" class="form-control is-valid" id="exDate" name="exDate" value="${pticket.exDate}" required="" readonly>--%>
                        <input type="hidden" class="form-control is-valid" name="custNo"  id="custNo" value="${logincust.custNo}" required="" readonly>
                    </form>
                </div>
<%--            <button type="button" id="check1" href="#" class="btn itemPay"--%>
<%--                    onclick="requestPay()">--%>

                <button type="button" id="check1" href="#" class="btn itemPay" onclick="executeFunctions()">
                    <span>카드결제</span>
                    <div class="icon__payment">
                        <img src="assets/img/icon/visa.svg" alt="">
                        <img src="assets/img/icon/american-express.svg" alt="">
                        <img src="assets/img/icon/shopify.svg" alt="">
                        <img src="assets/img/icon/master-card.svg" alt="">
                    </div>
                </button>

                <button type="button" id="check2" href="#" class="btn itemPay"
                        onclick="executeFunctions2()">
                    <span>카카오페이</span>
                    <div class="icon__payment">
                      <img src="assets/img/kakaopay.png" alt="kakaopay">
                    </div>
                </button>
            </div>

<%--            <form action="pinsert_form">--%>
<%--                <input type="text" class="form-control is-valid" id="ticketNo" name="ticketNo" value="${pticket.ticketNo}" required="" readonly>--%>
<%--                <input type="text" class="form-control is-valid" id="gymNo" name="gymNo" value="${pticket.gymNo}" required="" readonly>--%>
<%--                <input type="text" class="form-control is-valid" id="sportsType" name="sportsType" value="${pticket.sportsType}" required="" readonly>--%>
<%--                <input type="text" class="form-control is-valid" id="sportsClasstype" name="sportsClasstype" value="${pticket.sportsClasstype}" required="" readonly>--%>
<%--                <input type="text" class="form-control is-valid" id="ticketType" name="ticketType" value="${pticket.ticketType}" required="" readonly>--%>
<%--                <input type="text" class="form-control is-valid" id="ticketMonth" name="ticketMonth" value="${pticket.ticketMonth}" required="" readonly>--%>
<%--                <input type="text" class="form-control is-valid" id="ticketNumber" name="ticketNumber" value="${pticket.ticketNumber}" required="" readonly>--%>
<%--                <input type="text" class="form-control is-valid" id="ticketJoin" name="ticketJoin" value="${pticket.ticketJoin}" required="" readonly>--%>
<%--                <input type="text" class="form-control is-valid" id="purchasePrice" name="purchasePrice" value="${pticket.ticketPrice}" required="" readonly>--%>
<%--&lt;%&ndash;                <input type="text" class="form-control is-valid" id="exDate" name="exDate" value="${pticket.exDate}" required="" readonly>&ndash;%&gt;--%>
<%--                <input type="text" class="form-control is-valid" name="custNo"  id="custNo" value="${logincust.custNo}" required="" readonly>--%>
<%--            </form>--%>

<%--            <div class="buttons__footer text-center bg-transparent">--%>
<%--                <div class="d-flex align-items-center margin-b-20 text-center justify-content-center">--%>
<%--                  <i class="tio-security size-20 color-snow"></i>--%>
<%--                  <span class="d-block size-14 color-snow ml-2">Safe and secure payments</span>--%>
<%--                </div>--%>

<%--                <div class="env-pb">--%>
<%--                  <a id="payButton" class="btn bg-primary rounded-pill btn__default" style="margin-bottom: 50px; position: fixed; z-index:9999; bottom: 65px">--%>
<%--                    <span class="color-white">${ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-') + 1)} 결제하기</span>--%>
<%--                    <div class="icon rounded-circle">--%>
<%--                      <i class="tio-chevron_right"></i>--%>
<%--                    </div>--%>
<%--                  </a>--%>
<%--                </div>--%>
<%--            </div>--%>


        </div>
      </div>
    </section>
  </div>
</div>

      <!-- jquery -->
<%--      <script src="assets/js/jquery-3.6.0.js"></script>--%>
      <!-- popper.min.js 1.16.1 -->
      <script src="assets/js/popper.min.js"></script>
      <!-- bootstrap.js v4.6.0 -->
      <script src="assets/js/bootstrap.min.js"></script>

      <!-- Owl Carousel v2.3.4 -->
      <script src="assets/js/vendor/owl.carousel.min.js"></script>
      <!-- Swiper 6.4.11 -->
      <script src="assets/js/vendor/swiper-bundle.min.js"></script>
      <!-- sharer 0.4.0 -->
      <script src="assets/js/vendor/sharer.js"></script>
      <!-- short-and-sweet v1.0.2 - Accessible character counter for input elements -->
      <script src="assets/js/vendor/short-and-sweet.min.js"></script>
      <!-- jquery knob -->
      <script src="assets/js/vendor/jquery.knob.min.js"></script>
      <!-- main.js -->
      <script src="assets/js/main.js" defer></script>
      <!-- PWA app service registration and works js -->
      <script src="assets/js/pwa-services.js"></script>
      <!-- 제이쿼리 -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
      <!-- 아임포트 -->
      <script src ="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
      <script src="https://cdn.iamport.kr/v1/iamport.js"></script>

