<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 이진 만들었다용-->
<script>
    $(document).ready(function () {
        information_form.init();
    });
</script>

<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/cust/login">
            <i class="tio-chevron_left size-24 color-text"></i>
            <span class="color-text size-14">Back</span>

        </a>

    </div>
    <div class="title_page">
                        <span class="page_name">
                          내 정보
                        </span>
    </div>
    <div class="title_page">
                    <span class="page_name">
                        <!-- title -->
                    </span>
    </div>
</header>
<!-- End.main_haeder -->

<section class="em__signTypeOne padding-t-50">
    <div class="em_titleSign" style="margin-bottom: 10px">
        <div class="brand mb-3">
            <a id="custLink" href="/cust/pic">
            <div class="circle-background">
                <img id="custImage" alt="" style="width: 130px">
                <span id="custText" class="image-text">클릭하여<br>프로필 사진등록</span>
            </div>
            </a>
        </div>
<%--        <h6>${logincust.custName} 님의 정보</h6>--%>
    </div>
    <div class="em__body">
        <form role="form" id="information_form">
            <div class="form-group with_icon">
                <label>이름</label>
                <div class="input_group">
                    <input type="email" class="form-control"  value="${logincust.custName}" id="custName"
                           name="custEmail" readonly>

                </div>
                <br>
            <div class="form-group with_icon">
                <label>이메일 주소</label>
                <div class="input_group">
                    <input type="email" class="form-control"  value="${logincust.custEmail}" id="custEmail"
                           name="custEmail" readonly>

                </div>
                <br>

            <div class="form-group with_icon">
                <label>핸드폰 번호</label>
                <div class="input_group">
                    <input type="tel" class="form-control" placeholder="${logincust.custPhone}" id="custPhone" name="custPhone"
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
            <div class="form-group with_icon">
                <label>출생 연도</label>
                <div class="form-group">
                    <input class="form-control custom-select" id="custBirth" value="${logincust.custBirth}" name="custBirth" readonly>

                </div>
            </div>

            <br>
            <div class="form-group with_icon">
                <label>관심 시도</label>
                <select class="form-control custom-select" id="custSido" value="${logincust.custSido}" name="custSido">
                    <option value=""> 선택</option>
                    <option value="서울" ${logincust.custSido == '서울' ? 'selected' : ''}>서울</option>
                    <option value="경기" ${logincust.custSido == '경기' ? 'selected' : ''}>경기</option>
                    <option value="인천광역시" ${logincust.custSido == '인천광역시' ? 'selected' : ''}>인천</option>
                    <option value="강원도" ${logincust.custSido == '강원도' ? 'selected' : ''}>강원</option>
                    <option value="충청북도" ${logincust.custSido == '충청북도' ? 'selected' : ''}> 충북</option>
                    <option value="충청남도" ${logincust.custSido == '충청남도' ? 'selected' : ''}> 충남</option>
                    <option value="대전광역시" ${logincust.custSido == '대전광역시' ? 'selected' : ''}> 대전</option>
                    <option value="경상북도"  ${logincust.custSido == '경상북도' ? 'selected' : ''}> 경북</option>
                    <option value="경상남도"  ${logincust.custSido == '경상남도' ? 'selected' : ''}> 경남</option>
                    <option value="울산광역시"  ${logincust.custSido == '울산광역시' ? 'selected' : ''}> 울산</option>
                    <option value="대구광역시" ${logincust.custSido == '대구광역시' ? 'selected' : ''}> 대구</option>
                    <option value="부산광역시"  ${logincust.custSido == '부산광역시' ? 'selected' : ''}> 부산</option>
                    <option value="전라북도"  ${logincust.custSido == '전라북도' ? 'selected' : ''}> 전북</option>
                    <option value="전라남도"  ${logincust.custSido == '전라남도' ? 'selected' : ''}> 전남</option>
                    <option value="광주광역시"  ${logincust.custSido == '광주광역시' ? 'selected' : ''}> 광주</option>
                    <option value="제주특별자치도"  ${logincust.custSido == '제주특별자치도' ? 'selected' : ''}> 제주</option>
                </select>
            </div>
            <div class="form-group with_icon">
                <label>관심 시군</label>
                <select class="form-control custom-select" id="custSigungu" value="${logincust.custSigungu}" name="custSigungu">
                    <option></option>
                </select>
            </div>
            <div class="form-group with_icon">
                <label>관심운동종목</label>
                <div class="form-group">
                    <select class="form-control custom-select" id="sportsType" name="sportsType"value="${logincust.sportsType}" >
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
                    <select class="form-control custom-select" id="sportsClasstype" value="${logincust.sportsType}" name="sportsClasstype" >
                        <option value="1">1:1수업</option>
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
    <div class="form-group with_icon">

        <c:choose>
            <c:when test="${logincust.custImageName == null || logincust.custImageName == ''}">
                <!-- 이미지가 없을 때의 처리 -->
                <label>프로필 사진</label>
                <a class="btn btn-outline-secondary" href="/cust/pic">
                    등록
                </a>
            </c:when>
            <c:otherwise>
                <label>프로필 사진</label><br>
                <img src="/uimg/${logincust.custImageName}"><br>
                <a class="btn btn-outline-secondary" href="/cust/pic">
                    변경
                </a>
            </c:otherwise>
        </c:choose>
    </div>

    <div class="em__footer">
        <button type="button" class="btn bg-primary color-white justify-content-center" id="update_btn"
        >변경하기</button>
        <a href="/cust/login" class="btn hover:color-secondary justify-content-center">로그인 화면으로</a>
    </div>
