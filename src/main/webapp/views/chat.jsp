<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
    var ws;

    function wsOpen(){
        ws = new WebSocket("ws://" + location.host + "/chating");
        wsEvt();
    }

    function wsEvt() {
        ws.onopen = function(data){
            //소켓이 열리면 초기화 세팅하기
        }

        ws.onmessage = function(data) {
            //메시지를 받으면 동작
            var msg = data.data;
            if(msg != null && msg.trim() != ''){
                var d = JSON.parse(msg);
                if(d.type == "message"){
                    if(d.sessionId == $("#sessionId").val()){
                        $("#chating").append('<div class="item_user __me"><div class="media"><div class="media-body"><div class="content_sms"><p class="item_msg">' + msg + '</p><div class="time"><span>' + getCurrentTime() + '</span><div class="icon ml-1"><i class="ri-check-double-line color-primary size-18"></i></div></div></div></div></div>');
                    }else{
                        $("#chating").append('<div class="item_user"><div class="media"><div class="media-body"><div class="content_sms"><p class="item_msg">' + msg + '</p><div class="time"><span>' + getCurrentTime() + '</span><div class="icon ml-1"><i class="ri-check-double-line color-primary size-18"></i></div></div></div></div></div>');
                    }

                }else{
                    console.warn("unknown type!")
                }
            }
        }

        document.addEventListener("keypress", function(e){
            if(e.keyCode == 13){ //enter press
                send();
            }
        });
    }


    // function chatName(){
    //     var userName = $("#userName").val();
    //     if(userName == null || userName.trim() == ""){
    //         alert("사용자 이름을 입력해주세요.");
    //         $("#userName").focus();
    //     }else{
    //         wsOpen();
    //         $("#yourName").hide();
    //         $("#yourMsg").show();
    //     }
    // }

    function send() {
        var msg = $("#chatting").val();
        var sessionId = $("#sessionId").val(); // 세션 ID 가져오기
        var userName = $("#userName").val(); // 사용자 이름 가져오기

        if (sessionId) {
            // 세션 ID가 존재하면서
            // 사용자 이름이 입력되었을 때만 메시지 전송
            var option = {
                type: "message",
                sessionId: sessionId,
                msg: msg
            };

            ws.send(JSON.stringify(option));
        }

        $("#chating").append('<div class="item_user __me"><div class="media"><div class="media-body"><div class="content_sms"><p class="item_msg">' + msg + '</p><div class="time"><span>' + getCurrentTime() + '</span><div class="icon ml-1"><i class="ri-check-double-line color-primary size-18"></i></div></div></div></div></div></div>');
        $('#chatting').val("");
        // 웹소켓 등을 사용하여 메시지 전송 등의 작업을 수행하면 됩니다.
    }




    function getCurrentTime() {
        var currentTime = new Date();
        var hours = currentTime.getHours();
        var minutes = currentTime.getMinutes();
        var ampm = hours >= 12 ? 'PM' : 'AM';
        hours = hours % 12;
        hours = hours ? hours : 12; // 0시일 경우 12로 표시
        minutes = minutes < 10 ? '0' + minutes : minutes; // 10분 미만은 0을 붙여 표시
        var time = hours + ':' + minutes + ' ' + ampm;
        return time;
    }

</script>

<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>
<body>



<div id="wrapper">
    <div id="content">
        <!-- Start main_haeder -->
        <header class="header_tab head_conversation border-b border-b-solid border-snow">
            <div class="main_haeder multi_item">
                <div class="em_side_right">
                    <input type="hidden" id="sessionId" value="">
                    <a class="btn bg-transparent rounded-circle justify-content-start" href="app-pages.html">
                        <i class="tio-chevron_left"></i>
                    </a>
                </div>
                <div class="item_userChat ml-0">
                    <div class="media">
                        <img class="img-user" src="/assets/img/persons/16.png" alt="">
                        <div class="media-body my-auto">
                            <div class="txt">
                                <h1>${gdetail.gymName}</h1>
                                <p class="color-green">Online</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="em_side_right">
                    <!-- Can you add something here.. -->
                </div>
            </div>
        </header>
        <!-- End.main_haeder -->

        <section class="emPage__conversation padding-t-70 padding-b-80">
            <div id="container" class="container">
                <h1>채팅</h1>
                <div id="chating" class="chating">
                </div>

                <div id="yourName">

                </div>
                <div id="yourMsg">
                    <table class="inputTable">
