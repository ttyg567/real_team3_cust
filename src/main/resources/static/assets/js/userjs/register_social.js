// 회원가입 관련
let register_social_form = {

    init: function () {

        /* 가입하기 버튼 클릭 */
        $("#register_social_btn").click(function () {

            let custPhone = $("#custPhone").val(); // 휴대폰번호
            let custBirth = $("#custBirth").val(); // 출생년도

            let custGender = $('input[name="custGender"]:checked').val();

            let sportsType = $("#sportsType").val(); // 관심운동종목
            let sportsClasstype = $("#sportsClasstype").val(); // 관심수업

            let custSido = $("#custSido").val(); // 성별
            let custSigungu = $("#custSigungu").val(); // 관심운동종목

            $("#register_info").hide();

            // 모든 값 있는지 확인
            if (custPhone == "" || custBirth == "" || custGender == "" ||
                sportsType == "" || sportsClasstype == "" || custSido == "" || custSigungu == "") {
                alert("모든 값을 입력하셔야 합니다. 확인해주세요")
                // $("#register_info_msg").text("모든 값을 입력하셔야 합니다. 확인해주세요");
                // $("#register_info").show();
                return;
            }

            register_social_form.send();
        });
    },
    send: function () {
        $('#register_social_form').attr({
            method : 'post',
            action : '/cust/register_social_impl',
        });
        $('#register_social_form').submit();
    }
}

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

