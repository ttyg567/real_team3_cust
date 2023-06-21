// 회원가입 관련
let information_form = {

    init: function () {
        $("#update_btn").click(function () {
            alert('클릭됨');
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

