<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%-- 조인개설 시 태그명 참고 --%>
<%--- gymNo : hidden--%>
<%--- gymName--%>
<%--- 가져오기 버튼 id : gymModal--%>

<%--modal : 검색 입력창--%>
<%--- modal_search_gymName--%>
<%--- 검색 버튼 id : gymSearchBtn--%>
<%--- modal_gymName--%>

<%--modal : 검색결과--%>
<%--- modal_gymName(+gymNo정보 포함되어 있음.)--%>
<%--- 선택완료 버튼 id : gymChoiceBtn--%>

<script>
// 1. 운동센터 정보를 모달창으로 가져와주기 기능
    let center = {
        resultHTML : "", // 결과 담을 변수 만들기
        init:function () {
            $('#gymSearchBtn').click(function () {
                // 검색창에 입력된 센터 이름 가져오기
                var gymName = $("input[name='modal_search_gymName']").val();
                
                // AJAX 요청을 사용하여 서버로 센터 이름 전송
                $.ajax({
                    type: 'GET',
                    url: '/search',
                    data: {
                       gymName: gymName,
                    },
                    success: function (data) {
                        if (data != null) { // 검색어랑 비교했을 때 db에서 가져올 결과가 있다면
                            //console.log("success의 data!=null :"+data.toString());
                            document.getElementById("result").innerHTML = ""; // 검색결과 초기화
                            center.display(data); // 화면에 보여주기(아래코드에서 계속)
                        } else {
                            //console.log("비어서 왔다");
                            document.getElementById("result").innerHTML = "검색결과가 없습니다.";
                        }
                    }
                });
            });
            // 모달이 닫힐 때마다 결과 초기화하기.
            $('#duplicateCheck').on('hidden.bs.modal', function () {
                $("input[name='modal_search_gymName']").val(""); //검색 입력창도 초기화
                //$("input[name='gymNo']").val("");
                document.getElementById("result").innerHTML = ""; // 검색결과도 초기화
            });
            // 선택한 센터정보를 초기창에 자동입력 시켜주기
            $(document).ready(function () {
                $('#gymChoiceBtn').click(function () {
                    var gymInfo1 = $('input[name="modal_gymName"]:checked').val(); //모달 - 검색결과 중 1개 선택하면 받을 준비
                    // var gymInfo2 =  $('input[name="gymNo"]').val();

                    let str = $('input[name="modal_gymName"]:checked').val(); // 선택한 값 담기
                    //console.log("str : "+str);
                    //console.log("str type: " +typeof (str));
                    let result1 = str.slice(0, -1); // 센터이름 : 맨 뒤에서 1자리만 빼고
                    let result2 = str.slice(-1); // 센터번호 : 맨 뒤에서 1자리
                    //console.log("result1 : "+result1);
                    //console.log("result2 : "+result2);

                    // 라디오버튼 1개 선택 > 선택완료 > 모달꺼지면서 초기화면 창들 중
                    // input의 name이 아래와 같은 태그에 자동입력 해주기
                    $("input[name='gymName']").val(result1);
                    $("input[name='gymNo']").val(result2);
                    //alert("이름 출력 성공! " + gymInfo1);
                    // alert("gymNo 출력 " + gymInfo2);


                    // if (isNaN(gymInfo2)) {
                    //     //gymInfo2 = "";
                    //     //alert("Invalid gymNo");
                    //     alert(gymInfo2);
                    //     var parsedGymInfo2 = parseInt(gymInfo2);
                    //     $("input[name='chooseGymNo']").val(parsedGymInfo2);
                    //
                    //     alert("번호 변환 성공! " + parsedGymInfo2);
                    // } else {
                    //     var parsedGymInfo2 = parseInt(gymInfo2);
                    //     $("input[name='chooseGymNo']").val(parsedGymInfo2);
                    //
                    //     alert("번호 변환 성공! " + parsedGymInfo2);
                    // }
                });
            });



            // 화면 출력
        }, display: function (data) { // data : json이 담겨있어
            var resultHTML = ""; // 결과를 담을 변수 선언 초기화
            var resultHTMLNo = ""; // 결과를 담을 변수 선언 초기화
            //console.log("display로 왔다");
            // console.log();
            for (var i = 0; i < data.length; i++) {
                console.log(data[i]);
                // modal - 검색결과 뿌려지는 창
                resultHTML += "<li><div class='item-link hoverNone'><div class='custom-control custom-radio'><input type='radio'  value='" + data[i].gymName + data[i].gymNo + "'  id='customRadioList1' name='modal_gymName' class='custom-control-input'><label class='custom-control-label padding-l-30' for='customRadioList1'>" + data[i].gymName + "</label></div></div></li>"; // i가 반복해서 돌면서 검색어와 일치하는 데이터를 쌓기

            }
            document.getElementById("result").innerHTML = resultHTML; // 결과 출력
        }
    }

    // 실행
    $(function (){
        center.init();
    });

