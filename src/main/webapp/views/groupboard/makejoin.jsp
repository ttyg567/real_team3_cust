<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

    let center = {
        init:function (){
            $('#search_Btn').click(function () {
                // 입력된 센터 이름 가져오기
                var gymName = $("input[name='gymName']").val();

                // AJAX 요청을 사용하여 서버로 센터 이름 전송
                $.ajax({
                    type: 'GET',
                    url: '/search',
                    data: {gymName: gymName},
                    success: function (data) {
                        if (data != null) {
                            // console.log(result.toString());
                            // document.getElementById("result").innerHTML ="<div><p>" + result.gymName + "</p></div>";
                            // // document.getElementById("result").innerHTML =
                            // //     "<p>" + gym.gymName + "</p>";
                            console.log("success의 data!=null :"+data.toString());
                            center.display(data);
                        } else {
                            console.log("비어서 왔다");
                            document.getElementById("result").innerHTML = "검색결과가 없습니다.";
                        }
                    }
                    // ,
                    // error: function () {
                    //     document.getElementById("result").innerHTML = "서버 오류가 발생했습니다.";
                    // }

                    // success: function (response) {
                    //     displayGymResults(response);
                    // },
                });
            });
        }, display:function (data){ // data : json이 담겨있어
            var resultHTML = ""; // 결과를 담을 변수 선언
            console.log("display로 왔다");
            for(var i = 0; i < data.length; i ++){
                console.log(data[i]);
                resultHTML += "<p>" + data[i].gymName + "</p>"; // i가 반복해서 돌면서 검색어와 일치하는 데이터를 쌓기
                document.getElementById("result").innerHTML = resultHTML; // 한 번에 결과를 출력
            }

        }
    };

    $(function (){
        center.init();
    });

    // 검색 결과를 표시하는 함수
    // function displayGymResults(gyms) {
    //    // var resultList = $(".modal-body .item .nav__listAddress");
    //     var resultList = $('.search-results');
    //
    //     // resultList.empty(); // 기존 검색 결과 제거
    //
    //     if (gyms.length > 0) {
    //         $.each(gyms, function (index, gym) {
    //            resultList.append("<div><p>" + gym.gymName + "</p></div>");
    //         });
    //     } else {
    //          resultList.append('<div><p>검색 결과가 없습니다.</p></div>');
    //     }
    // }
</script>
<script>
    let makejoin = {
        init:function (){
            $('#register_btn').click( function (){ // 클릭되면
                makejoin.send(); //send.
            });
        },
        send:function (){ // form의 정보를, 어디로 보낼까

            $('#register_form').attr({
                method:'post', // 방식
                action:'/groupboard/makejoinimpl', // 처리할 컨트롤러명
                enctype : 'multipart/form-data' // form 정보 : text +file 정보도 전송.
            });
            $('#register_form').submit(); // 입력한  센터, 이용권, 등등 , img 모두 전송.
        }
    };

    //실행
    $(function (){
        makejoin.init();
    });
