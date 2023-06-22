<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<script>
    let callcenter = {
        id:null,
        stompClient:null,
        init:function(){
            this.id = $('#adm_id').text();
            $("#connect").click(function() {
                callcenter.connect();
            });
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
                this.subscribe('/send/to/'+sid, function(msg) {
                    $("#to").prepend(
                        "<h4>" + JSON.parse(msg.body).sendid +":"+
                        JSON.parse(msg.body).content1
                        + "</h4>");
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
                $("#status").text("Connected");
            } else {
                $("#status").text("Disconnected");
            }
        },
        sendTo:function(){
            var msg = JSON.stringify({
                'sendid' : this.id,
                'receiveid' : $('#target').val(),
                'content1' : $('#totext').val()
            });
            this.stompClient.send('/receiveto', {}, msg);
        }
    };
    $(function(){
        callcenter.init();
    })

</script>

<div id="wrapper">
    <div id="content">
        <!-- Start main_haeder -->
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
                                <h1>헬쓱 지피티</h1>
                                <h1 id="adm_id">${logincust.id}</h1>
                                <p class="color-green" id="status">Status</p>
                                <button id="connect">Connect</button>
                                <button id="disconnect">Disconnect</button>
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
            <div class="item_user">
                <div class="media">
                    <div class="imgProfile">
                        <img src="/assets/img/candy/chatbot.png" alt="">
                    </div>
                    <div class="media-body">
                        <div class="content_sms">
                            <p class="item_msg">
                                안녕
                            </p>
                            <div class="time"></div>
                        </div>
                        <div class="content_sms">
                            <p class="item_msg" id = "all" >
                                안녕
                            </p>
                            <div class="time"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="env-pb bg-white fixed w-100" style="bottom: 55px">
                <div class="bk_footer_input emBK__buttonsShare">
                    <button type="button" class="btn btn_upload p-0" data-toggle="modal" data-target="#mdllButtons">
                        <div class="icon bg-snow rounded-10">
                            <i class="ri-attachment-line size-20"></i>
                        </div>
                    </button>
                    <div class="form-group m-0">
                        <input type="text" class="form-control" placeholder="여기에 질문하실 내용을 적어주세요" id="alltext">
                    </div>
                    <button type="button" class="btn btn_defSend rounded-10" id="sendall">
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
                </div>
            </div>
        </section>
    </div>


    <!-- Modal Buttons Share -->
    <div class="modal transition-bottom -inside screenFull defaultModal mdlladd__rate fade" id="mdllButtons_share"
         tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content rounded-15">

                <div class="modal-body rounded-15 p-0">
                    <div class="emBK__buttonsShare icon__share padding-20">
                        <button type="button" class="btn" data-sharer="facebook" data-hashtag="hashtag"
                                data-url="https://orinostudio.com/nepro/">
                            <div class="icon bg-facebook rounded-10">
                                <i class="tio-facebook_square"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="telegram" data-title="Checkout Nepro!"
                                data-url="https://orinostudio.com/nepro/" data-to="+44555-5555">
                            <div class="icon bg-telegram rounded-10">
                                <i class="tio-telegram"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="skype"
                                data-url="https://orinostudio.com/nepro/" data-title="Checkout Nepro!">
                            <div class="icon bg-skype rounded-10">
                                <i class="tio-skype"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="linkedin"
                                data-url="https://orinostudio.com/nepro/">
                            <div class="icon bg-linkedin rounded-10">
                                <i class="tio-linkedin_square"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="twitter" data-title="Checkout Nepro!"
                                data-hashtags="pwa, Nepro, template, mobile, app, shopping, ecommerce"
                                data-url="https://orinostudio.com/nepro/">
                            <div class="icon bg-twitter rounded-10">
                                <i class="tio-twitter"></i>
                            </div>
                        </button>
                        <button type="button" class="btn" data-sharer="whatsapp" data-title="Checkout Nepro!"
                                data-url="https://orinostudio.com/nepro/">
                            <div class="icon bg-whatsapp rounded-10">
                                <i class="tio-whatsapp_outlined"></i>
                            </div>
                        </button>
                    </div>

                </div>
            </div>
        </div>
    </div>

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
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
                                                    <path id="Stroke_3" data-name="Stroke 3"
                                                          d="M0,0V2.217a2.8,2.8,0,0,0,2.8,2.8H5.262"
                                                          transform="translate(8.57 0.069)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
                                                    <path id="Stroke_5" data-name="Stroke 5" d="M4.083.5H0"
                                                          transform="translate(4.802 8.026)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
                                                    <path id="Stroke_7" data-name="Stroke 7" d="M.5,4.083V0"
                                                          transform="translate(6.344 6.484)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
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
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
                                                    <path id="Stroke_4" data-name="Stroke 4"
                                                          d="M7.5,14.3c6.7,0,7.5-2.009,7.5-6.361,0-3.051-.4-4.683-2.945-5.385a1.606,1.606,0,0,1-.7-.445C11.02,1.736,10.773.6,9.955.252a12.063,12.063,0,0,0-4.905,0c-.8.329-1.065,1.484-1.4,1.855a1.6,1.6,0,0,1-.7.445C.4,3.254,0,4.886,0,7.937,0,12.29.8,14.3,7.5,14.3Z"
                                                          transform="translate(0)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
                                                    <path id="Stroke_11" data-name="Stroke 11" d="M.5.5H.5"
                                                          transform="translate(11.1 4.465)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
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
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
                                                    <path id="Stroke_3" data-name="Stroke 3"
                                                          d="M2.6,1.3A1.3,1.3,0,1,1,1.3,0,1.3,1.3,0,0,1,2.6,1.3Z"
                                                          transform="translate(3.562 3.997)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
                                                    <path id="Stroke_5" data-name="Stroke 5"
                                                          d="M0,7.708c0,5.781,1.927,7.708,7.708,7.708s7.708-1.927,7.708-7.708S13.489,0,7.708,0,0,1.927,0,7.708Z"
                                                          transform="translate(0 0)" fill="none" stroke="#fff"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-miterlimit="10" stroke-width="1.5"/>
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

