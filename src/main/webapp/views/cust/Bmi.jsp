<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<style>
    /* Custom styles for input fields */
    input[type="text"] {
        padding: 8px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        width: 200px; /* Adjust the width as needed */
        margin-bottom: 10px;
    }
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh; /* Adjust the height as needed */
    }
    /* Custom styles for the button */
    #btn {
        padding: 10px 20px;
        font-size: 16px;
        background-color: #337ab7;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    #btn:hover {
        background-color: #286090;
    }

    /* Custom styles for the result div */
    #result {
        margin-top: 20px;
        font-size: 18px;
        font-weight: bold;
    }
    .image-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>
<script>
    window.onload = () => {
        let button = document.querySelector("#btn");

        button.addEventListener("click", calculateBMI);
    };

    function calculateBMI() {
        let height = parseInt(document.querySelector("#height").value);
        let weight = parseInt(document.querySelector("#weight").value);
        let result = document.querySelector("#result");

        if (height === "" || isNaN(height)) {
            result.innerHTML = "키를 입력해 주세요!";
        } else if (weight === "" || isNaN(weight)) {
            result.innerHTML = "몸무게를 입력해 주세요!";
        } else {
            let bmi = (weight / ((height * height) / 10000)).toFixed(2);

            if (bmi <= 18.5) {
                result.innerHTML = 'bmi지수는 <span>' + bmi + '</span> 로, <br> 저체중이네요' +
                    '<br> 영양분 섭취도 놓치지마세용~';
            } else if (bmi <= 23) {
                result.innerHTML = 'bmi지수는 <span>' + bmi + '</span> 로,<br>  정상이세요' +
                '<br> 딱 지금처럼만 !!';
            } else if (bmi <= 25) {
                result.innerHTML = 'bmi지수는  <span>' + bmi + '</span>로, <br> 과체중이세요'+
                  '<br> 운동을 더 열심히 !!';
            } else if (bmi <= 30) {
                result.innerHTML = 'bmi지수는  <span>' + bmi + '</span>로, <br> 비만이세요'  +
                  '<br> 운동을 더 열심히 !!';
            } else {
                result.innerHTML = 'bmi지수는  <span>' + bmi + '</span>로, <br>  고도비만이세요' +
                    '<br> 운동을 더 열심히 !!';
            }
        }
    }
</script>

<head>
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
    </script>
</head>
<body>
<div class="container">
    <header class="main_haeder header-sticky multi_item">
        <div class="em_side_right">
            <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/">
                <i class="tio-chevron_left size-24 color-text"></i>
            </a>
        </div>
        <div class="title_page">
                    <span class="page_name">
                        BMI 계산기
                    </span>
        </div>

    </header>
    <img src="/assets/img/bmiinfo.png" style="width: 100%; margin-top: -200px">
<%--    <h6 style="text-align: center">비만율을 체크하고 헬쓱을 유지하세요!</h6><br>--%>
<%--    <p style="font-size: 11px; line-height: 1.5;">--%>
<%--        <strong>BMI가 무엇인가요?</strong><br>--%>
<%--        체질량지수를 의미하는 지표로, 체중(kg)을 키의 제곱(㎡)으로 나눈 값을 통해 지방의 양을 추정하는 비만측정법입니다.<br>--%>
<%--        <br>--%>
<%--        <strong>신체지수에 의한 비만의 분류표</strong><br>--%>
<%--        - 정상: BMI 20~25<br>--%>
<%--        - 과체중(1도 비만): BMI 25~29.9<br>--%>
<%--        - 비만(2도 비만): BMI 30~40<br>--%>
<%--        - 고도비만: BMI 40.1 이상--%>
<%--    </p>--%>
    <section class="em__signTypeOne padding-t-20" >
          <p >키 (cm)</p>
          <input type="text" id="height">

          <p>몸무게 (kg)</p>
          <input type="text" id="weight">

            <button id="btn" class="btn color-white justify-content-center"
            style="text-align: center; background-color: blueviolet; color: white">계산하기</button>

          <div id="result"
          style="text-align: center">

          </div>

    </section>
    <div class="image-container" style="margin-top: -50px">
<%--        <img src="/assets/img/workout.gif" style="width: 100px">--%>
<%--        <img src="/assets/img/workout2.gif" style="width: 100px">--%>
    </div>
<%--    <img src="/assets/img/BMI.png" style="width: 300px; margin-top: -50px">--%>
</div>

</body>

</html>


