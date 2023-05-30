let login_form = {
    init: function () {
        $('#login_btn').click(function () {
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
