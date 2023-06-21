<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div id="wrapper">
    <div id="content">
        <!-- Start main_haeder -->
        <header class="main_haeder header-sticky multi_item">
            <div class="em_side_right">
                <a class="rounded-circle d-flex align-items-center text-decoration-none" href="/ticket/all">
                    <i class="tio-chevron_left size-24 color-text"></i>
                    <span class="color-text size-14">Back</span>
                </a>
            </div>
        </header>
        <!-- End.main_haeder -->

        <section class="padding-t-70 components_page padding-b-30">
            <c:choose>
                <c:when test="${relist == null}">
                    <div class="emTitle_co padding-20">
                        <h2 class="size-16 weight-500 color-secondary mb-1">후기가 없습니다.</h2>
                    </div>
                </c:when>
                <c:otherwise>
                    <input type="hidden" id="gymNo" value="${regymNo}">
                    <!-- Start title -->
                    <div class="emTitle_co padding-20">
                        <h2 class="size-16 weight-500 color-secondary mb-1">${regymName}</h2>
                        <p class="size-12 color-text m-0">헬쓱이 후기</p>
                    </div>
                    <!-- End. title -->
                    <div class="pt_simpleDetails m-0 py-2 rounded-0 emBlock__border">
                        <div class="em_bodyinner">
                            <div class="embkRateCustomer">
                                <div class="emBoxRating">
                                    <div class="row">
                                        <div class="col-4">
                                            <div class="item_rate">
                                                <span class="noRate" style="font-size: 40px">${review_avg}</span>
                                                <div class="">
                                                    <p class="rateCutome">평점</p>
                                                    <div class="emPatternRate">
                                                        <c:forEach var="i" begin="1" end="5">
                                                            <span class="ico ${i <= Math.round(review_avg) ? '_rated' : ''}"></span>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-8">
                                            <div class="progress__rate">

                                                    <%--                                                    <div class="item">--%>
                                                    <%--                                                        <div class="progress">--%>
                                                    <%--                                                            <div class="progress-bar" role="progressbar"--%>
                                                    <%--                                                                 style="width: 70%"--%>
                                                    <%--                                                                 aria-valuenow="70" aria-valuemin="0"--%>
                                                    <%--                                                                 aria-valuemax="100">--%>
                                                    <%--                                                            </div>--%>
                                                    <%--                                                        </div>--%>
                                                    <%--                                                        <span class="txt">5</span>--%>
                                                    <%--                                                        <span class="circle"></span>--%>
                                                    <%--                                                    </div>--%>
                                                    <%--                                                    <div class="item">--%>
                                                    <%--                                                        <div class="progress">--%>
                                                    <%--                                                            <div class="progress-bar" role="progressbar"--%>
                                                    <%--                                                                 style="width: 30%"--%>
                                                    <%--                                                                 aria-valuenow="30" aria-valuemin="0"--%>
                                                    <%--                                                                 aria-valuemax="100">--%>
                                                    <%--                                                            </div>--%>
                                                    <%--                                                        </div>--%>
                                                    <%--                                                        <span class="txt">4</span>--%>
                                                    <%--                                                        <span class="circle"></span>--%>
                                                    <%--                                                    </div>--%>
                                                    <%--                                                    <div class="item">--%>
                                                    <%--                                                        <div class="progress">--%>
                                                    <%--                                                            <div class="progress-bar" role="progressbar"--%>
                                                    <%--                                                                 style="width: 8%"--%>
                                                    <%--                                                                 aria-valuenow="8" aria-valuemin="0"--%>
                                                    <%--                                                                 aria-valuemax="100">--%>
                                                    <%--                                                            </div>--%>
                                                    <%--                                                        </div>--%>
                                                    <%--                                                        <span class="txt">3</span>--%>
                                                    <%--                                                        <span class="circle"></span>--%>
                                                    <%--                                                    </div>--%>
                                                    <%--                                                    <div class="item">--%>
                                                    <%--                                                        <div class="progress">--%>
                                                    <%--                                                            <div class="progress-bar" role="progressbar"--%>
                                                    <%--                                                                 style="width: 5%"--%>
                                                    <%--                                                                 aria-valuenow="5" aria-valuemin="0"--%>
                                                    <%--                                                                 aria-valuemax="100">--%>
                                                    <%--                                                            </div>--%>
                                                    <%--                                                        </div>--%>
                                                    <%--                                                        <span class="txt">2</span>--%>
                                                    <%--                                                        <span class="circle"></span>--%>
                                                    <%--                                                    </div>--%>
                                                    <%--                                                    <div class="item">--%>
                                                    <%--                                                        <div class="progress">--%>
                                                    <%--                                                            <div class="progress-bar" role="progressbar"--%>
                                                    <%--                                                                 style="width:15%"--%>
                                                    <%--                                                                 aria-valuenow="15" aria-valuemin="0"--%>
                                                    <%--                                                                 aria-valuemax="100">--%>
                                                    <%--                                                            </div>--%>
                                                    <%--                                                        </div>--%>
                                                    <%--                                                        <span class="txt">1</span>--%>
                                                    <%--                                                        <span class="circle"></span>--%>
                                                    <%--                                                    </div>--%>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="emCommentCusomers">
                                <div class="title"></div>
                                <!-- item -->
                                <c:forEach var="obj" items="${relist}">
                                    <div class="itemUser">
                                        <div class="media">
                                            <img class="x_img" src="" alt="프로필사진">
                                            <div class="media-body">
                                                <div class="txt_details">
                                                    <h4 class="username">${obj.custName}
                                                        <time>${obj.reviewDate}</time>
                                                    </h4>
                                                    <div class="emPatternRate">
                                                        <c:forEach var="i" begin="1" end="5">
                                                            <span class="ico ${i <= obj.reviewRate ? '_rated' : ''}"></span>
                                                        </c:forEach>
                                                            <%--                                                        <span class="ico _rated"></span>--%>
                                                            <%--                                                        <span class="ico _rated"></span>--%>
                                                            <%--                                                        <span class="ico _rated"></span>--%>
                                                            <%--                                                        <span class="ico"></span>--%>
                                                            <%--                                                        <span class="ico"></span>--%>
                                                    </div>
                                                    <p class="txtComment">
                                                            ${obj.reviewContents}
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </section>
    </div>
