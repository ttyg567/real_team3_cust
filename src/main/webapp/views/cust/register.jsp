<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(document).ready(function () {
        register_form.init();
    });
</script>

<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/cust/register_intro">
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
        <h1>회원가입</h1>
        <p class="size-13 color-text">헬쓱에 오신 것을 환영합니다</p>
    </div>
    <div class="em__body">
        <form role="form" id="register_form">
            <div class="form-group with_icon">
                <label>이름</label>
                <div class="input_group">
                    <input type="text" class="form-control" placeholder="Kim kookmin" id="custName" name="custName"
                           required>
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Profile" data-name="Iconly/Two-tone/Profile"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Profile" transform="translate(4 2)">
                                <circle id="Ellipse_736" cx="4.778" cy="4.778" r="4.778"
                                        transform="translate(2.801 0)" fill="none" stroke="#200e32"
                                        stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                        stroke-width="1.5" opacity="0.4"/>
                                <path id="Path_33945"
                                      d="M0,3.016a2.215,2.215,0,0,1,.22-.97A4.042,4.042,0,0,1,3.039.426,16.787,16.787,0,0,1,5.382.1,25.053,25.053,0,0,1,9.767.1a16.979,16.979,0,0,1,2.343.33c1.071.22,2.362.659,2.819,1.62a2.27,2.27,0,0,1,0,1.95c-.458.961-1.748,1.4-2.819,1.611a15.716,15.716,0,0,1-2.343.339A25.822,25.822,0,0,1,6.2,6a4.066,4.066,0,0,1-.815-.055,15.423,15.423,0,0,1-2.334-.339C1.968,5.4.687,4.957.22,4A2.279,2.279,0,0,1,0,3.016Z"
                                      transform="translate(0 13.185)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                            </g>
                        </svg>
                    </div>
                </div>
            </div>
            <div class="form-group with_icon">
                <label>이메일 주소</label>
                <div class="input_group">
                    <input type="email" class="form-control" placeholder="example@mail.com" id="custEmail"
                           name="custEmail" required>
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Message" data-name="Iconly/Two-tone/Call"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Message" transform="translate(2 3)">
                                <path id="Path_445" d="M11.314,0,7.048,3.434a2.223,2.223,0,0,1-2.746,0L0,0"
                                      transform="translate(3.954 5.561)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" opacity="0.4"/>
                                <path id="Rectangle_511"
                                      d="M4.888,0h9.428A4.957,4.957,0,0,1,17.9,1.59a5.017,5.017,0,0,1,1.326,3.7v6.528a5.017,5.017,0,0,1-1.326,3.7,4.957,4.957,0,0,1-3.58,1.59H4.888C1.968,17.116,0,14.741,0,11.822V5.294C0,2.375,1.968,0,4.888,0Z"
                                      transform="translate(0 0)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                            </g>
                        </svg>
                    </div>
                    <button type="button" class="btn btn-outline-secondary" style="width: 35%; height: 100%;"
                            data-toggle="modal"
                            id="btnECheck">  <!--data-target="#duplicateCheck" -->
                        중복체크
                    </button>
                </div>
                <br>
                <!-- Modal -->
                <div class="modal defaultModal modalCentered change__address fade" id="duplicateCheck" tabindex="-1"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header border-0 padding-l-20 padding-r-20 justify-content-center">
                                <div class="itemProduct_sm">
                                    <h1 class="size-18 weight-600 color-secondary m-0">사용 가능한 이메일</h1>
                                </div>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <i class="tio-clear"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <ul class="nav__listAddress itemSingle">
                                    <li class="item">
                                        <div class="personal__info">
                                            <h2 class="size-15 color-secondary weight-400">이메일 주소</h2>
                                            <span class="size-14 color-secondary weight-500" id="emailValue"></span>
                                        </div>
                                        <div class="areaRight">
                                            <button class="btn btn-outline-secondary" type="button" id="btnSendcnum"
                                                    style="">인증번호 전송
                                            </button>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="이메일로 전송된 인증번호를 입력하세요"
                                                   aria-label="cNumberInput" name="cNumberInput" id="cNumberInput"
                                                   aria-describedby="cNumberInput" style="display: none; width:70%">
                                            <button class="btn btn-outline-secondary mb-0" type="button"
                                                    id="btnConfirmcnum"
                                                    style="display: none; width:30%">번호입력
                                            </button>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="personal__info">
                                            <span class="size-16 color-secondary weight-500" id="codeAvailable"
                                                  style="display: none; width:100%">
                                                인증 성공했습니다. 아래의 인증 완료 버튼을 눌러주세요.
                                            </span>
                                            <span class="size-16 color-secondary weight-500" id="codeFailure"
                                                  style="display: none; width:100%">
                                                인증번호가 일치하지 않습니다. 다시 입력하시거나 인증번호를 다시 받아주세요.
                                            </span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn_default_lg" data-dismiss="modal"
                                        aria-label="Close">이메일 인증 완료
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group with_icon">
                <label>핸드폰 번호</label>
                <div class="input_group">
                    <input type="tel" class="form-control" placeholder="010-1234-5678" id="custPhone" name="custPhone"
                           onkeyup="formatPhoneNumber(event)">
                    <div class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                             class="bi bi-phone" viewBox="0 0 16 16">
                            <path d="M11 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h6zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"
                            />
                            <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"
                            />
                        </svg>
                    </div>
                </div>
            </div>
            <div class="form-group with_icon" id="show_hide_password">
                <label>비밀번호</label>
                <div class="input_group">
                    <input type="password" class="form-control" placeholder="enter your password" id="custPwd"
                           name="custPwd">
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Password" data-name="Iconly/Two-tone/Password"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Password" transform="translate(2 2)">
                                <path id="Stroke_1" data-name="Stroke 1"
                                      d="M13.584,0H4.915C1.894,0,0,2.139,0,5.166v8.168C0,16.361,1.885,18.5,4.915,18.5h8.668c3.031,0,4.917-2.139,4.917-5.166V5.166C18.5,2.139,16.614,0,13.584,0Z"
                                      transform="translate(0.75 0.75)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" opacity="0.4"/>
                                <path id="Stroke_3" data-name="Stroke 3"
                                      d="M3.7,1.852A1.852,1.852,0,1,1,1.851,0,1.852,1.852,0,0,1,3.7,1.852Z"
                                      transform="translate(4.989 8.148)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_5" data-name="Stroke 5" d="M0,0H6.318V1.852"
                                      transform="translate(8.692 10)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_7" data-name="Stroke 7" d="M.5,1.852V0"
                                      transform="translate(11.682 10)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                            </g>
                        </svg>
                    </div>
                    <button type="button" class="btn hide_show icon_password">
                        <i class="tio-hidden_outlined"></i>
                    </button>
                </div>
            </div>
            <div class="form-group with_icon" id="show_hide_password_confirm">
                <label>비밀번호 확인</label>
                <div class="input_group">
                    <input type="password" class="form-control" placeholder="enter your password" id="custPwd2"
                           name="custPwd2">
                    <div class="icon">
                        <svg id="Iconly_Two-tone_Password" data-name="Iconly/Two-tone/Password"
                             xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <g id="Password" transform="translate(2 2)">
                                <path id="Stroke_1" data-name="Stroke 1"
                                      d="M13.584,0H4.915C1.894,0,0,2.139,0,5.166v8.168C0,16.361,1.885,18.5,4.915,18.5h8.668c3.031,0,4.917-2.139,4.917-5.166V5.166C18.5,2.139,16.614,0,13.584,0Z"
                                      transform="translate(0.75 0.75)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5" opacity="0.4"/>
                                <path id="Stroke_3" data-name="Stroke 3"
                                      d="M3.7,1.852A1.852,1.852,0,1,1,1.851,0,1.852,1.852,0,0,1,3.7,1.852Z"
                                      transform="translate(4.989 8.148)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_5" data-name="Stroke 5" d="M0,0H6.318V1.852"
                                      transform="translate(8.692 10)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                                <path id="Stroke_7" data-name="Stroke 7" d="M.5,1.852V0"
                                      transform="translate(11.682 10)" fill="none" stroke="#200e32"
                                      stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                      stroke-width="1.5"/>
                            </g>
                        </svg>
                    </div>
                    <button type="button" class="btn hide_show icon_password">
                        <i class="tio-hidden_outlined"></i>
                    </button>
                </div>
            </div>
            <div class="form-group with_icon">
                <label>출생 연도</label>
                <div class="form-group">
                    <select class="form-control custom-select" id="custBirth" name="custBirth">
                        <c:forEach var="year" begin="1930" end="2023">
                            <c:choose>
                                <c:when test="${year eq 1990}">
                                    <option value="${year}" selected>${year}년</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${year}">${year}년</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div>
                <label>성별</label><br>
                <div class="custom-control custom-radio d-inline-block margin-b-10">
                    <input type="radio" id="custGender1" name="custGender" value="0" class="custom-control-input"
                           required>
                    <label class="custom-control-label padding-l-10" for="custGender1">남자</label>
                </div>&nbsp;&nbsp;&nbsp;
                <div class="custom-control custom-radio d-inline-block margin-b-10">
                    <input type="radio" id="custGender2" name="custGender" value="1" class="custom-control-input"
                           required>
                    <label class="custom-control-label padding-l-10" for="custGender2">여자</label>
                </div>
            </div>
            <br>
            <div class="form-group with_icon">
                <label>관심 시도</label>
                <select class="form-control custom-select" id="custSido" name="custSido">
                    <option value=""> 선택</option>
                    <option value="서울"> 서울</option>
                    <option value="경기"> 경기</option>
                    <option value="인천광역시"> 인천</option>
                    <option value="강원도"> 강원</option>
                    <option value="충청북도"> 충북</option>
                    <option value="충청남도"> 충남</option>
                    <option value="대전광역시"> 대전</option>
                    <option value="경상북도"> 경북</option>
                    <option value="경상남도"> 경남</option>
                    <option value="울산광역시"> 울산</option>
                    <option value="대구광역시"> 대구</option>
                    <option value="부산광역시"> 부산</option>
                    <option value="전라북도"> 전북</option>
                    <option value="전라남도"> 전남</option>
                    <option value="광주광역시"> 광주</option>
                    <option value="제주특별자치도"> 제주</option>
                </select>
            </div>
            <div class="form-group with_icon">
                <label>관심 시군</label>
                <select class="form-control custom-select" id="custSigungu" name="custSigungu">
                    <option></option>
                </select>
            </div>
            <div class="form-group with_icon">
                <label>관심운동종목</label>
                <div class="form-group">
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
            <div class="form-group with_icon">
                <label>관심수업</label>
                <div class="form-group">
                    <select class="form-control custom-select" id="sportsClasstype" name="sportsClasstype">
                        <option value="1" selected>1:1수업</option>
                        <option value="2">그룹수업</option>
                        <option value="3">자유수업</option>
                    </select>
                </div>
            </div>
        </form>
    </div>
    <div class="badge badge-danger" id="register_info"
         style="display: none; width: 100%;">
        <span id="register_info_msg"></span>
    </div>
    <div class="em__footer">
        <button type="button" class="btn bg-primary color-white justify-content-center" id="register_btn">가입하기</button>
        <a href="/cust/login" class="btn hover:color-secondary justify-content-center">로그인 화면으로</a>
    </div>
