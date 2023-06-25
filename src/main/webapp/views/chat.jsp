<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>


<div id="wrapper">
    <div id="content">
        <!-- 상단 센터 정보 표출 및 상태 표출 -->
        <header class="header_tab head_conversation border-b border-b-solid border-snow">
            <div class="main_haeder multi_item">
                <div class="em_side_right">
                    <a class="btn bg-transparent rounded-circle justify-content-start" href="/mypage">
                        <i class="tio-chevron_left"></i>
                    </a>
                </div>
                <div class="item_userChat ml-0">
                    <div class="media">
                        <img class="img-user" src="/assets/img/candy/chatbot.png" alt="">
                        <div class="media-body my-auto">
                            <div class="txt">
                                <h1>${targetGym.gymName}</h1>
                                <p class="color-green" id="status">Status</p>
                                <h1 id="adm_id" style="display:none;">${logincust.custNo}</h1>
<%--                                <input type="hidden" value="${targetGym.gymNo}" id="target">--%>
                                <input type="hidden" value="2" id="target">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="em_side_right">
                </div>
            </div>
        </header>
        <!-- 상단 센터 정보 표출 및 상태 표출 -->

        <section class="emPage__conversation padding-t-70 padding-b-80">
            <!-- ============= 센터 답변창 ================= -->
            <div class="item_user">
                <div class="media">
                    <div class="imgProfile">
                        <img src="/assets/img/candy/chatbot.png" alt="">
                    </div>
                    <div class="media-body">
                        <div class="content_sms">
                            <p class="item_msg">
                                안녕하세요! '${targetGym.gymName}' 입니다. <br/> 상담원이 연결되면 상담을 도와드리겠습니다.
                            </p>
                            <div class="time"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============= 센터 답변창 ================= -->

            <div class="env-pb bg-white fixed w-100" style="bottom: 55px">
                <div class="bk_footer_input emBK__buttonsShare">
                    <button type="button" class="btn btn_upload p-0" data-toggle="modal" data-target="#mdllButtons">
                        <div class="icon bg-snow rounded-10">
                            <i class="ri-attachment-line size-20"></i>
                        </div>
                    </button>
                    <!-- ====================질문창============================= -->
                    <div class="form-group m-0">
                        <input type="text" class="form-control" placeholder="여기에 질문하실 내용을 적어주세요" id="totext">
                    </div>
                    <!-- ====================질문창============================= -->

                    <!-- ====================질문 버튼============================= -->
                    <button type="button" class="btn btn_defSend rounded-10" id="sendto">
                        <svg id="Iconly_Bulk_Send" data-name="Iconly/Bulk/Send" xmlns="http://www.w3.org/2000/svg"
                             width="20" height="20" viewBox="0 0 20 20">
                            <g id="Send" transform="translate(1.667 1.667)">
                                <path id="Fill_1" data-name="Fill 1"
                                      d="M16.19.482A1.615,1.615,0,0,0,14.581.065L1.173,3.939A1.6,1.6,0,0,0,.02,5.2,1.863,1.863,0,0,0,.855,6.94L5.048,9.5a1.09,1.09,0,0,0,1.341-.159l4.8-4.8a.613.613,0,0,1,.883,0,.629.629,0,0,1,0,.883l-4.809,4.8A1.092,1.092,0,0,0,7.1,11.565l2.562,4.208a1.668,1.668,0,0,0,1.592.774,1.62,1.62,0,0,0,1.358-1.15L16.59,2.09a1.619,1.619,0,0,0-.4-1.608"
                                      transform="translate(0 0)" fill="#fff"/>
                                <path id="Combined_Shape" data-name="Combined Shape"
                                      d="M3.97,6.355a.625.625,0,0,1,0-.883L5.108,4.333a.625.625,0,1,1,.884.884L4.854,6.355a.625.625,0,0,1-.883,0ZM3.317,3.2a.625.625,0,0,1,0-.884L4.455,1.176a.625.625,0,0,1,.884.884L4.2,3.2a.625.625,0,0,1-.883,0ZM.183,2.2a.625.625,0,0,1,0-.884L1.321.182a.625.625,0,0,1,.884.884L1.066,2.2a.625.625,0,0,1-.884,0Z"
                                      transform="translate(0.217 9.952)" fill="#fff" opacity="0.4"/>
                            </g>
                        </svg>
                    </button>
                    <!-- ====================질문 버튼============================= -->
                </div>

            </div>
        </section>
    </div>