</div>


<script>
    $(document).ready(function () {
        let gymNo = $('#gymNo').val();

        $.ajax({
            url     : '/review/usersByrate',
            type    : 'GET',
            data    : {gymNo: gymNo},
            dataType: 'json',
            success : function (response) {
                console.log("==" + response);
                createProgressBars(response);
            },
            error   : function (xhr, status, error) {
                console.log(error);
            }
        });
    });

    // JSON 데이터를 받아온 후 프로그래스 바 생성 및 표시하는 함수
    function createProgressBars(data) {
        var progressBarContainer = document.querySelector('.progress__rate');

        // 데이터를 순회하면서 프로그래스 바 생성
        data.forEach(function (item) {
            var progressBar = document.createElement('div');
            progressBar.classList.add('item');

            var progress = document.createElement('div');
            progress.classList.add('progress');

            var progressBarInner = document.createElement('div');
            progressBarInner.classList.add('progress-bar');
            progressBarInner.setAttribute('role', 'progressbar');
            progressBarInner.style.width = item.percentage + '%';
            progressBarInner.setAttribute('aria-valuenow', item.percentage);
            progressBarInner.setAttribute('aria-valuemin', '0');
            progressBarInner.setAttribute('aria-valuemax', '100');

            progress.appendChild(progressBarInner);
            progressBar.appendChild(progress);

            var text = document.createElement('span');
            text.classList.add('txt');
            text.textContent = item.rate;
            progressBar.appendChild(text);

            var circle = document.createElement('span');
            circle.classList.add('circle');
            progressBar.appendChild(circle);

            progressBarContainer.appendChild(progressBar);
        });
    }

</script>