<%--                        <tr>--%>
<%--                            <th>메시지</th>--%>
<%--                            <th><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>--%>
<%--                            <th><button onclick="send()" id="sendBtn">보내기</button></th>--%>
<%--                        </tr>--%>
                    </table>
                </div>
            </div>
            <div class="item_user">
                <div class="media">
                    <div class="imgProfile">
                        <img src="/assets/img/persons/16.png" alt="">
                    </div>
                    <div class="media-body">
                        <div class="content_sms">
                            <p class="item_msg">
                                Hi, I need help !!
                            </p>
                            <p class="item_msg">
                                Are u there?
                            </p>
                            <div class="time">09:32 AM</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item_user __me">
                <div class="media">

                    <div class="media-body">
                        <div class="content_sms">
                            <p class="item_msg">
                                Hello, how can I help you ?
                            </p>
                            <div class="time">
                                <span>09:32 AM</span>
                                <div class="icon ml-1">
                                    <i class="ri-check-double-line color-primary size-18"></i>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="env-pb bg-white fixed w-100 bottom-0">
                <div class="bk_footer_input emBK__buttonsShare" style="margin-bottom: 10%">
                    <button type="button" class="btn btn_upload p-0" data-toggle="modal" data-target="#mdllButtons">
                        <div class="icon bg-snow rounded-10">
                            <i class="ri-attachment-line size-20"></i>
                        </div>
                    </button>

                    <div class="form-group m-0">
                        <input type="hidden" class="form-control" id="target" value="${gdetail.gymName}">
                        <input type="text"  input id="chatting" class="form-control" placeholder="Type a message here">
                    </div>

                    <button type="button" id="sendBtn" class="btn btn_defSend rounded-10"  onclick="send()">
                        <svg id="Iconly_Bulk_Send" data-name="Iconly/Bulk/Send" xmlns="http://www.w3.org/2000/svg"
                             width="20" height="20" viewBox="0 0 20 20">
                            <g id="Send" transform="translate(1.667 1.667)">
                                <path id="Fill_1" data-name="Fill 1"
                                      d="M16.19.482A1.615,1.615,0,0,0,14.581.065L1.173,3.939A1.6,1.6,0,0,0,.02,5.2,1.863,1.863,0,0,0,.855,6.94L5.048,9.5a1.09,1.09,0,0,0,1.341-.159l4.8-4.8a.613.613,0,0,1,.883,0,.629.629,0,0,1,0,.883l-4.809,4.8A1.092,1.092,0,0,0,7.1,11.565l2.562,4.208a1.668,1.668,0,0,0,1.592.774,1.62,1.62,0,0,0,1.358-1.15L16.59,2.09a1.619,1.619,0,0,0-.4-1.608"
                                      transform="translate(0 0)" fill="#fff" />
                                <path id="Combined_Shape" data-name="Combined Shape"
                                      d="M3.97,6.355a.625.625,0,0,1,0-.883L5.108,4.333a.625.625,0,1,1,.884.884L4.854,6.355a.625.625,0,0,1-.883,0ZM3.317,3.2a.625.625,0,0,1,0-.884L4.455,1.176a.625.625,0,0,1,.884.884L4.2,3.2a.625.625,0,0,1-.883,0ZM.183,2.2a.625.625,0,0,1,0-.884L1.321.182a.625.625,0,0,1,.884.884L1.066,2.2a.625.625,0,0,1-.884,0Z"
                                      transform="translate(0.217 9.952)" fill="#fff" opacity="0.4" />
                            </g>
                        </svg>

                    </button>
                </div>
            </div>
        </section>

    </div>


    <!-- Modal Buttons Share -->


    <!-- Modal Content -->
    <div class="modal transition-bottom screenFull defaultModal mdlladd__rate fade" id="mdllButtons" tabindex="-1"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header border-0 p-2 justify-content-center">
                    <!-- header -->
                </div>
                <div class="modal-body px-0 ">
                    <div class="em__pkLink env-pb">
                        <ul class="nav__list emBK__buttonsShare  mb-0">
                            <li>
                                <button type="button" class="btn item-link">
                                    <input type="file">
                                    <div class="group">
                                        <div class="icon bg-primary">
                                            <svg id="Iconly_Curved_Paper_Plus" data-name="Iconly/Curved/Paper Plus"
                                                 xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                 viewBox="0 0 20 20">
                                                <g id="Paper_Plus" data-name="Paper Plus"
                                                   transform="translate(3.042 2.292)">
                                                    <path id="Stroke_1" data-name="Stroke 1"
                                                          d="M13.758,4.625,9.033.125A15.166,15.166,0,0,0,6.992,0C1.75,0,0,1.933,0,7.708s1.75,7.708,6.992,7.708,7-1.925,7-7.708A17.538,17.538,0,0,0,13.758,4.625Z"
                                                          transform="translate(0)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                    <path id="Stroke_3" data-name="Stroke 3"
                                                          d="M0,0V2.217a2.8,2.8,0,0,0,2.8,2.8H5.262"
                                                          transform="translate(8.57 0.069)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                    <path id="Stroke_5" data-name="Stroke 5" d="M4.083.5H0"
                                                          transform="translate(4.802 8.026)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                    <path id="Stroke_7" data-name="Stroke 7" d="M.5,4.083V0"
                                                          transform="translate(6.344 6.484)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                </g>
                                            </svg>
                                        </div>
                                        <span class="path__name">Documents</span>
                                    </div>
                                    <div class="group">
                                        <span class="short__name"></span>
                                        <i class="tio-chevron_right -arrwo"></i>
                                    </div>
                                </button>
                            </li>
                            <li>
                                <button type="button" class="btn item-link">
                                    <input type="file" capture="user" accept="image/*">
                                    <div class="group">
                                        <div class="icon bg-yellow">
                                            <svg id="Iconly_Curved_Camera" data-name="Iconly/Curved/Camera"
                                                 xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                 viewBox="0 0 20 20">
                                                <g id="Camera" transform="translate(2.741 2.535)">
                                                    <path id="Stroke_2" data-name="Stroke 2"
                                                          d="M5.242,2.621A2.621,2.621,0,1,0,2.621,5.242,2.621,2.621,0,0,0,5.242,2.621Z"
                                                          transform="translate(4.882 5.259)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                    <path id="Stroke_4" data-name="Stroke 4"
                                                          d="M7.5,14.3c6.7,0,7.5-2.009,7.5-6.361,0-3.051-.4-4.683-2.945-5.385a1.606,1.606,0,0,1-.7-.445C11.02,1.736,10.773.6,9.955.252a12.063,12.063,0,0,0-4.905,0c-.8.329-1.065,1.484-1.4,1.855a1.6,1.6,0,0,1-.7.445C.4,3.254,0,4.886,0,7.937,0,12.29.8,14.3,7.5,14.3Z"
                                                          transform="translate(0)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                    <path id="Stroke_11" data-name="Stroke 11" d="M.5.5H.5"
                                                          transform="translate(11.1 4.465)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                </g>
                                            </svg>
                                        </div>
                                        <span class="path__name">Camera</span>
                                    </div>
                                    <div class="group">
                                        <span class="short__name"></span>
                                        <i class="tio-chevron_right -arrwo"></i>
                                    </div>
                                </button>
                            </li>
                            <li>
                                <button type="button" class="btn item-link">
                                    <input type="file">
                                    <div class="group">
                                        <div class="icon bg-red">
                                            <svg id="Iconly_Curved_Image" data-name="Iconly/Curved/Image"
                                                 xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                 viewBox="0 0 20 20">
                                                <g id="Image" transform="translate(2.292 2.292)">
                                                    <path id="Stroke_1" data-name="Stroke 1"
                                                          d="M0,3.092S.677,1.727,1.662,1.727,3.15,2.873,4.242,2.873,6.557,0,7.793,0,9.917,1.992,9.917,1.992"
                                                          transform="translate(2.767 8.332)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                    <path id="Stroke_3" data-name="Stroke 3"
                                                          d="M2.6,1.3A1.3,1.3,0,1,1,1.3,0,1.3,1.3,0,0,1,2.6,1.3Z"
                                                          transform="translate(3.562 3.997)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                    <path id="Stroke_5" data-name="Stroke 5"
                                                          d="M0,7.708c0,5.781,1.927,7.708,7.708,7.708s7.708-1.927,7.708-7.708S13.489,0,7.708,0,0,1.927,0,7.708Z"
                                                          transform="translate(0 0)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5" />
                                                </g>
                                            </svg>
                                        </div>
                                        <span class="path__name">Gallery</span>
                                    </div>
                                    <div class="group">
                                        <span class="short__name"></span>
                                    </div>
                                </button>
                            </li>

                        </ul>
                    </div>
                </div>

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
</body>
</html>
