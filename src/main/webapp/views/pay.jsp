<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
function requestPay(data) {
  var IMP = window.IMP; // 생략 가능
  IMP.init("imp43288400"); // 예: imp00000000
//IMP.request_pay(param, callback) 결제창 호출

  function requestPay() {
    IMP.request_pay({
      pg: "kcp.{store-18c64183-2cf3-416d-b015-85f0113e8120}",
      pay_method: "card",
      merchant_uid: "ORD20180131-0000011",   // 주문번호
      name: "노르웨이 회전 의자",
      amount: 64900,                         // 숫자 타입
      buyer_email: "gildong@gmail.com",
      buyer_name: "홍길동",
      buyer_tel: "010-4242-4242",
      buyer_addr: "서울특별시 강남구 신사동",
      buyer_postcode: "01181"
    }, function (rsp) { // callback
      //rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
      if (rsp.success) {
        // axios로 HTTP 요청
        axios({
          url: "/order",
          method: "post",
          headers: { "Content-Type": "application/json" },
          data: {
            imp_uid: rsp.imp_uid,
            merchant_uid: rsp.merchant_uid
          }
        }).then((data) => {
          // 서버 결제 API 성공시 로직
        })
      } else {
        alert(`결제에 실패하였습니다. 에러 내용: ${rsp.error_msg}`);
      }
    });
}
</script>
<html>
<head>
<body class="bg-snow">

<div id="wrapper">
  <div id="content">
    <!-- Start main_haeder -->
    <header class="main_haeder header-sticky multi_item">
      <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="app-pages.html">
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
    <!-- End.main_haeder -->

    <!-- Start emSection__payment -->
    <section class="emSection__payment">
      <div class="credite_saved itemSingle">
        <div class="bg-white padding-20">
          <form action="pay_form">
            <div class="form-group">
              <label>센터명</label>
              <div class="input_group">
                <input type="text" class="form-control is-valid" value="${gymName}" required="" readonly>
              </div>

              <label>이용권</label>
              <div class="input_group">
                <input type="text" class="form-control is-valid" id="ticketTypeValue" value="${ticket_pay_option.substring(0, 3)}" readonly>
              </div>
              <label>기간</label>
              <div class="input_group">
                <input type="text" class="form-control is-valid" id="ticketLengthValue" value="${ticket_pay_option.substring(4, ticket_pay_option.lastIndexOf('-'))}" readonly>
              </div>
              <label>가격</label>
              <div class="input_group">
                <input type="text" class="form-control is-valid" id="ticketPriceValue" value="${ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-') + 1)}" readonly>
              </div>

            <div class="padding-20 px-0">
              <p class="size-14 color-text m-0">Choose a new method</p>
            </div>
            <a href="page-credit-card.html" class="btn itemPay">
              <span>무통장 입금</span>
              <div class="icon__payment">
                <img src="assets/img/icon/visa.svg" alt="">
                <img src="assets/img/icon/american-express.svg" alt="">
                <img src="assets/img/icon/shopify.svg" alt="">
                <img src="assets/img/icon/master-card.svg" alt="">
              </div>
            </a>
            <button type="button" id="check1" href="#" class="btn itemPay"
                    onclick="requestPay()">
              <span>카카오페이</span>
              <div class="icon__payment">
                <img src="assets/img/kakaopay.png" alt="kakaopay">
              </div>
            </button>
              <button id="check_module" type="button">아임 서포트 결제 모듈 테스트 해보기</button>
          </form>

          <!-- End. emSection__payment -->

          <div class="buttons__footer text-center bg-transparent">
            <div class="d-flex align-items-center margin-b-20 text-center justify-content-center">
              <i class="tio-security size-20 color-snow"></i>
              <span class="d-block size-14 color-snow ml-2">Safe and secure payments</span>
            </div>

            <div class="env-pb">
              <a id="payButton" class="btn bg-primary rounded-pill btn__default" style="margin-bottom: 50px; position: fixed; z-index:9999; bottom: 65px">
                <span class="color-white">${ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-') + 1)} 결제하기</span>
                <div class="icon rounded-circle">
                  <i class="tio-chevron_right"></i>
                </div>
              </a>
            </div>
          </div>

        </div>


      </div>

      <!-- jquery -->
      <script src="assets/js/jquery-3.6.0.js"></script>
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
</body>

</html>