</div>

<script>
    // $(document).ready(function () {
    //     var loadingCount = 0; // 로딩 중인 요청 수를 추적하는 변수 추가
    //
    //     // 스피너 숨기기 함수
    //     function hideLoading() {
    //         loadingCount--; // 로딩 완료시 카운트 감소
    //         if (loadingCount === 0) {
    //             $('.spinner-container').hide(); // 모든 요청이 완료되었을 때만 로딩바 숨기기
    //         }
    //     }
    //
    //     // 스피너 표시 함수
    //     function showLoading() {
    //         loadingCount++; // 로딩 시작시 카운트 증가
    //         $('.spinner-container').show();
    //     }
    // });


    let callcenter = {
        id:null,
        stompClient:null,
        init:function(){
            let time1 = new Date().toLocaleTimeString();
            this.id = $('#adm_id').text();

            // 접속하면 바로 연결
            callcenter.connect();


            // 스크롤 맨 아래로 이동
            //var conversationSection = $('.emPage__conversation');
            //conversationSection.scrollTop(conversationSection.prop("scrollHeight"));

            // 답변 내용이 화면에 다 나오지 않을 경우 스크롤을 아래로 이동
            //var itemMsgHeight = itemMsg.outerHeight();
            //var contentSmsHeight = contentSms.outerHeight();
            // if (itemMsgHeight > contentSmsHeight) {
            //     conversationSection.scrollTop(conversationSection.scrollTop() + itemMsgHeight - contentSmsHeight);
            // }


            $("#disconnect").click(function() {
                callcenter.disconnect();
            });

            $("#sendto").click(function() {
                callcenter.sendTo();
            });
        },
        connect:function(){
            var sid = this.id;
            var socket = new SockJS('${adminserver}/ws');
            this.stompClient = Stomp.over(socket);

            this.stompClient.connect({}, function(frame) {
                callcenter.setConnected(true);
                console.log('Connected: ' + frame);
                //var time2 = new Date().toLocaleTimeString();

                // // 내 질문 먼저 표출
                // var conversationItemUserMe = $('<div class="item_user __me">').appendTo('.emPage__conversation');
                // var mediaMe = $('<div class="media">').appendTo(conversationItemUserMe);
                // // 질문과 시간을 세로로 정렬
                // var mediaBodyMe = $('<div class="media-body flex-column">').appendTo(mediaMe);
                // var contentSmsMe = $('<div class="content_sms">').appendTo(mediaBodyMe);
                // $('<p class="item_msg">').text(question).appendTo(contentSmsMe);
                // var timeMe = $('<div class="time">').appendTo(contentSmsMe);
                // $('<span>').text(time1).appendTo(timeMe);
                // $('<div class="icon ml-1">').append('<i class="ri-check-double-line color-primary size-18"></i>').appendTo(timeMe);

                // this.subscribe('/send/'+sid, function(msg) {
                //     // 내가 보낸 대화 내용 표시
                //     var conversationItemUserMe = $('<div class="item_user __me">').appendTo('.emPage__conversation');
                //     var mediaMe = $('<div class="media">').appendTo(conversationItemUserMe);
                //     // 질문과 시간을 세로로 정렬
                //     var mediaBodyMe = $('<div class="media-body flex-column">').appendTo(mediaMe);
                //     var contentSmsMe = $('<div class="content_sms">').appendTo(mediaBodyMe);
                //     $('<p class="item_msg">').text(question).appendTo(contentSmsMe);
                //     var timeMe = $('<div class="time">').text(JSON.parse(msg.body).content1).appendTo(contentSmsMe);
                //     $('<span>').text(time2).appendTo(timeMe);
                //     $('<div class="icon ml-1">').append('<i class="ri-check-double-line color-primary size-18"></i>').appendTo(timeMe);
                // });

                this.subscribe('/send/to/'+sid, function(msg) {
                    // $("#to").prepend(
                    //     "<h4>" + JSON.parse(msg.body).sendid +":"+
                    //     JSON.parse(msg.body).content1
                    //     + "</h4>");
                    var conversationItemUser = $('<div class="item_user">').appendTo('.emPage__conversation');
                    var media = $('<div class="media">').appendTo(conversationItemUser);
                    $('<div class="imgProfile">').append('<img src="/assets/img/candy/chatbot.png" alt="">').appendTo(media);
                    var mediaBody = $('<div class="media-body">').appendTo(media);
                    var contentSms = $('<div class="content_sms">').appendTo(mediaBody);
                    var itemMsg = $('<p class="item_msg">').text(JSON.parse(msg.body).content1).appendTo(contentSms);
                    //$('<div class="time">').text(time2).appendTo(contentSms);
                });
            });
        },
        disconnect:function(){
            if (this.stompClient !== null) {
                this.stompClient.disconnect();
            }
            callcenter.setConnected(false);
            console.log("Disconnected");
        },
        setConnected:function(connected){
            if (connected) {
                $("#status").text("상담 직원과 연결 되었습니다.");
            } else {
                $("#status").text("상담 직원이 부재중 입니다.");
            }
        },
        sendTo:function(){

            var question = $('#totext').val(); // 입력 필드의 값 가져오기

            var conversationItemUserMe = $('<div class="item_user __me">').appendTo('.emPage__conversation');
            var mediaMe = $('<div class="media">').appendTo(conversationItemUserMe);
            var mediaBodyMe = $('<div class="media-body flex-column">').appendTo(mediaMe);
            var contentSmsMe = $('<div class="content_sms">').appendTo(mediaBodyMe);
            $('<p class="item_msg">').text(question).appendTo(contentSmsMe);
            var timeMe = $('<div class="time">').appendTo(contentSmsMe);
            //$('<span>').text(time2).appendTo(timeMe);
            //$('<div class="icon ml-1">').append('<i class="ri-check-double-line color-primary size-18"></i>').appendTo(timeMe);

            var msg = JSON.stringify({
                'sendid' : this.id,
                'receiveid' : $('#target').val(),
                'content1' : $('#totext').val()
            });

            // var msgMe = JSON.stringify({
            //     'sendid' : this.id,
            //     'content1' : $('#metext').val()
            // });

            this.stompClient.send('/receiveto', {}, msg);

            $("#totext").val(""); // 질문 초기화

        }
    };
    $(function(){
        callcenter.init();
    })

    // $('#sendto').on('click', function() {
    //     var question = $('#totext').val(); // 입력 필드의 값 가져오기
    //
    //
    //     var conversationItemUserMe = $('<div class="item_user __me">').appendTo('.emPage__conversation');
    //     var mediaMe = $('<div class="media">').appendTo(conversationItemUserMe);
    //     var mediaBodyMe = $('<div class="media-body flex-column">').appendTo(mediaMe);
    //     var contentSmsMe = $('<div class="content_sms">').appendTo(mediaBodyMe);
    //     $('<p class="item_msg">').text(question).appendTo(contentSmsMe);
    //     var timeMe = $('<div class="time">').appendTo(contentSmsMe);
    //     $('<span>').text(time1).appendTo(timeMe);
    //     $('<div class="icon ml-1">').append('<i class="ri-check-double-line color-primary size-18"></i>').appendTo(timeMe);
    // });

</script>

