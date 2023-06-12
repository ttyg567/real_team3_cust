<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    .groupboard_map{
        width: 80%;
        height: 50%;
        border: #5d6072 solid 1px;
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

</style>
<!-- header 구간  -->
<jsp:include page="/views/header.jsp" />
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

</section><br>

<!-- End. input_SaerchDefault -->
<!-- Start emCategories__learning -->
<section class="banner_swiper npSwiper__ads bg-white np_Package_ac padding-t-10 mt-0 padding-b-0">
    <div class="title d-flex justify-content-between align-items-center padding-l-20 padding-r-20">
        <div>
            <h3 class="size-18 weight-500 color-secondary m-0">운동 종목별</h3>
        </div>
        <a href="/groupboard/groupboard_list" class="d-block color-blue size-14 m-0 hover:color-blue">더보기</a>
    </div>

<section class="np__bkOperationsService padding-10">
<%--<section class="banner_swiper bg-white np__ServicePackage padding-t-10 mt-0 padding-b-10">--%>
    <div class="em__actions">
        <a href="/groupboard/workout" class="btn">
            <div class="icon bg-red bg-opacity-10">
                <svg fill="#000000" width="800px" height="800px" viewBox="0 0 24 24" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"><path d="M22.942,6.837,20.76,4.654l.947-.947a1,1,0,1,0-1.414-1.414l-.947.947L17.163,1.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L14.24,8.346,8.346,14.24,6.163,12.058a3.7,3.7,0,0,0-5.105,0,3.609,3.609,0,0,0,0,5.106L3.24,19.346l-.947.947a1,1,0,1,0,1.414,1.414l.947-.947,2.183,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105L9.76,15.655l5.9-5.895,2.182,2.182a3.609,3.609,0,0,0,5.105,0h0a3.608,3.608,0,0,0,0-5.105ZM11,20.39a1.6,1.6,0,0,1-.472,1.138,1.647,1.647,0,0,1-2.277,0L2.472,15.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779A1.6,1.6,0,0,1,11,20.39Zm10.528-9.862a1.647,1.647,0,0,1-2.277,0L13.472,4.749a1.61,1.61,0,1,1,2.277-2.277l5.779,5.779a1.609,1.609,0,0,1,0,2.277Z"/></svg>
            </div>
            <span>헬스</span>
        </a>
        <a href="/groupboard/personaltraining" class="btn">
            <div class="icon bg-green bg-opacity-10">
                <?xml version="1.0" ?><!-- License: CC Attribution. Made by Chanut Industries: https://elements.envato.com/user/Chanut_industries -->
                <svg width="512px" height="512px" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><g id="Healthy_exercise"><path d="M445.1272,18.5137h-7.7725a7.5167,7.5167,0,0,0-7.5168,7.5168V42.9278h-16.865a17.2258,17.2258,0,0,0-17.0642-14.397H363.7065a17.3565,17.3565,0,0,0-16.9951,13.978l-.0825.419H336.5576V26.0305a7.5169,7.5169,0,0,0-7.5168-7.5168h-7.7725a7.5167,7.5167,0,0,0-7.5168,7.5168V74.5254a7.5167,7.5167,0,0,0,7.5168,7.5168h7.7725a7.5169,7.5169,0,0,0,7.5168-7.5168V57.6278h8.1067a17.3926,17.3926,0,0,0,12.5794,14.5143l7.623,2.0889a5.3382,5.3382,0,0,1,3.74,6.48L358.15,120.6436a5.3772,5.3772,0,0,1-3.7393,3.7807c-10.0468,2.9839-21.1123,8.1153-32.89,15.252a37.7278,37.7278,0,0,1-28.0518,4.4785,164.5423,164.5423,0,0,0-38.1113-3.9629,164.9587,164.9587,0,0,0-38.11,3.9629,37.72,37.72,0,0,1-28.0528-4.4785c-11.7773-7.1367-22.8418-12.2681-32.8886-15.2515a5.3807,5.3807,0,0,1-3.74-3.7817l-10.457-39.9322a5.3394,5.3394,0,0,1,3.7422-6.48l7.622-2.0884a17.39,17.39,0,0,0,12.5794-14.5143h9.39V74.5254a7.5169,7.5169,0,0,0,7.5168,7.5168h7.7725a7.5167,7.5167,0,0,0,7.5168-7.5168V26.0305a7.5167,7.5167,0,0,0-7.5168-7.5168h-7.7725a7.5169,7.5169,0,0,0-7.5168,7.5168V42.9278H164.0879l-.0825-.4195a17.36,17.36,0,0,0-16.9961-13.9775H114.8081a17.2263,17.2263,0,0,0-17.0654,14.397H82.1621V26.0305a7.5169,7.5169,0,0,0-7.5168-7.5168H66.8728a7.5168,7.5168,0,0,0-7.5168,7.5168V74.5254a7.5168,7.5168,0,0,0,7.5168,7.5168h7.7725a7.5169,7.5169,0,0,0,7.5168-7.5168V57.6278H95.65a463.2894,463.2894,0,0,0-3.1167,82.8038A44.4539,44.4539,0,0,0,115.04,176.6533l62.163,35.2754a20.008,20.008,0,0,1,10.0743,15.7783l2.2959,28.002a75.1482,75.1482,0,0,1-3.1436,28.5527L129.7319,466.8574a20.5387,20.5387,0,0,0,19.6153,26.6289h46.2607a26.4914,26.4914,0,0,0,25.8447-21.0527l30.9961-150.09a2.9754,2.9754,0,0,1,3.0928-2.52h.0039a2.9753,2.9753,0,0,1,3.0908,2.5264l30.6514,150.0288a26.4813,26.4813,0,0,0,25.8564,21.1074H361.37a20.5382,20.5382,0,0,0,19.6143-26.6289L324.2866,284.2617a75.1461,75.1461,0,0,1-3.1435-28.5527l2.2959-28.0015a20.0125,20.0125,0,0,1,10.0742-15.7788l62.1631-35.2754a44.4539,44.4539,0,0,0,22.5058-36.2212,463.27,463.27,0,0,0-3.1164-82.8043h14.7722V74.5254a7.5167,7.5167,0,0,0,7.5168,7.5168h7.7725a7.5168,7.5168,0,0,0,7.5168-7.5168V26.0305A7.5168,7.5168,0,0,0,445.1272,18.5137Zm-38.9255,121.22a32.5,32.5,0,0,1-16.4473,26.4834l-62.1631,35.2754A32,32,0,0,0,311.48,226.7266l-2.2959,28.0019a87.0859,87.0859,0,0,0,3.6416,33.0918L369.5229,470.416a8.5375,8.5375,0,0,1-8.1533,11.07H315.144a14.4392,14.4392,0,0,1-14.0986-11.51L270.394,319.9482v0a14.8467,14.8467,0,0,0-14.8359-12.125h-.0176a14.8459,14.8459,0,0,0-14.8437,12.0933l-30.9961,150.09a14.4458,14.4458,0,0,1-14.0928,11.48H149.3472a8.538,8.538,0,0,1-8.1543-11.07L197.89,287.82a87.084,87.084,0,0,0,3.6416-33.0918l-2.2959-28.0019a31.9931,31.9931,0,0,0-16.1113-25.2344l-62.1631-35.2754a32.5,32.5,0,0,1-16.4472-26.4839c-2.336-40.041,2.1552-76.5376,5.04-94.7295a5.288,5.288,0,0,1,5.2539-4.4726h32.2012a5.333,5.333,0,0,1,5.2217,4.2939l1.8857,9.585a5.3422,5.3422,0,0,1-3.8154,6.1591L142.68,62.6572A17.3824,17.3824,0,0,0,130.5,83.751l10.457,39.9316a16.9574,16.9574,0,0,0,1.45,3.6782,29.6363,29.6363,0,0,0-2.5334,12.5744,6.1459,6.1459,0,0,0,6.1453,6.1249h.02a6.144,6.144,0,0,0,6.125-6.1659,20.4812,20.4812,0,0,1,.3823-4.0808c.1152.0368.2275.08.3437.1143,8.9356,2.6543,19.3389,7.4991,30.086,14.0113a49.669,49.669,0,0,0,36.93,5.9179,152.5166,152.5166,0,0,1,35.4189-3.665l.0654-.0391.001.0391a152.7857,152.7857,0,0,1,35.42,3.665A49.6532,49.6532,0,0,0,327.74,149.939c10.7471-6.5122,21.15-11.357,30.0879-14.0113a17.423,17.423,0,0,0,2.0823-.7675,19.8624,19.8624,0,0,1,.51,4.734,6.1459,6.1459,0,0,0,6.135,6.1659h.01a6.1459,6.1459,0,0,0,6.1455-6.1249,28.582,28.582,0,0,0-3.5188-14.5123,16.8369,16.8369,0,0,0,.5672-1.74l10.457-39.9321a17.382,17.382,0,0,0-12.1787-21.0938l-7.6221-2.0884a5.344,5.344,0,0,1-3.8164-6.16l1.8867-9.5845a5.3314,5.3314,0,0,1,5.2207-4.2939h32.2022a5.2877,5.2877,0,0,1,5.2529,4.4731C404.0464,63.1973,408.5386,99.6963,406.2017,139.7334Z"/><path d="M256,132.0581c26.5029,0,48.0654-20.457,48.0654-45.602S282.5024,40.854,256,40.854s-48.0644,20.457-48.0644,45.6021S229.4966,132.0581,256,132.0581Zm0-79.2041c19.8867,0,36.0654,15.0737,36.0654,33.6021S275.8862,120.0581,256,120.0581s-36.0644-15.0737-36.0644-33.602S236.1138,52.854,256,52.854Z"/><path d="M256,109.1575c10.9438,0,15.1694-6.624,16.801-11.7395a4.4673,4.4673,0,0,0-4.2468-5.8387H243.4458a4.4674,4.4674,0,0,0-4.2468,5.8388C240.8306,102.5336,245.0564,109.1575,256,109.1575Z"/><path d="M244.3345,213.4277a5.88,5.88,0,0,0-5.88,5.88v1.4193a4.2781,4.2781,0,0,1-4.2736,4.2736H222.4355a5.88,5.88,0,0,0,0,11.76h11.7452a16.0517,16.0517,0,0,0,16.0337-16.0336v-1.4193A5.88,5.88,0,0,0,244.3345,213.4277Z"/><path d="M289.45,225.0006H277.7046a4.2782,4.2782,0,0,1-4.2737-4.2736v-1.4193a5.88,5.88,0,1,0-11.76,0v1.4193a16.0517,16.0517,0,0,0,16.0337,16.0336H289.45a5.88,5.88,0,1,0,0-11.76Z"/><path d="M244.3345,250.53h-21.899a5.88,5.88,0,0,0,0,11.76h21.899a5.88,5.88,0,0,0,0-11.76Z"/><path d="M289.45,250.53H267.551a5.88,5.88,0,1,0,0,11.76H289.45a5.88,5.88,0,1,0,0-11.76Z"/></g></svg>
            </div>
            <span>PT</span>
        </a>
        <a href="/groupboard/crossfit" class="btn">
            <div class="icon bg-yellow bg-opacity-10">
                <svg height="800px" width="800px" version="1.1" id="_x32_" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                     viewBox="0 0 512 512"  xml:space="preserve">
                <style type="text/css">
                    .st0{fill:#000000;}
                </style>
                    <g>
                        <path class="st0" d="M256.495,96.434c26.632,0,48.213-21.597,48.213-48.205C304.708,21.58,283.128,0,256.495,0
		c-26.65,0-48.222,21.58-48.222,48.229C208.274,74.837,229.846,96.434,256.495,96.434z"/>
                        <path class="st0" d="M298.267,119.279h-42.271h-42.271c-23.362,0-48.779,25.418-48.779,48.788v162.058
		c0,11.685,9.463,21.156,21.148,21.156c5.743,0,0,0,14.756,0l8.048,138.206c0,12.434,10.078,22.513,22.513,22.513
		c5.244,0,14.923,0,24.585,0c9.671,0,19.35,0,24.593,0c12.434,0,22.513-10.078,22.513-22.513l8.04-138.206
		c14.764,0,9.013,0,14.764,0c11.676,0,21.148-9.471,21.148-21.156V168.067C347.054,144.697,321.636,119.279,298.267,119.279z"/>
                        <path class="st0" d="M104.141,149.083c23.262,0,42.105-18.85,42.105-42.104c0-23.262-18.843-42.112-42.105-42.112
		c-23.27,0-42.104,18.851-42.104,42.112C62.037,130.232,80.871,149.083,104.141,149.083z"/>
                        <path class="st0" d="M408.716,149.083c23.27,0,42.104-18.85,42.104-42.104c0-23.262-18.834-42.112-42.104-42.112
		c-23.253,0-42.104,18.851-42.104,42.112C366.612,130.232,385.463,149.083,408.716,149.083z"/>
                        <path class="st0" d="M137.257,169.024h-33.548h-36.92c-20.398,0-42.595,22.213-42.595,42.612v141.526
		c0,10.212,8.264,18.476,18.468,18.476c5.018,0,0,0,12.884,0l7.024,120.704c0,10.852,8.805,19.658,19.666,19.658
		c4.577,0,13.024,0,21.473,0c8.439,0,16.895,0,21.472,0c10.861,0,19.666-8.805,19.666-19.658l7.016-120.704v-6.849
		c-8.98-8.856-14.606-21.082-14.606-34.664V169.024z"/>
                        <path class="st0" d="M445.211,169.024h-36.928h-33.54v161.101c0,13.582-5.626,25.808-14.615,34.664v6.849l7.017,120.704
		c0,10.852,8.814,19.658,19.674,19.658c4.578,0,13.025,0,21.464,0c8.456,0,16.904,0,21.481,0c10.862,0,19.659-8.805,19.659-19.658
		l7.032-120.704c12.883,0,7.865,0,12.883,0c10.204,0,18.468-8.265,18.468-18.476V211.636
		C487.806,191.237,465.61,169.024,445.211,169.024z"/>
                    </g>
</svg>
            </div>
            <span>크로스핏</span>
        </a>
        <a href="/groupboard/yoga" class="btn">
            <div class="icon bg-blue bg-opacity-10">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     viewBox="0 0 511.998 511.998" style="enable-background:new 0 0 511.998 511.998;" xml:space="preserve">
              <g><g>
                  <circle cx="266.956" cy="79.533" r="45.113"/>
              </g>
              </g><g><g><path d="M491.341,139.398H42.562c-11.409,0-20.658,9.249-20.658,20.658s9.25,20.658,20.658,20.658H209.44l-0.236,129.228
              l-196.45,118.64c-12.479,7.536-16.486,23.764-8.95,36.242c7.541,12.487,23.771,16.482,36.241,8.95
              C208.794,371.45,250.589,346.019,250.589,346.019s37.212,0,110.211,0v103.907c0,14.579,11.817,26.398,26.397,26.398
              c14.579,0,26.397-11.818,26.397-26.398V319.624c0-14.579-11.817-26.398-26.397-26.398h-62.665l0.206-112.511H491.34
              c11.409,0,20.658-9.249,20.658-20.658S502.75,139.398,491.341,139.398z"/> </g></g>
              </svg>

            </div>
            <span>요가</span>
        </a>
        <a href="/groupboard/pilates" class="btn">
            <div class="icon bg-yellow bg-opacity-10">
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     viewBox="0 0 399.421 399.421" style="enable-background:new 0 0 399.421 399.421;" xml:space="preserve">
            <path d="M390.421,90.522h-25.905c-0.123-0.003-0.249-0.003-0.372,0h-25.901c-4.971,0-9,4.029-9,9s4.029,9,9,9h17.087v19.085
                l-170.319,64.885H95.949l-22.765-31.203h14.013c4.971,0,9-4.029,9-9s-4.029-9-9-9H55.684c-0.144-0.004-0.287-0.004-0.431,0H35.021
                c-4.971,0-9,4.029-9,9s4.029,9,9,9h15.882l22.765,31.203H9c-4.971,0-9,4.029-9,9v98.409c0,4.971,4.029,9,9,9h42.09
                c4.971,0,9-4.029,9-9v-47.32h253.151v47.32c0,4.971,4.029,9,9,9h42.09c4.971,0,9-4.029,9-9v-98.409c0-0.063,0-0.127-0.002-0.191
                v-67.284c0.003-0.139,0.003-0.278,0-0.418v-25.076h17.091c4.971,0,9-4.029,9-9S395.392,90.522,390.421,90.522z M355.33,146.869
                v45.623H235.572L355.33,146.869z M42.09,290.901H18v-38.32h24.09V290.901z M355.332,290.901h-24.09v-38.32h24.09V290.901z
                 M355.332,234.581h-33.09H18v-24.089h73.28c0.068,0.001,0.135,0.001,0.203,0h94.981c0.137,0.003,0.273,0.003,0.41,0h168.458V234.581
                z"/>
            </svg>

            </div>
            <span>필라테스</span>
        </a>

        <a href="/groupboard/golf" class="btn">
            <div class="icon bg-red bg-opacity-10">
                <svg width="800px" height="800px" viewBox="0 0 15 15" version="1.1" id="golf" xmlns="http://www.w3.org/2000/svg">
                    <path id="path11758" d="&#xA;&#x9;M3.3999,1.1c0,0.1,0,0.2,0,0.2c0,0.4,0.3,0.7,0.7,0.7c0.3,0,0.5-0.2,0.6-0.5l0,0L4.9,1l5.6,2.3L6.6,6C6.2,6.3,6.2,6.7,6.3,7.1&#xA;&#x9;l0.9,2.1l-1.3,3.9C5.7,13.6,6.1,14,6.5,14c0.3,0,0.5-0.1,0.6-0.5l1.4-4l0.1,0.3v3.5c0,0,0,0.7,0.7,0.7s0.7-0.7,0.7-0.7V10&#xA;&#x9;c0-0.2,0-0.3-0.1-0.5L8.5,6.1l2.7-1.9c0.2-0.2,0.4-0.3,0.4-0.6s-0.2-0.5-0.4-0.6L4,0.1c-0.0878,0-0.118,0.0179-0.2001,0.1&#xA;&#x9;L3.3999,1.1z M5.5,3C4.7,3,4,3.7,4,4.5S4.7,6,5.5,6S7,5.3,7,4.5S6.2999,3,5.5,3z"/>
                </svg>
            </div>
            <span>골프</span>
        </a>
        <a href="/groupboard/swimming" class="btn">
            <div class="icon bg-green bg-opacity-10">
                <svg width="800px" height="800px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M1 19H2.54405C3.30819 19 4.03284 18.7041 4.52203 18.1923L5.125 17.5615C5.84057 16.8128 7.15943 16.8128 7.875 17.5615C8.59057 18.3101 9.90943 18.3101 10.625 17.5615C11.3406 16.8128 12.6594 16.8128 13.375 17.5615C14.0906 18.3101 15.4094 18.3101 16.125 17.5615C16.8406 16.8128 18.1594 16.8128 18.875 17.5615L19.478 18.1923C19.9672 18.7041 20.6918 19 21.4559 19H23" stroke="#000000" stroke-width="2"/>
                    <path d="M19.4142 5.58579C20.1953 6.36683 20.1953 7.63317 19.4142 8.41421C18.6332 9.19526 17.3668 9.19526 16.5858 8.41421C15.8047 7.63317 15.8047 6.36683 16.5858 5.58579C17.3668 4.80474 18.6332 4.80474 19.4142 5.58579Z" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M4 7H10L17.5 13.5" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M13 10L9.5 13.5" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </div>
            <span>수영</span>
        </a>

    </div>
<%--</section>--%>
</section></section><hr style="height: 30px; color: #EFECEC; border: none; border-top: 5px solid;">
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
        <a href="/groupboard/groupboard_list" class="d-block color-blue size-14 m-0 hover:color-blue">더보기</a>
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
                    <span style="font-size: smaller; color: #5d6072; font-weight: bold "><span>${obj.expectMember}명</span></span>
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
        <a href="/groupboard/groupboard_list" class="d-block color-blue size-14 m-0 hover:color-blue">더보기</a>
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
                        <span style="font-size: smaller; color: #5d6072; font-weight: bold "><span>${obj.expectMember}명</span></span>
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


<!-- Modal로 보여지는 창 : mdllJobDetails -->
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
                                        <div class="card-body" style="height: 200px;  display: flex; flex-wrap: wrap;  flex-wrap: wrap;  align-content: center; align-items: center;">
                                            <div style="text-align: left;">
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
                                                            <div style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-ticket-perforated color-primary" viewBox="0 0 16 16">
                                                                <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                                                <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                                            </svg>
                                                                <span>기간권</span> <span>${obj.ticketMonth}개월 이용권</span>
                                                            </div>
                                                            <div style="text-align: left">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                    <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                    <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                                </svg>
                                                            <span>할인가 <fmt:formatNumber value="${obj.ticketPrice}" pattern="###,### 원" /> | ${obj.ticketDiscount}% 할인 적용 (정상가 <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" />)</span>
                                                            </div>

                                                    </c:when>
                                                    <c:when test="${obj.ticketType == '2'}">
                                                            <div style="text-align: left">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-ticket-perforated color-primary" viewBox="0 0 16 16">
                                                                <path d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z"/>
                                                                <path d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z"/>
                                                            </svg>
                                                                <span>횟수권</span> <span>${obj.ticketNumber}회 이용권</span>
                                                            </div>
                                                            <div style="text-align: left">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin color-primary" viewBox="0 0 16 16">
                                                                    <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                                                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                                    <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                                                                </svg>
                                                                <span>할인가 <fmt:formatNumber value="${obj.ticketPrice}" pattern="###,### 원" />(${obj.ticketDiscount}% 할인 적용) | 정상가 <fmt:formatNumber value="${obj.ticketCost}" pattern="###,### 원" /></span>
                                                            </div>

                                                    </c:when>
                                                </c:choose>

                                            <div>
                                            <%-- 모집인원 정보 --%>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-person color-primary" viewBox="0 0 16 16">
                                                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                                                </svg>
                                                <span>확정 인원 <span style="color: #8890E8; font-weight: bolder"> ${obj.confirmMember}명</span></span> |<span> 모집 인원 ${obj.expectMember}명</span>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="title">
                                            <h6>센터 위치</h6>
                                            <div id="groupboard_map">
                                                지도나타낼 위치
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