</script>
<script>
    $(document).ready(function(){
        //파일첨부 이벤트
        $('.filebox .upload-hidden').on('change', function(){
            if(window.FileReader){
                var filename = $(this)[0].files[0].name;
                if(!validFileType(filename)){
                    alert("허용하지 않는 확장자 파일입니다.");
                    return false;
                }else{
                    if(!validFileSize($(this)[0].files[0])){
                        alert("파일 사이즈가 10MB를 초과합니다.");
                        return false;
                    }else{
                        if(!validFileNameSize(filename)){
                            alert("파일명이 30자를 초과합니다.");
                            return false;
                        }
                    }
                }
            } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }
            $(this).prev().val(filename); //input upload-name 에 파일명 설정해주기

            readImage($(this)[0]); //미리보기
        });
    });

    function validFileType(filename) {
        const fileTypes = ["png", "jpg", "jpeg"];
        return fileTypes.indexOf(filename.substring(filename.lastIndexOf(".")+1, filename.length).toLowerCase()) >= 0;
    }

    function validFileSize(file){
        if(file.size > 10000000){ //10MB
            return false;
        }else{
            return true;
        }
    }

    function validFileNameSize(filename){
        if(filename.length > 30){ //30자
            return false;
        }else{
            return true;
        }
    }

    //이미지 띄우기
    function readImage(input) {
        if(input.files && input.files[0]) {
            const reader = new FileReader();
            reader.onload = function(e){
                const previewImage = document.getElementById("previewImg");
                previewImage.src = e.target.result;
            }
            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0]);
        }
    }

    //이미지 원본 팝업 띄우기
    function popImage(url) {
        var img = new Image();
        img.src = url;
        var img_width = img.width;
        var win_width = img.width + 25;
        var img_height = img.height;
        var win = img.height + 30;
        var popup = window.open('', '_blank', 'width=' + img_width + ', height=' + img_height + ', menubars=no, scrollbars=auto');
        popup.document.write("<style>body{margin:0px;}</style><img src='"+url+"' width='"+win_width+"'>");
    }
</script>


<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/groupboard">
            <i class="tio-chevron_left size-24 color-text"></i>
            <span class="color-text size-14">Back</span>
        </a>
    </div>
    <div class="title_page">
                    <span class="page_name">
                        <!-- title -->
                    </span>
    </div>
</header>
<!-- End.main_haeder -->

<section class="em__signTypeOne padding-t-50">
    <div class="em_titleSign">
        <div class="brand mb-3">
            <img src="/assets/img/logo.jpg" alt="">
        </div>
        <h1>조인 만들기</h1>
        <p class="size-13 color-text">헬쓱 회원들과 조인하면 운동 이용권을 할인된 금액으로 함께 구매할 수 있어요</p>
    </div>
    <div class="em__body">
        <!-- form 태그 시작.  안에 입력!  -->
        <form role="form" id="register_form">
            <input type="hidden" name="custNo" value="${logincust.custNo}"/>
            <div class="form-group with_icon">
                <label>운동센터 선택</label>
<%--                <c:forEach var="obj" items="${gymlist}">--%>
                <div class="input_group">
                    <!-- 1. 센터정보 -->
                        <input type="search" class="form-control" name="gymNo" style="margin-right: 10px"
                               placeholder="이용할 센터 정보를 입력해 주세요" required>
                    <button type="button" class="btn btn-outline-secondary col-3" style="width: 35%; height: 100%;"
                            data-toggle="modal"
                            data-target="#duplicateCheck" >  <!--data-target="#duplicateCheck" -->
                        찾아보기
                    </button>

                </div>
<%--                </c:forEach>--%>
                <br>
                <!-- 센터 검색 시 Modal -->
                <div class="modal defaultModal modalCentered change__address fade" id="duplicateCheck" tabindex="-1"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                                <div class="itemProduct_sm">
                                    <h1 class="size-18 weight-600 color-secondary m-0">공동구매가 가능한 센터 검색하기</h1>
                                </div>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <i class="tio-clear"></i>
                                </button>
                            </div>
                            <%--  검색할 센터명 입력 + 선택결과 보여주기   --%>
                            <div class="modal-body">
                                <div class="nav__listAddress itemSingle">
                                    <div class="item">
                                        <form id="search-form" action="/groupboard/search">
                                            <input type="search" class="form-control" name="gymName" style="margin-right: 10px"
                                                   placeholder="센터 이름" required>
                                            <div class="areaRight col-3">
                                                <button type="button" class="btn btn-outline-secondary"
                                                        id="search_Btn">검색</button>
                                            </div>
                                        </form>
                                    </div>
                                    <br>
                                    <%-- 검색결과 나타나는 공간 --%>
                                    <div class="form-group with_icon">
                                        <p>검색 결과</p><hr>
                                        <div id="search-results"> <!-- 검색 결과를 표시할 공간 -->
                                            <div  class="nav__list with__border"></div>
                                                <li class="item-link hoverNone">
                                                    <div  id="result" class="custom-control custom-radio" >
                                                    </div>
                                                </li>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn_default_lg" data-dismiss="modal" aria-label="Close">선택 완료</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group with_icon">
                <label>이용권 선택</label>
                <div class="input_group">
                    <!-- 2. 이용권정보 -->
                    <input type="text" class="form-control" style="margin-right: 10px"
                           placeholder="공동 구매하고 싶은 이용권을 검색해 주세요" id="ticketNo"
                           name="ticketNo" required>
