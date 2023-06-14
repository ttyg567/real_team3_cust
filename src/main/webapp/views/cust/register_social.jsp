<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 성영 추가 -->
<script src="/assets/js/userjs/register_social.js"></script>

<!-- Start main_haeder -->
<header class="main_haeder header-sticky multi_item">
    <div class="em_side_right">
        <a class="rounded-circle d-flex align-items-center text-decoration-none" href="app-pages.html">
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
        <h1>거의 다 왔어요!</h1>
        <p class="size-13 color-text">고객 정보를 입력해주세요</p>
    </div>
    <div class="em__body">
        <form role="form" id="register_social_form">
            <input type="hidden" name="custEmail" id="custEmail" value=" ${custEmail_s}">
            <input type="hidden" name="custName" id="custName" value=" ${custName_s}">
            <input type="hidden" name="picture" id="picture" value=" ${picture_s}">
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
        <button type="button" class="btn bg-primary color-white justify-content-center" id="register_social_btn">가입하기</button>
        <a href="/" class="btn hover:color-secondary justify-content-center">메인 화면으로</a>
    </div>
</section>

<script>
    $(document).ready(function () {

        register_social_form.init();

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

