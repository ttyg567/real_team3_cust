<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>

<body>
<div id="wrapper">
    <div id="content">
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
                       비밀번호 변경
                    </span>
            </div>

        </header>
        <!-- End.main_haeder -->

        <section class="padding-20">
            <form name ="password_form" id="password_form"
                    action="" class="padding-t-70">
                <div class="margin-b-30">
                    <div class="form-group input-lined lined__iconed">
                        <div class="input_group">
                            <input type="password" name="current_password" class="form-control" placeholder="enter current password" required="">
                            <div class="icon">
                                <svg id="Iconly_Curved_Password" data-name="Iconly/Curved/Password"
                                     xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22">
                                    <g id="Password" transform="translate(2.521 2.521)">
                                        <path id="Stroke_1" data-name="Stroke 1"
                                              d="M3.4,1.7A1.7,1.7,0,1,1,1.7,0h0A1.7,1.7,0,0,1,3.4,1.7Z"
                                              transform="translate(3.882 6.781)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_3" data-name="Stroke 3" d="M0,0H5.792V1.7"
                                              transform="translate(7.28 8.479)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_5" data-name="Stroke 5" d="M.5,1.7V0"
                                              transform="translate(9.979 8.479)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_7" data-name="Stroke 7"
                                              d="M0,8.479C0,2.12,2.12,0,8.479,0s8.479,2.12,8.479,8.479-2.12,8.479-8.479,8.479S0,14.838,0,8.479Z"
                                              fill="none" stroke="#9498ac" stroke-linecap="round"
                                              stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                    </g>
                                </svg>
                            </div>

                        </div>

                        <label>비밀번호</label>
                    </div>
                </div>
                <div class="margin-b-30">
                    <div class="form-group input-lined lined__iconed" id="show_hide_password">
                        <div class="input_group">
                            <input type="password" name="new_password" id="pass" class="form-control" placeholder="enter new password" required="">
                            <div class="icon">
                                <svg id="Iconly_Curved_Password" data-name="Iconly/Curved/Password"
                                     xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22">
                                    <g id="Password" transform="translate(2.521 2.521)">
                                        <path id="Stroke_1" data-name="Stroke 1"
                                              d="M3.4,1.7A1.7,1.7,0,1,1,1.7,0h0A1.7,1.7,0,0,1,3.4,1.7Z"
                                              transform="translate(3.882 6.781)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_3" data-name="Stroke 3" d="M0,0H5.792V1.7"
                                              transform="translate(7.28 8.479)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_5" data-name="Stroke 5" d="M.5,1.7V0"
                                              transform="translate(9.979 8.479)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_7" data-name="Stroke 7"
                                              d="M0,8.479C0,2.12,2.12,0,8.479,0s8.479,2.12,8.479,8.479-2.12,8.479-8.479,8.479S0,14.838,0,8.479Z"
                                              fill="none" stroke="#9498ac" stroke-linecap="round"
                                              stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                    </g>
                                </svg>
                            </div>
                            <button type="button" class="btn hide_show icon_password">
                                <i class="tio-hidden_outlined"></i>
                            </button>
                        </div>

                        <label for="pass">변경할 비밀번호</label>
                    </div>
                </div>
                <div class="margin-b-30">
                    <div class="form-group input-lined lined__iconed">
                        <div class="input_group">
                            <input type="password" name="new_password2" class="form-control" placeholder="confirm password" required="">
                            <div class="icon">
                                <svg id="Iconly_Curved_Password" data-name="Iconly/Curved/Password"
                                     xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22">
                                    <g id="Password" transform="translate(2.521 2.521)">
                                        <path id="Stroke_1" data-name="Stroke 1"
                                              d="M3.4,1.7A1.7,1.7,0,1,1,1.7,0h0A1.7,1.7,0,0,1,3.4,1.7Z"
                                              transform="translate(3.882 6.781)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_3" data-name="Stroke 3" d="M0,0H5.792V1.7"
                                              transform="translate(7.28 8.479)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_5" data-name="Stroke 5" d="M.5,1.7V0"
                                              transform="translate(9.979 8.479)" fill="none" stroke="#9498ac"
                                              stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
                                              stroke-width="1.5" />
                                        <path id="Stroke_7" data-name="Stroke 7"
                                              d="M0,8.479C0,2.12,2.12,0,8.479,0s8.479,2.12,8.479,8.479-2.12,8.479-8.479,8.479S0,14.838,0,8.479Z"
                                              fill="none" stroke="#9498ac" stroke-linecap="round"
                                              stroke-linejoin="round" stroke-miterlimit="10" stroke-width="1.5" />
                                    </g>
                                </svg>
                            </div>

                        </div>

                        <label>비밀번호 확인</label>
                    </div>
                </div>

            </form>

        </section>

        <div class="buttons__footer text-center">
            <div class="env-pb">
                <button class="btn bg-primary rounded-pill btn__default" id="password_btn"
                style="margin-bottom: 50px">
                    <span class="color-white">Save Changes</span>
                    <div class="icon rounded-circle">
                        <i class="tio-chevron_right"></i>
                    </div>
                </button>
            </div>
        </div>

    </div>





</div>
</body>
</html>
<script>
    let password_form = {
        init: function () {
            $('#password_btn').click(function () {
                password_form.send();
            });
        },
        send: function () {
            let currentPassword = $('input[name="current_password"]').val();
            let newPassword = $('input[name="new_password"]').val();
            let confirmPassword = $('input[name="new_password2"]').val();

            if (currentPassword !== '${logincust.custPwd}') {
                alert('비밀번호를 확인해주세요.');
            } else if (newPassword !== confirmPassword) {
                alert('새로운 비밀번호를 동일하게 입력해주세요.');
            } else {
                $('#password_form').attr({
                    'action': '/cust/passwordImpl',
                    'method': 'post'
                });
                $('#password_form').submit();
            }
        }
    };

    $(document).ready(function () {
        password_form.init();
    });

</script>