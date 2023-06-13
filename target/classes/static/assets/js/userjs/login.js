let login_form = {
    init: function () {
        $('#login_btn').click(function () {
            let custEmail = $("#custEmail").val(); // 이메일
            let custPwd = $("#custPwd").val(); // 비밀번호
            if (custEmail == "" || custPwd == ""){
                alert("모든 값을 입력하셔야 합니다. 확인해주세요");
                return;
            }
            login_form.send();
        });
    },
    send: function () {
        $('#login_form').attr({
            'action': '/cust/loginimpl',
            'method': 'post'
        });
        $('#login_form').submit();
    }
}
