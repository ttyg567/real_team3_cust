<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
        integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
        crossorigin="anonymous" type="text/javascript"></script>
<script>

    function executeFunctions() {
        requestPay();

    }

    function executeFunctions2() {
        requestKPay();

    }

    function requestPay() {
        var IMP = window.IMP; // 생략 가능
        IMP.init("imp43288400"); // 예: imp00000000

        var custNo = document.getElementById('custNo').value;
        var ticketNo = document.getElementById('ticketNo').value;
        var gymNo = document.getElementById('gymNo').value;
        var sportsType = document.getElementById('sportsType').value;
        var sportsClasstype = document.getElementById('sportsClasstype').value;
        var ticketType = document.getElementById('ticketType').value;
        var ticketMonth = document.getElementById('ticketMonth').value;
        var ticketNumber = document.getElementById('ticketNumber').value;
        var ticketJoin = document.getElementById('ticketJoin').value;
        var purchasePrice = document.getElementById('purchasePrice').value;
        var hiddenFinalPrice = document.getElementById('hiddenFinalPrice').value; // 최종가격 숨겨진 값
        var hiddenCouponNo = document.getElementById('hiddenCouponNo').value; // 쿠폰넘버 숨겨진 값

        //IMP.request_pay(param, callback) 결제창 호출
        IMP.request_pay({
                pg            : "html5_inicis",
                pay_method    : "card",
                merchant_uid  : 'merchant_' + new Date().getTime(),
                name          : "${gymName} ${ticket_pay_option.substring(0, 3)}",
                amount        : parseInt(hiddenFinalPrice),
                buyer_email   : "${logincust.custEmail}",
                buyer_name    : "${logincust.custName}",
                buyer_tel     : "${logincust.custPhone}",
                buyer_addr    : "서울특별시 강남구 신사동",
                buyer_postcode: "01181",
                // m_redirect_url:
                <%--    "http://"+${serviceserver}" +/paySuccess_mobile?custNo=" + custNo + "&ticketNo=" + ticketNo + "&gymNo=" + gymNo + "&sportsType=" + sportsType + "&sportsClasstype=" + sportsClasstype + "&ticketType=" + ticketType + "&ticketMonth=" + ticketMonth + "&ticketNumber=" + ticketNumber + "&ticketJoin=" + ticketJoin + "&purchasePrice=" + purchasePrice--%>
                m_redirect_url:
                    "http://172.16.20.107/paySuccess_mobile?custNo=" + custNo + "&ticketNo=" + ticketNo + "&gymNo=" + gymNo + "&sportsType=" + sportsType + "&sportsClasstype=" + sportsClasstype + "&ticketType=" + ticketType + "&ticketMonth=" + ticketMonth + "&ticketNumber=" + ticketNumber + "&ticketJoin=" + ticketJoin + "&hiddenFinalPrice=" + hiddenFinalPrice + "&hiddenCouponNo=" + hiddenCouponNo
                // 리다이렉트 유알엘은 앞에 ip 주소 써야 함. 실 ip주소 가능, 127.0.0.1 쓰지 말기 (안드로이드에서 실 ip 주소로)
            },
            rsp => {
                if (rsp.success) {
                    alert(`결제성공`);
                    location.href = "/paySuccess?custNo=" + custNo + "&ticketNo=" + ticketNo + "&gymNo=" + gymNo + "&sportsType=" + sportsType + "&sportsClasstype=" + sportsClasstype + "&ticketType=" + ticketType + "&ticketMonth=" + ticketMonth + "&ticketNumber=" + ticketNumber + "&ticketJoin=" + ticketJoin + "&hiddenFinalPrice=" + hiddenFinalPrice + "&hiddenCouponNo=" + hiddenCouponNo;
                } else {
                    alert(`결제에 실패하였습니다. 에러 내용: ${rsp.error_msg}`);
                }
            });

    }

    function requestKPay() {
        var IMP = window.IMP; // 생략 가능
        IMP.init("imp43288400"); // 예: imp00000000

        var custNo = document.getElementById('custNo').value;
        var ticketNo = document.getElementById('ticketNo').value;
        var gymNo = document.getElementById('gymNo').value;
        var sportsType = document.getElementById('sportsType').value;
        var sportsClasstype = document.getElementById('sportsClasstype').value;
        var ticketType = document.getElementById('ticketType').value;
        var ticketMonth = document.getElementById('ticketMonth').value;
        var ticketNumber = document.getElementById('ticketNumber').value;
        var ticketJoin = document.getElementById('ticketJoin').value;
        var purchasePrice = document.getElementById('purchasePrice').value;
        var hiddenFinalPrice = document.getElementById('hiddenFinalPrice').value; // 최종가격 숨겨진 값
        var hiddenCouponNo = document.getElementById('hiddenCouponNo').value; // 쿠폰넘버 숨겨진 값

        //IMP.request_pay(param, callback) 결제창 호출
        IMP.request_pay({
                pg          : "kakaopay",
                pay_method  : "kakaopay",
                merchant_uid: 'merchant_' + new Date().getTime(),
                name        : "${gymName} ${ticket_pay_option.substring(0, 3)}",
                amount      : parseInt(hiddenFinalPrice),
                buyer_email : "${logincust.custEmail}",
                buyer_name  : "${logincust.custName}",
                buyer_tel   : "${logincust.custPhone}",
                <%--buyer_addr: "${logincust.custSido} ${logincust.custSigungu}",--%>
                buyer_addr    : "서울특별시 강남구 신사동",
                buyer_postcode: "12345",
                // m_redirect_url:
                <%--    "http://"+${serviceserver}" +/paySuccess_mobile?custNo=" + custNo + "&ticketNo=" + ticketNo + "&gymNo=" + gymNo + "&sportsType=" + sportsType + "&sportsClasstype=" + sportsClasstype + "&ticketType=" + ticketType + "&ticketMonth=" + ticketMonth + "&ticketNumber=" + ticketNumber + "&ticketJoin=" + ticketJoin + "&purchasePrice=" + purchasePrice--%>
                m_redirect_url:
                    "http://172.16.20.107/paySuccess_mobile?custNo=" + custNo + "&ticketNo=" + ticketNo + "&gymNo=" + gymNo + "&sportsType=" + sportsType + "&sportsClasstype=" + sportsClasstype + "&ticketType=" + ticketType + "&ticketMonth=" + ticketMonth + "&ticketNumber=" + ticketNumber + "&ticketJoin=" + ticketJoin + "&hiddenFinalPrice=" + hiddenFinalPrice + "&hiddenCouponNo=" + hiddenCouponNo
                // 리다이렉트 유알엘은 앞에 ip 주소 써야 함. 실 ip주소 가능, 127.0.0.1 쓰지 말기 (안드로이드에서 실 ip 주소로)
            },
            rsp => {
                if (rsp.success) {
                    alert(`결제성공`);
                    location.href = "/paySuccess?custNo=" + custNo + "&ticketNo=" + ticketNo + "&gymNo=" + gymNo + "&sportsType=" + sportsType + "&sportsClasstype=" + sportsClasstype + "&ticketType=" + ticketType + "&ticketMonth=" + ticketMonth + "&ticketNumber=" + ticketNumber + "&ticketJoin=" + ticketJoin + "&hiddenFinalPrice=" + hiddenFinalPrice + "&hiddenCouponNo=" + hiddenCouponNo;
                    // pinsert();
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
                <a class="rounded-circle d-flex align-items-center text-decoration-none"
                   href="/ticket/detail?gymNo=${gymNo}">
                    <i class="tio-chevron_left size-24 color-text"></i>
                </a>
            </div>
            <div class="title_page">
                    <span class="page_name">
                       결제하기
                    </span>
            </div>
        </header>
        <!-- End.main header -->

        <form id="insert_form">
            <!-- Start emSection__payment -->
            <section class="emSection__payment">
                <div class="credite_saved itemSingle">
                    <div class="bg-white padding-20">
                        <div class="form-group">
                            <label>센터명</label>
                            <div class="input_group">

                                <input type="text" class="form-control is-valid" value="${gymName}" required=""
                                       readonly>
                            </div>

                            <label>이용권</label>
                            <div class="input_group">
                                <input type="text" class="form-control is-valid" id="ticketTypeValue"
                                       value="${ticket_pay_option.substring(0, 3)}" readonly>
                            </div>
                            <label>티켓가격</label>
                            <div class="input_group">
                                <input type="text" class="form-control is-valid" id="ticketPriceValue"
                                       value="${ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-', ticket_pay_option.lastIndexOf('-') - 1) + 1, ticket_pay_option.lastIndexOf('-'))}"
                                       readonly>
                            </div>
                            <label>쿠폰</label>
                            <div class="input_group">
                                <input type="text" class="form-control" style="margin-right: 10px"
                                       placeholder="나의 쿠폰"
                                       id="couponName" name="couponName" required readonly>
                                <input type="hidden"
                                       id="hiddenCouponNo" name="hiddenCouponNo" value="">
                                <button type="button" class="btn btn-outline-secondary"
                                        style="width: 35%; height: 100%;"
                                        data-toggle="modal" data-target="#duplicateCheck2"
                                        id="ticketModal">
                                    찾기
                                </button>
                            </div>
                            <label>최종가격</label>
                            <div class="input_group">
                                <input type="text" class="form-control is-valid" id="finalPrice"
                                       value="${ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-', ticket_pay_option.lastIndexOf('-') - 1) + 1, ticket_pay_option.lastIndexOf('-'))}"
                                       readonly>
                                <input type="hidden" class="form-control is-valid" id="hiddenFinalPrice"
                                       value="${pticket.ticketPrice}"
                                       readonly>
                            </div>
                            <div class="padding-20 px-0">
                                <p class="size-14 color-text m-0">결제수단을 선택해주세요</p>

                                <input type="hidden" class="form-control is-valid" id="ticketNo" name="ticketNo"
                                       value="${pticket.ticketNo}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" id="gymNo" name="gymNo"
                                       value="${pticket.gymNo}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" id="sportsType" name="sportsType"
                                       value="${pticket.sportsType}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" id="sportsClasstype"
                                       name="sportsClasstype" value="${pticket.sportsClasstype}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" id="ticketType" name="ticketType"
                                       value="${pticket.ticketType}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" id="ticketMonth" name="ticketMonth"
                                       value="${pticket.ticketMonth}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" id="ticketNumber" name="ticketNumber"
                                       value="${pticket.ticketNumber}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" id="ticketJoin" name="ticketJoin"
                                       value="${pticket.ticketJoin}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" id="purchasePrice"
                                       name="purchasePrice" value="${pticket.ticketPrice}" required="" readonly>
                                <input type="hidden" class="form-control is-valid" name="custNo" id="custNo"
                                       value="${logincust.custNo}" required="" readonly>

                            </div>

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
                    </div>
                </div>
            </section>
        </form>
    </div>
</div>

<div class="modal defaultModal modalCentered change__address fade" id="duplicateCheck2" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                <div class="itemProduct_sm">
                    <h1 class="size-18 weight-600 color-secondary m-0">나의 쿠폰</h1>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="tio-clear"></i>
                </button>
            </div>

            <div class="modal-body">
                <div class="nav__listAddress itemSingle">
                    <div class="form-group with_icon">
                        <p>검색 결과</p>
                        <hr>
                        <div id="triketsearch-results" class="em__pkLink">
                            <ul class="nav__list with__border" id="result2"> <!-- jsonArray 결과 뿌려지는 곳 -->
                            </ul>
                            <div id="resultNo2"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" style="background-color: blueviolet"
                        id="couponChoiceBtn" class="btn btn_default_lg" data-dismiss="modal" aria-label="Close">선택 완료
                </button>
            </div>
        </div>
    </div>
</div>

<!-- jquery -->
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

<!-- 아임포트 -->
<%--<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>--%>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js" type="text/javascript"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

<script>
    // 모달창이 열릴 때
    $('#duplicateCheck2').on('shown.bs.modal', function () {
        var custNo = document.getElementById('custNo').value;
        var ticketNo = document.getElementById('ticketNo').value;
        // 쿠폰 조회를 위한 AJAX 요청
        $.ajax({
            url    : '/coupon/pay_my_coupon', // 쿠폰 조회 API 엔드포인트
            type   : 'GET',
            data   : {
                custNo  : custNo,
                ticketNo: ticketNo
            }, // custNo를 요청 데이터에 추가
            success: function (response) {
                var resultHTML = '';
                if (response.length > 0) {
                    // 조회된 쿠폰이 있을 경우
                    for (var i = 0; i < response.length; i++) {
                        // 쿠폰 데이터를 동적으로 생성하여 결과에 추가
                        resultHTML += '<li>';
                        resultHTML += '<div class="item-link hoverNone">';
                        resultHTML += '<div class="custom-control custom-radio">';
                        resultHTML += '<input type="radio" id="customRadioList' + i + '" class="custom-control-input" name="couponNo" value="' + response[i].couponNo + '">';
                        resultHTML += '<label class="custom-control-label padding-l-30" for="customRadioList' + i + '">' + response[i].myCoupon + '</label>';
                        resultHTML += '</div>';
                        resultHTML += '</div>';
                        resultHTML += '</li>';

                        console.log("response[i].couponNo: " + response[i].couponNo);
                    }
                } else {
                    // 조회된 쿠폰이 없을 경우
                    resultHTML += '<li>조회된 쿠폰이 없습니다.</li>';
                }

                // 결과를 결과 목록에 추가
                $('#result2').html(resultHTML);
            },
            error  : function (xhr, status, error) {
                console.error(error);
            }
        });
    });

    // 선택 완료 버튼 클릭 시
    $('#couponChoiceBtn').on('click', function () {
        // 선택된 쿠폰 데이터 가져오기4
        // 검색창에 입력된 센터 이름 가져오기
        var couponNo = $('input[name="couponNo"]:checked').val();
        console.log("선택된 쿠폰 번호: " + couponNo);

        // ajax 한번 더 돌려서 쿠폰이름과 쿠폰적용가격 가지고 온다. 이때 전달은 쿠폰번호만 하면 된다.
        $.ajax({
            url    : '/coupon/finalcoupon', // 쿠폰 조회 API 엔드포인트
            type   : 'GET',
            data   : {
                couponNo: couponNo
            }, // couponNo 요청 데이터에 추가
            success: function (response) {
                console.log("couponNo" + response["couponNo"]);
                console.log("myCoupon" + response["myCoupon"]);
                console.log("finalPrice" + response["finalPrice"]);

                $("#hiddenCouponNo").val(response["couponNo"]);
                $("#couponName").val(response["myCoupon"]);
                $("#finalPrice").val(response["finalPrice"] + "원");
                $("#hiddenFinalPrice").val(response["finalPrice"]);
                // 모달 닫기
                $('#duplicateCheck2').modal('hide');
            },
            error  : function (xhr, status, error) {
                console.error(error);
            }
        });
    });

</script>