<%--                    <div class="icon">--%>
<%--                        <svg id="Iconly_Two-tone_Message" data-name="Iconly/Two-tone/Call"--%>
<%--                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">--%>
<%--                            <g id="Message" transform="translate(2 3)">--%>
<%--                                <path id="Path_445" d="M11.314,0,7.048,3.434a2.223,2.223,0,0,1-2.746,0L0,0"--%>
<%--                                      transform="translate(3.954 5.561)" fill="none" stroke="#200e32"--%>
<%--                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"--%>
<%--                                      stroke-width="1.5" opacity="0.4"/>--%>
<%--                                <path id="Rectangle_511"--%>
<%--                                      d="M4.888,0h9.428A4.957,4.957,0,0,1,17.9,1.59a5.017,5.017,0,0,1,1.326,3.7v6.528a5.017,5.017,0,0,1-1.326,3.7,4.957,4.957,0,0,1-3.58,1.59H4.888C1.968,17.116,0,14.741,0,11.822V5.294C0,2.375,1.968,0,4.888,0Z"--%>
<%--                                      transform="translate(0 0)" fill="none" stroke="#200e32"--%>
<%--                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"--%>
<%--                                      stroke-width="1.5"/>--%>
<%--                            </g>--%>
<%--                        </svg>--%>
<%--                    </div>--%>
                    <button type="button" class="btn btn-outline-secondary" style="width: 35%; height: 100%;"
                            data-toggle="modal"
                            id="btnECheck">  <!--data-target="#duplicateCheck" -->
                        검색하기
                    </button>
                </div>
                <br>
            </div>

            <!-- 모집인원 수 설정 -->
            <div class="item-link hoverNone">
                <div class="group">
                    <span class="path__name">모집인원 선택</span>
                    <p style="font-size: small; color:#8890E8">회원님을 제외하고 모집받을 인원 수를 선택해 주세요</p>
                </div>
                <div class="group">
                    <div class="itemCountr_manual horizontal hz-lg" style="width: 100%">
                        <a href="#" data-dir="down" class="btn btn_counter co_down">
                            <i class="tio-remove"></i>
                        </a>
                        <!-- 3. 모집인원 -->
                        <input type="text" name="expectMember" class="form-control input_no color-secondary" value="1">
                        <a href="#" data-dir="up" class="btn btn_counter co_up">
                            <i class="tio-add"></i>
                        </a>
                    </div>
                </div>
            </div><br>
            <div class="form-group with_icon">
                <label>예상 할인금액</label>
                <p style="font-size: small; color:#8890E8">회원님이 설정한 모집인원만큼 조인이 신청되면 적용받게 될 금액이에요</p>
                <div class="input_group">
                    <input type="text" class="form-control" style="margin-right: 10px"
                           placeholder="할인 금액" id="custEmail"
                            required>