</script>
<script> // 2. 운동 이용권 정보를 모달창으로 가져와주기 기능
let center2 = {
    resultHTML : "", // 결과 담을 변수 만들기
    init:function () {
        $('#ticketSearchBtn').click(function () {
            // 검색창에 입력된 센터 이름 가져오기
            var ticketName = $("input[name='modal_search_ticketName']").val();

            // AJAX 요청을 사용하여 서버로 센터 이름 전송
            $.ajax({
                type: 'GET',
                url: '/ticketsearch',
                data: {
                    ticketName: ticketName,
                },
                success: function (data) {
                    if (data != null) { // 검색어랑 비교했을 때 db에서 가져올 결과가 있다면
                        //console.log("success의 data!=null :"+data.toString());
                        document.getElementById("result2").innerHTML = ""; // 검색결과 초기화
                        center2.display(data); // 화면에 보여주기(아래코드에서 계속)
                    } else {
                        //console.log("비어서 왔다");
                        document.getElementById("result2").innerHTML = "검색결과가 없습니다.";
                    }
                }
            });
        });
        // 모달2가 닫힐 때마다 결과 초기화하기.
        $('#duplicateCheck2').on('hidden.bs.modal', function () {
            $("input[name='modal_search_ticketName']").val(""); //검색 입력창도 초기화
            //$("input[name='gymNo']").val("");
            document.getElementById("result2").innerHTML = ""; // 검색결과도 초기화
        });
        // 선택한 센터정보를 초기창에 자동입력 시켜주기*
        $(document).ready(function () {
            $('#ticketChoiceBtn').click(function () {
                var ticketInfo1 = $('input[name="modal_ticketName"]:checked').val(); //모달 - 검색결과 중 1개 선택하면 받을 준비
                // var gymInfo2 =  $('input[name="gymNo"]').val();

                let str = $('input[name="modal_ticketName"]:checked').val(); // 선택한 값 담기
                //console.log("str : "+str);
                //console.log("str type: " +typeof (str));
                let result1 = str.slice(0, -5); // 센터이름 : 맨 뒤에서 5자리만 빼고
                let result2 = str.slice(-5); // 센터번호 : 맨 뒤에서 5자리
                //console.log("result1 : "+result1);
                //console.log("result2 : "+result2);

                // 라디오버튼 1개 선택 > 선택완료 > 모달꺼지면서 초기화면 창들 중
                // 초기화면인 input의 name이 아래와 같은 태그에 자동입력 해주기
                $("input[name='ticketName']").val(result1);
                $("input[name='ticketNo']").val(result2);
                //alert("이름 출력 성공! " + gymInfo1);
                // alert("gymNo 출력 " + gymInfo2);


                // if (isNaN(gymInfo2)) {
                //     //gymInfo2 = "";
                //     //alert("Invalid gymNo");
                //     alert(gymInfo2);
                //     var parsedGymInfo2 = parseInt(gymInfo2);
                //     $("input[name='chooseGymNo']").val(parsedGymInfo2);
                //
                //     alert("번호 변환 성공! " + parsedGymInfo2);
                // } else {
                //     var parsedGymInfo2 = parseInt(gymInfo2);
                //     $("input[name='chooseGymNo']").val(parsedGymInfo2);
                //
                //     alert("번호 변환 성공! " + parsedGymInfo2);
                // }
            });
        });



        // 화면 출력
    }, display: function (data) { // data : json이 담겨있어
        var resultHTML = ""; // 결과를 담을 변수 선언 초기화
        var resultHTMLNo = ""; // 결과를 담을 변수 선언 초기화
        //console.log("display로 왔다");
        // console.log();
        for (var i = 0; i < data.length; i++) {
            console.log(data[i]);
            // modal - 검색결과 뿌려지는 창
            resultHTML += "<li><div class='item-link hoverNone'><div class='custom-control custom-radio'><input type='radio'  value='" + data[i].ticketName + data[i].ticketNo + "'  id='customRadioList1' name='modal_ticketName' class='custom-control-input'><label class='custom-control-label padding-l-30' for='customRadioList1'>" + data[i].ticketName + "</label></div></div></li>"; // i가 반복해서 돌면서 검색어와 일치하는 데이터를 쌓기

        }
        document.getElementById("result2").innerHTML = resultHTML; // 결과 출력
    }
}

    // 실행
    $(function (){
        center2.init();
    });


