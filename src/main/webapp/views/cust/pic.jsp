<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</head>
<script>
    let pic = {
        myVideoStream:null,
        init:function(){
            this.myVideoStream = document.querySelector('#myVideo');

        },
        getVideo:function(){
            navigator.getMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia;
            navigator.getMedia(
                {video: true, audio: false},
                function(stream) {
                    pic.myVideoStream.srcObject = stream
                    pic.myVideoStream.play();
                },
                function(error) {
                    alert('webcam not working');
                });
        },
        takeSnapshot:function(){
            var myCanvasElement = document.querySelector('#myCanvas');
            var myCTX = myCanvasElement.getContext('2d');
            myCTX.drawImage(this.myVideoStream, 0, 0, myCanvasElement.width, myCanvasElement.height);
        },
        send:function(){
            const canvas = document.querySelector('#myCanvas');
            const imgBase64 = canvas.toDataURL('image/jpeg', 'image/octet-stream');
            const decodImg = atob(imgBase64.split(',')[1]);
            let array = [];
            for (let i = 0; i < decodImg .length; i++) {
                array.push(decodImg .charCodeAt(i));
            }
            const file = new Blob([new Uint8Array(array)], {type: 'image/jpeg'});
            const fileName = 'healssg' + new Date().getMilliseconds() + '.jpg';
            let formData = new FormData();
            formData.append('file', file, fileName);
            $.ajax({
                type: 'post',
                url: '/saveimg/',
                enctype: 'multipart/form-data',
                cache: false,
                data: formData,
                processData: false,
                contentType: false,
                success: function (data) {
                    $('#imgname').val(data);

                    toastr.options.positionClass = "toast-top-full-width";
                    toastr.options.timeOut = 3000;
                    toastr.success('프로필 사진이 정상 등록되었어요', {timeOut: 3000});
                }
            });
        },
        takeAuto:function(interval){
            this.getVideo();
            myStoredInterval = setInterval(function(){
                pic.takeSnapshot();
                pic.send();

            }, interval);
        }
    };
    $(function(){
     pic.init();
    });
</script>
<body>


<div id="wrapper">
    <div id="content">
        <!-- Start main_haeder -->
        <header class="main_haeder header-sticky multi_item">
            <div class="em_side_right">
                <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/">
                    <i class="tio-chevron_left size-24 color-text"></i>
                </a>
            </div>
            <div class="title_page">
                        <span class="page_name">
                          프로필 사진 찍기
                        </span>
            </div>

        </header>
        <!-- End.main_haeder -->

        <section class="em__signTypeOne padding-t-50">
            <div class="em_titleSign" style="justify-content: left ; margin-left: 25px; margin-bottom: 5px">
                <h6 >프로필 사진을 찍어봐요 ! </h6>
                <p class="size-10 color-text mb-1">
                   하단의 버튼을 클릭해주세요,
                </p>


            </div>
            <div class="em__body" style="margin-top: 0">
                <form action="">
                    <input type=button; class="btn btn-outline-secondary" value="카메라 켜기" onclick="pic.getVideo();"
                           style="width: 38%; margin-bottom: 10px; "></button>
                    <div class="verification__Code" style="display: flex; justify-content: center;">
                        <video  id="myVideo" width="200" height="200" style="border: 1px solid mediumpurple; margin-bottom: 30px"></video><br>
                    </div>
                    <div class="verification__Code" style="display: flex; justify-content: center;">
                        <canvas id="myCanvas" width="200" height="200" style="border: 1px solid mediumpurple;"></canvas>
                    </div>

                </form>
            </div>
            <div class="em__footer"
                 style="display: flex; justify-content: center; margin-bottom: 20%">

                <input type=button; class="btn btn-light" value="get Pic" onclick="pic.takeSnapshot();"
                style="width: 30%; margin-right: 10%"></button>
                <input type=button;  class="btn bg-primary color-white justify-content-center" value="send Pic" onclick="pic.send()();"
                style="width: 30%" ></button>
<%--                <input type=button  class="btn bg-primary color-white justify-content-center" value="Auto Pic" onclick="pic.takeAuto(5000);"--%>
<%--                       style="width: 50%">--%>

            </div>
        </section>

    </div>


    <!-- Start searchMenu__hdr -->


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
<!-- 테두리 from gpt-->
<script>
    const canvas = document.getElementById('myCanvas');
    const context = canvas.getContext('2d');
    const centerX = canvas.width / 2;
    const centerY = canvas.height / 2;

    const text = 'photo';
    context.font = 'bold 16px';
    context.fillStyle = 'purple'; // Set the text color
    context.textAlign = 'center';
    context.fillText(text, centerX, centerY);

</script>