<%--                    <div class="icon">--%>
<%--                        <svg id="Iconly_Two-tone_Message" data-name="Iconly/Two-tone/Call"--%>
<%--                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">--%>
<%--                            <g id="Message" transform="translate(2 3)">--%>
<%--                                <path id="Path_445" d="M11.314,0,7.048,3.434a2.223,2.223,0,0,1-2.746,0L0,0"--%>
<%--                                      transform="translate(3.954 5.561)" fill="none" stroke="#200e32"--%>
<%--                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"--%>
<%--                                      stroke-width="1.5" opacity="0.4"/>--%>
<%--                                <path id="Rectangle_511"--%>
<%--                                      d="M4.888,0h9.428A4.957,4.957,0,0,1,17.9,1.59a5.017,5.017,0,0,1,1.326,3.7v6.528a5.017,5.017,0,0,1-1.326,3.7,4.957,4.957,0,0,1-3.58,1.59H4.888C1.968,17.116,0,14.741,0,11.822V5.294C0,2.375,1.968,0,4.888,0Z"--%>
<%--                                      transform="translate(0 0)" fill="none" stroke="#200e32"--%>
<%--                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"--%>
<%--                                      stroke-width="1.5"/>--%>
<%--                            </g>--%>
<%--                        </svg>--%>
<%--                    </div>--%>
                    <button type="button" class="btn btn-outline-secondary" style="width: 35%; height: 100%;"
                            data-toggle="modal"
                            id="btnECheck">  <!--data-target="#duplicateCheck" -->
                        조회하기
                    </button>
                </div>
                <br>
            </div><hr><br>
            <!-- 작성내용 -->
            <div class="form-group with_icon">
                <label>조인 소개내용</label>
            </div>
            <label>대표 이미지</label>
            <!-- 4. 업로드하는 파일 -->
            <div class="upliadimg">
            <input class="upload-name" value="파일 없음" disabled>
            <input type="file" id="file1" name="groupboardImgpath"
                       class="upload-hidden">
<!-- 미리보기 구간 --><img id="previewimg" onclick="popimage(this.src)" />
            </div>
            <!-- 업로드한 이미지 표시 -->
<%--            <%--%>
<%--                이미지가 업로드되었다면 이미지를 화면에 표시--%>
<%--                String uploadedImagePath = "업로드된 이미지의 상대 또는 절대 경로";--%>
<%--                if (uploadedImagePath != null && !uploadedImagePath.isEmpty()) {--%>
<%--            %>--%>
<%--            <img src="<%= uploadedImagePath %>" alt="업로드된 이미지">--%>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>
            <br>
            <div class="form-group input-lined">
                            <input class="form-control" rows="2" name="groupboardTitle"
                                   id="groupboardTitle"
                                      placeholder="제목을 작성해 주세요(60자 이내)" />
                <label for="groupboardTitle">제목</label>
            </div>
            <div class="form-group input-lined">
                            <input class="form-control" rows="6" name="groupboardContents"
                                      id="groupboardContents"
                                      placeholder="내용을 작성해 주세요(150자 이내)">
                <label for="groupboardContents">상세 소개내용</label>
            </div>
            <!-- 게시글 종류 선택 -->
            <div class="form-group with_icon">
                <label>카테고리 선택</label>
                <p style="font-size: small; color:#8890E8">회원님이 선택하신 종류로 조인이 게시됩니다.</p>
                <div class="form-group">
                    <input type="text" name="categoryNo"><!-- 임시 -->
                    <select class="form-control custom-select" id="sportsType" name="sportsType">
                        <option value="1" selected>헬스</option>
                        <option value="2">PT</option>
                        <option value="3">크로스핏</option>
                        <option value="4">요가</option>
                        <option value="5">필라테스</option>
                        <option value="6">골프</option>
                        <option value="7">수영</option>
                    </select>
                </div>
            </div>

    </div>
    <div class="badge badge-danger" id="register_info"
         style="display: none; width: 100%;">
        <span id="register_info_msg"></span>
    </div>
    <div class="em__footer">
        <button type="button" class="btn bg-primary color-white justify-content-center" id="register_btn">작성 완료</button>
        <a href="/groupboard/success_create" class="btn hover:color-secondary justify-content-center">작성 완료</a>
    </div>
    </form><!-- from 태그 종료 -->

</section>