</script>

<script> // 이미지 첨부하기
    let makejoin = {
        init:function (){
            $('#register_btn').click(function(){
                var formData = new FormData();

                var inputFile = $("input[name='groupboardImgpath']");
                // console.log(inputFile);
                var files = inputFile[0].files;
                for(var i=0; i<files.length;i++){
                    // 함수 호출(checkExtension)
                    if(!makejoin.checkExtension(files[i].name, files[i].size)){
                        return;
                    }
                }
                makejoin.send();

            });
        },
        checkExtension:function(fileName, fileSize){
            var reg = new RegExp("(.*?)\.(exe|zip|alz)$");
            // 유저가 올리려는 파일 확장자가 위와 같으면 못올리게.

            // 파일크기 제한
            // 실제파일의 크기 > 최대 크기
            if(fileSize >= this.maxSize){
                alert("파일 사이즈 초과");
                return false;
            }

            // 확장자 제한
            // 실제파일명의 확장자와 정규식 비교
            // 정규식이면
            if(reg.test(fileName)){
                alert("해당 종류의 파일은 업로드 할 수 없습니다.");
                return false;
            }
            return true;

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

</script>


<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/">
            <i class="tio-chevron_left size-24 color-black"></i>
        </a>
    </div>
    <div class="title_page">
                    <span class="page_name">
                        조인 만들기
                    </span>
    </div>

</header>
<!-- End.main_haeder -->

<section class="em__signTypeOne padding-t-50">
    <div class="em_titleSign">
        <div class="brand mb-3">
            <img src="/uimg/logo.jpg" alt="">
        </div>
        <p class="size-12 color-text">이용권 구매할 인원을 모아서 동시할인받고 <br>운동의 즐거움은 두 배로 누려보세요!</p>
    </div>
    <div class="em__body">
        <!-- form 태그 시작.  안에 입력!  -->
        <form role="form" id="register_form">
            <input type="hidden" name="custNo" value="${logincust.custNo}"/>
<%--            <input type="hidden" name="gymNo" id="gymNo"/>--%>
            <div class="form-group with_icon">
                <label>운동센터</label>
                <div class="input_group">
                    <!-- 1. 초기 센터정보 가져오는창 -->
                    <input type="search" class="form-control" name="gymName"
                               id="gymName"  style="margin-right: 10px"
                               placeholder="센터명 검색" required readonly>
                    <!-- 센터번호 : 테스트할 땐 type 을 text로 -->
                    <input type="hidden" name="gymNo" id="gymNo" value="" />
                    <button type="button" class="btn btn-outline-secondary col-3" style="width: 35%; height: 100%;"
                            data-toggle="modal" id="gymModal"
                            data-target="#duplicateCheck" >  <!--data-target="#duplicateCheck" -->
                        찾기
                    </button>

                </div>
                <br>

            </div>
            <div class="form-group with_icon">
                <label>이용권</label>
                <div class="input_group">
                    <!-- 2. 초기화면 이용권정보 가져오는 창 -->
                    <input type="search" class="form-control" style="margin-right: 10px"
                           placeholder="이용권명 검색"
                           id="ticketName" name="ticketName" required readonly>
                    <!-- 이용권 번호 : 테스트할 땐 type 을 text로 -->
                    <input type="hidden" name="ticketNo" id="ticketNo" value="" />
                    <button type="button" class="btn btn-outline-secondary" style="width: 35%; height: 100%;"
                            data-toggle="modal" data-target="#duplicateCheck2"
                            id="ticketModal">  <!--data-target="#duplicateCheck" -->
                        찾기
                    </button>
                </div>
                <br>
            </div>

            <!-- 모집인원 수 설정 -->
            <div class="item-link hoverNone">
                <div class="group">
                    <span class="path__name">모집인원 설정</span>
                    <p style="font-size: 12px; color:#8890E8">회원님을 제외하고 모집받을 인원 수를 선택해 주세요</p>
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
                <p style="font-size: 12px; color:#8890E8">모집인원이 모두 조인을 신청하면 결제할 때 할인이 자동 적용돼요</p>
                <div class="input_group">
<%--                    <input type="text" class="form-control" style="margin-right: 10px"--%>
<%--                           placeholder="할인 금액"--%>
<%--                            required>--%>
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
                        미리보기
                    </button>
                </div>
                <br>
            </div><hr><br>
            <!-- 작성내용 -->
            <div class="form-group with_icon">
                <label>조인 내용</label>
            </div>
            <label>대표 이미지</label>
            <!-- 4. 업로드하는 파일 -->
<%--            <div class="upliadimg">--%>
<%--&lt;%&ndash;            <input class="upload-name" value="파일 없음" disabled>&ndash;%&gt;--%>
<%--            <input type="file" id="file1" name="groupboardImgpath"--%>
<%--                       class="upload-hidden">--%>
<%--<!-- 미리보기 구간 --><img id="previewimg" onclick="popimage(this.src)" />--%>
<%--            </div>--%>
            <!-- 업로드한 이미지 표시 -->
            <input type="file" name="groupboardImgpath" class="form-control" id="groupboardImgpath" placeholder="Input image">

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
                <label for="groupboardContents">소개 내용</label>
            </div>
            <!-- 게시글 종류 선택 -->
            <div class="form-group with_icon">
                <label>카테고리 선택</label>
                <p style="font-size: 12px; color:#8890E8">회원님이 선택하신 종류로 조인이 게시됩니다.</p>
                <div class="form-group">
<%--                    <input type="text" name="categoryNo"><!-- 임시 -->--%>
                    <select class="form-control custom-select" id="categoryNo" name="categoryNo">
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
        <button type="button" style="background-color: blueviolet"
                class="btn color-white justify-content-center" id="register_btn">작성 완료</button>
<%--        <a href="/groupboard/success_create"class="btn hover:color-secondary justify-content-center">작성 완료</a>--%>
    </div>
    </form><!-- from 태그 종료 -->

</section>

<!-- 1. 센터 검색 시 Modal -->
<div class="modal defaultModal modalCentered change__address fade" id="duplicateCheck" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                <div class="itemProduct_sm">
                    <h1 class="size-18 weight-600 color-secondary m-0">조인 가능한 센터</h1>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="tio-clear"></i>
                </button>
            </div>
            <%-- 센터검색. 모달 - 검색입력창   --%>
            <div class="modal-body">
                <div class="nav__listAddress itemSingle">
                    <div class="modal-content">
                        <form id="search-form" action="/groupboard/search">
                            <div class="row">
                                <div class="col-9">
                                    <input type="search" class="form-control" name="modal_search_gymName" placeholder="센터 이름" required>
                                </div>
                                <div class="col-3" style="padding-left: 0px">
                                    <button type="button" class="btn btn-outline-secondary" id="gymSearchBtn">검색</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <br>
                    <%-- 검색결과 나타나는 공간 --%>
                    <div class="form-group with_icon">
                        <p>검색 결과</p><hr>
                        <div id="search-results"class="em__pkLink">
                            <ul  class="nav__list with__border" id="result"> <!-- jsonArray 결과 뿌려지는 곳 -->
                                <!-- 센터명 나오는 모습-->
                                <%--  resultHTML += "<li>
                                                        <div class='item-link hoverNone'>
                                                            <div class='custom-control custom-radio'>
                                                                <input type='radio'  id='customRadioList1' class='custom-control-input'
                                                                name='gymName' value='"+ data[i].gymName +"'>
                                                                    <label class='custom-control-label padding-l-30'
                                                                    for='customRadioList1' >" + data[i].gymName +
                                                                    "</label>
                                                                </div>
                                                            </div>
                                                    </li>"; // i가 반복해서 돌면서 검색어와 일치하는 데이터를 쌓기--%>

                            </ul>
                            <div id="resultNo"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" style="background-color: blueviolet"
                        id="gymChoiceBtn" class="btn btn_default_lg" data-dismiss="modal" aria-label="Close">선택 완료</button>
            </div>
        </div>
    </div>
</div>
<%-- 2. 이용권 검색 시 보여주는 모달창 --%>

<!-- 1. 센터 검색 시 Modal -->
<div class="modal defaultModal modalCentered change__address fade" id="duplicateCheck2" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                <div class="itemProduct_sm">
                    <h1 class="size-18 weight-600 color-secondary m-0">조인 가능한 이용권</h1>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="tio-clear"></i>
                </button>
            </div>
            <%-- 이용권 검색. 모달 - 검색창   --%>
            <div class="modal-body">
                <div class="nav__listAddress itemSingle">
                    <div class="modal-content">
                        <form id="ticket-search-form" action="/groupboard/ticketsearch">
                            <div class="row">
                                <div class="col-9">
                                    <input type="search" class="form-control" name="modal_search_ticketName" placeholder="이용권 이름" required>
                                </div>
                                <div class="col-3" style="padding-left: 0px">
                                    <button type="button" class="btn btn-outline-secondary" id="ticketSearchBtn"
                                    >검색</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <br>
                    <%-- 검색결과 나타나는 공간 --%>
                    <div class="form-group with_icon">
                        <p>검색 결과</p><hr>
                        <div id="triketsearch-results"class="em__pkLink">
                            <ul  class="nav__list with__border" id="result2"> <!-- jsonArray 결과 뿌려지는 곳 -->
                                <!-- 티겟명 나오는 모습-->
                                <%--  resultHTML += "<li>
                                                        <div class='item-link hoverNone'>
                                                            <div class='custom-control custom-radio'>
                                                                <input type='radio'  id='customRadioList1' class='custom-control-input'
                                                                name='gymName' value='"+ data[i].gymName +"'>
                                                                    <label class='custom-control-label padding-l-30'
                                                                    for='customRadioList1' >" + data[i].gymName +
                                                                    "</label>
                                                                </div>
                                                            </div>
                                                    </li>"; // i가 반복해서 돌면서 검색어와 일치하는 데이터를 쌓기--%>

                            </ul>
                            <div id="resultNo2"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" style="background-color: blueviolet"
                        id="ticketChoiceBtn" class="btn btn_default_lg" data-dismiss="modal" aria-label="Close">선택 완료</button>
            </div>
        </div>
    </div>
</div>