</section>

<script>

    // 회원가입 관련
    let information_form = {

        init: function () {
            $("#update_btn").click(function () {
                let custPhone = $("#custPhone").val(); // 휴대폰번호
                let sportsType = $("#sportsType").val(); // 관심운동종목
                let sportsClasstype = $("#sportsClasstype").val(); // 관심수업
                let custSido = $("#custSido").val(); //시도
                let custSigungu = $("#custSigungu").val(); // 시군구

                information_form.send();
            });
        },
        send: function () {
            $('#information_form').attr({
                method : 'post',
                action : '/cust/updateimpl',
            });
            $('#information_form').submit();
        }
    }

    // 이메일 형식 유효성 검사


    function formatPhoneNumber(event) {
        let input = event.target;
        let phoneNumber = input.value;
        // '-' 제거
        phoneNumber = phoneNumber.replace(/-/g, '');
        // 숫자만 입력
        phoneNumber = phoneNumber.replace(/\D/g, ''); // 숫자가 아닌 문자열은 다 공백으로
        // 형식화된 전화번호 적용
        let formattedNumber = '';
        if (phoneNumber.length > 3) {
            formattedNumber += phoneNumber.substr(0, 3) + '-';
            if (phoneNumber.length > 7) {
                formattedNumber += phoneNumber.substr(3, 4) + '-' + phoneNumber.substr(7);
            } else {
                formattedNumber += phoneNumber.substr(3);
            }
        } else {
            formattedNumber = phoneNumber;
        }
        input.value = formattedNumber;
    }

    // 다음 주소 api
    function DaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                let addr = ''; // 주소 변수
                let extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("gymAddress3").value = extraAddr;

                } else {
                    document.getElementById("gymAddress3").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('gymZipcode').value = data.zonecode;
                document.getElementById("gymAddress1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("gymAddress2").focus();
            }
        }).open();
    }
    var custImgName = "${logincust.custImgName}";

    if (custImgName == null || !custImgName.endsWith('.jpg')) {
        document.getElementById('custLink').setAttribute("href", "/cust/pic");
        document.getElementById('custImage').setAttribute("src", '/assets/img/customer.png');
        document.getElementById('custText').style.display = "block";
    } else {
        document.getElementById('custLink').setAttribute("href", '/uimg/' + custImgName);
        document.getElementById('custImage').setAttribute("src", '/uimg/' + custImgName);
        document.getElementById('custText').style.display = "none";
    }
</script>
<style>
    img#custImage{
        place-content: center;
    }
    .circle-background {
        margin-top: 25px;
        position: relative;
        width: 130px;
        height: 130px;
        border-radius: 50%;
        background-color: #f5f5fa;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .circle-background img {

        position: relative;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;

    }

    .image-text {
        position: absolute;
        bottom: 50px;
        left: 0;
        width: 100%;
        text-align: center;
        font-size: 12px;
        color: purple;
        display: none;
    }
</style>