</section>

<script>
    $(document).ready(function () {
        // 관심 시도 변경 시 AJAX 요청 보내고 관심 시군구를 받아옵니다.
        $("#custSido").change(function () {
            let selectedSido = $(this).val();  // 선택된 시도 값을 가져옵니다.
            console.log("선택된 값" + selectedSido);

            // 강원도는 api에서 제공 X (강원특별자치도도 제공 X)
            if (selectedSido === "강원도") {
                let options = "";
                options += "<option value='강릉시'>강릉시</option>";
                options += "<option value='동해시'>동해시</option>";
                options += "<option value='삼척시'>삼척시</option>";
                options += "<option value='속초시'>속초시</option>";
                options += "<option value='원주시'>원주시</option>";
                options += "<option value='춘천시'>춘천시</option>";
                options += "<option value='태백시'>태백시</option>";
                options += "<option value='고성군'>고성군</option>";
                options += "<option value='양주군'>양주군</option>";
                options += "<option value='양양군'>양양군</option>";
                options += "<option value='영월군'>영월군</option>";
                options += "<option value='인제군'>인제군</option>";
                options += "<option value='정선군'>정선군</option>";
                options += "<option value='철원군'>철원군</option>";
                options += "<option value='평창군'>평창군</option>";
                options += "<option value='홍천군'>홍천군</option>";
                options += "<option value='화천군'>화천군</option>";
                options += "<option value='횡성군'>횡성군</option>";
                $("#custSigungu").html(options);
            } else {
                // AJAX 요청 보내기
                $.ajax({
                    url    : "/cust/getaddress",  // 실제 API 엔드포인트 URL로 대체해야 합니다.
                    method : "GET",
                    data   : {custSido: selectedSido},  // 선택된 시도 값을 파라미터로 전달합니다.
                    success: function (response) {
                        // 받아온 시군구 데이터를 처리합니다.
                        let options = "";
                        for (let i = 0; i < response.length; i++) {
                            options += "<option value='" + response[i] + "'>" + response[i] + "</option>";
                        }
                        // 시군구 <select> 요소에 옵션을 추가합니다.
                        $("#custSigungu").html(options);
                    },
                    error  : function (xhr, status, error) {
                        console.error(error);  // 에러 처리
                    }
                });
            }
        });
    });

</script>

