// 날짜 포맷을 변환
var calFunc = {

    calcDate: function (arg, calendar) {
        var rObj = new Object();
        var start = null;
        var end = null;
        var allDay = arg.allDay;
        var startDisp = null;
        var endDisp = null;
        var id = null;
        var xcontent = null;
        var title = null;
        //============================== date get / set ======================================

        if (arg.id != "" && arg.id != null && arg.id != undefined) id = arg.id;
        if (arg.title != "" && arg.title != null && arg.title != undefined) title = arg.title;
        if (arg.extendedProps != undefined) {
            if (arg._def.extendedProps.xcontent != "" && arg._def.extendedProps.xcontent != null && arg._def.extendedProps.xcontent != undefined) {
                xcontent = arg._def.extendedProps.xcontent;
            }
        }

        if (allDay) { //하루종일이면
            var start = arg.start.toISOString().slice(0, 10); //returnCdate(calendar,arg.start);
            var end = null;
            if (arg.end != "" && arg.end != null && arg.end != undefined) {
                end = arg.end.toISOString().slice(0, 10);  //실제 데이터는 날짜를 하루 빼지 않는다
            }
            if (start == end) end = null;  //같은날이면 end날짜 없음

            startDisp = start;
            if (end != null) endDisp = calFunc.dateRel(arg.end.toISOString().slice(0, 10)); //알릴때만 날짜 하루 빼기
        } else {//시간이 같이 들어오면
            start = arg.start.toISOString();
            if (arg.end != "" && arg.end != null && arg.end != undefined) {
                end = arg.end.toISOString();
            }
            startDisp = calFunc.returnCdate(calendar, arg.start);
            if (end != null) endDisp = calFunc.returnCdate(calendar, arg.end);
        }
        rObj.start = start;
        rObj.end = end;

        rObj.startDisp = startDisp;
        rObj.endDisp = endDisp;
        rObj.id = id;
        rObj.xcontent = xcontent;
        rObj.title = title;
        //============================== date get / set ======================================
        return rObj;
    },

    dateRel: function (date) {
        var selectDate = date.split("-");
        var changeDate = new Date();
        changeDate.setFullYear(selectDate[0], selectDate[1] - 1, selectDate[2] - 1);

        var y = changeDate.getFullYear();
        var m = changeDate.getMonth() + 1;
        var d = changeDate.getDate();

        if (m < 10) {
            m = "0" + m;
        }

        if (d < 10) {
            d = "0" + d;
        }
        var resultDate = y + "-" + m + "-" + d;
        return resultDate;
    },

    returnCdate: function (cal, time) {
        return cal.formatDate(time, {
            month   : 'long',
            year    : 'numeric',
            day     : 'numeric',
            hour    : 'numeric',
            minute  : 'numeric',
            timeZone: 'Asia/Seoul',
            locale  : 'ko'
        });
    }

};

function set_time(item) {
    // 역직렬화
    let itemObject = JSON.parse(item);

    // 수업 시간 set
    let time = itemObject.classTime;
    console.log("시간 확인: " + time);
    $('#ttime').text(time);

    // 수업 상세 내용 set
    $('#className').val(itemObject.className); // 수업명
    $("#trainerNo").val(itemObject.trainerNo); // 트레이너
    $("#trainerNo option[value='" + itemObject.trainerNo + "']").text(itemObject.trainerName); // 트레이너

    // $("#classDate").val(itemObject.classDate).trigger("change");

    $("#classDate").val(itemObject.classDate); // 수업일시
    console.log("====" + itemObject.sportsClasstype + "====" + typeof itemObject.sportsClasstype);
    if (itemObject.sportsClasstype.replace(" ", "") === "1") {
        $("#sportsClasstype").val("1");
        $("#sportsClasstype option[value='1']").text("1:1수업");
    } else if (itemObject.sportsClasstype.replace(" ", "") === "2") {
        $("#sportsClasstype").val("2");
        $("#sportsClasstype option[value='2']").text("그룹수업");
    } else {
        $("#sportsClasstype").val("3");
        $("#sportsClasstype option[value='3']").text("자유수업");
    }
    $('#classStarttime').val(itemObject.classStarttime); // 수업시작시간
    $("#classEndtime").val(itemObject.classEndtime); // 수업종료시간
    $("#classMaximum").val(itemObject.classMaximum); // 최대 인원
    $("#classJoin").val(itemObject.classJoin); // 참여 인원
    $("#classFullbooked").val(itemObject.classFullbooked); // 마감 여부

    // classNo set
    $("#classNo").val(itemObject.classNo); // classNo
}

// 스크롤 안됨. 나중에 해결하기 //
// var classDetailDiv = $("#class_detail");
// var scrollPosition = classDetailDiv.offset().top; // #class_detail의 위치를 가져옵니다.
// $('html, body').animate({ scrollTop: scrollPosition }, 'slow'); // 해당 위치로 스크롤 이동합니다.
//
// if (isScrollable(classDetailDiv)) {
//     console.log("스크롤 가능한 상태입니다.");
// } else {
//     console.log("스크롤 불가능한 상태입니다.");
// }
///////////////////////////////////////////////////////////////


function isScrollable(element) {
    console.log(element.scrollHeight + ",    ");
    console.log(element.clientHeight);
    return element.scrollHeight > element.clientHeight;
}

// 예약 로직을 처리하는 함수
function reserveClass(circleCheck) {
    // 클릭한 circle_check 요소의 부모 요소인 li.item을 찾습니다
    var listItem = circleCheck.closest('.item');

    // listItem에서 필요한 정보를 가져와서 예약 처리를 수행합니다
    var classNo = listItem.find('#classNo').val();
    var className = listItem.find('.size-15').text();
    var gymName = listItem.find('#gymName').text();
    var trainerName = listItem.find('#trainerName').text();
    var classTime = listItem.find('#classTime').text();
    var sportsType = listItem.find('#sportsType').text();
    var sportsClasstype = listItem.find('#sportsClasstype').text();


    // 예약 처리 로직을 작성합니다
    // 여기서는 간단히 console.log로 예약 정보를 출력하는 것으로 대체합니다
    console.log("=== 예약 클래스를 다음과 같이 출력 ==== ");
    // console.log('고객고유번호:', custNo);
    console.log('수업고유번호:', classNo);
    console.log('수업명:', className);
    console.log('센터:', gymName);
    console.log('강사:', trainerName);
    console.log('수업시간:', classTime);
    console.log('운동종목:', sportsType);
    console.log('수업형태:', sportsClasstype);

}

var calendar = new FullCalendar.Calendar(document.getElementById("calendar_reserve"), {

    /** 구글 공휴일 지정 **/
    googleCalendarApiKey: "AIzaSyD1IVA95RXsFpj3FngyLcClyP-RE4axSQw",
    eventSources        : [
        {
            googleCalendarId: 'ko.south_korea.official#holiday@group.v.calendar.google.com'
            , color         : 'white'   // an option!
            , textColor     : 'red' // an option!
        }
    ],
    /************************ 추가 지정 *************************/
    locale              : 'ko',
    timeZone            : 'Asia/Seoul', // 반드시 세팅해줄 것!
    allDay              : false,
    expandRows          : true, // 화면에 맞게 높이 재설정
    nowIndicator        : true, // 현재 시간 마크
    selectLongPressDelay: 1000, // 폰에서 손가락으로 눌렀을 때
    /***********************************************************/

    contentHeight: 'auto',
    initialView  : "dayGridMonth",
    // initialView: 'timeGridWeek',
    headerToolbar: {
        start : 'title', // will normally be on the left. if RTL, will be on the right
        center: '',
        end   : 'today prev,next' // will normally be on the right. if RTL, will be on the left
    },
    selectable   : true, // 달력 일자 드래그 설정가능
    editable     : true, // 수정 가능
    initialDate  : '2023-06-05',

    /************************ 추가 지정 *************************/
    // eventColor : 'green',
    // themeSystem: 'materia',
    // eventClick : function (info) {
    //    console.log(info);
    // },
    eventAdd   : function (obj) { // 이벤트가 추가되면 발생하는 이벤트
        console.log(obj);
    },
    eventChange: function (obj) { // 이벤트가 수정되면 발생하는 이벤트
        console.log(obj);
    },
    eventRemove: function (obj) { // 이벤트가 삭제되면 발생하는 이벤트
        console.log(obj);
    },

    // 해당 일자를 누르면 수업 시간표가 나열된다.
    dateClick: function (info) {

        const date = new Date();

        const year = date.getFullYear();
        const month = ('0' + (date.getMonth() + 1)).slice(-2);
        const day = ('0' + date.getDate()).slice(-2);
        const dateStr = year + '-' + month + '-' + day;

        $('#tdate').text("수업 예약");
        // $('#ttime').text('');

        // 세션에 담긴 custNo 추출
        var custNo = $('#custNo').val();
        console.log("고객넘버는 " + custNo);

        $.ajax({
            url: '/class/getMyclass',
            dataType: 'json',
            data: {
                tdate: info.dateStr
            }
        }).done(function(data) {
            var itemList = data;
            var listHTML = '';

            if (itemList.length === 0) {
                let modal = $('#mdllAdd_Address');
                listHTML = '<li class="item">예약 가능한 수업이 없습니다.</li>';
            } else {
                for (let i = 0; i < itemList.length; i++) {
                    let item = itemList[i];

                    // 숫자에 따라 운동 종목 지정
                    let sportsTypeText = '';
                    if (item.sportsType.trim() === "1") {
                        sportsTypeText = '헬스';
                    } else if (item.sportsType.trim() === "2") {
                        sportsTypeText = 'PT';
                    } else if (item.sportsType.trim() === "3") {
                        sportsTypeText = '크로스핏';
                    } else if (item.sportsType.trim() === "4") {
                        sportsTypeText = '요가';
                    } else if (item.sportsType.trim() === "5") {
                        sportsTypeText = '필라테스';
                    } else if (item.sportsType.trim() === "6") {
                        sportsTypeText = '골프';
                    } else if (item.sportsType.trim() === "7") {
                        sportsTypeText = '수영';
                    } else {
                        sportsTypeText = '기타';
                    }

                    // 숫자에 따라 수업 형태 지정
                    let sportsClasstypeText = '';
                    if (item.sportsClasstype.trim() === "1") {
                        sportsClasstypeText = '1:1수업';
                    } else if (item.sportsClasstype.trim() === "2") {
                        sportsClasstypeText = '그룹수업';
                    } else if (item.sportsClasstype.trim() === "3") {
                        sportsClasstypeText = '자유수업';
                    } else {
                        sportsClasstypeText = '기타';
                    }

                    listHTML += '<li class="item">';
                    listHTML += '<div class="personal__info">';
                    listHTML += '<h1 class="size-15 color-secondary weight-400">수업명: ' + item.className + '</h1>';
                    listHTML += '<span class="size-13 color-text weight-400 d-inline-block" id="gymName">센터: ' + item.gymName + ',' + '</span>&nbsp;&nbsp;';
                    listHTML += '<span class="size-13 color-text weight-400 d-inline-block" id="trainerName">강사: ' + item.trainerName + '</span>';
                    listHTML += '<p class="size-13 color-text weight-400" id="classTime">수업시간: ' + item.classTime + '</p>';
                    listHTML += '<span class="size-13 color-text weight-400 d-inline-block" id="sportsType">운동종목: ' + sportsTypeText + ',' + '</span>&nbsp;&nbsp;';
                    listHTML += '<span class="size-13 color-text weight-400 d-inline-block" id="sportsClasstype">수업형태: ' + sportsClasstypeText + '</span>';
                    listHTML += '<input type="hidden" id="classNo" value="' + item.classNo + '"/>'; // hidden으로 classNo 추가
                    listHTML += '</div>';
                    listHTML += '<div class="areaRight">';
                    listHTML += '<span class="circle_check"></span>';
                    listHTML += '</div>';
                    listHTML += '</li>';
                }
            }

            // 생성된 요소를 ul 요소에 추가
            $('.nav__listAddress').html(listHTML);

            // 모달창 열기
            $('#mdllAdd_Address').modal('show');
        });

        // // circle_check 요소에 클릭 이벤트 핸들러 추가
        // $('.modal-body').on('click', '.circle_check', function () {
        //     $(this).toggleClass('active');
        //
        //     // 예약 로직을 수행하는 함수 호출
        //     // reserveClass($(this));
        // });

        // 모달 창 열릴 때 클릭 이벤트 핸들러 추가
        $(document).on('shown.bs.modal', '#mdllAdd_Address', function () {
            $('.circle_check').click(function () {
                console.log("클릭되었습니다.");

                if ($(this).hasClass('active')) {
                    // 이미 활성화된 요소를 클릭한 경우
                    $(this).removeClass('active');
                } else {
                    // 비활성화된 요소를 클릭한 경우
                    $('.circle_check').removeClass('active');
                    $(this).addClass('active');
                }
            });
        });

        // 모달 창 닫힐 때 클릭 이벤트 핸들러 제거
        $(document).on('hidden.bs.modal', '#mdllAdd_Address', function () {
            console.log("모달 창 닫혔다 !! ");
            $('.circle_check').off('click');
        });

// 예약 버튼 눌렀을 때
        $(document).on('click', '#reserve_btn', function () {
            // 정보가 있는지 확인
            if ($('.circle_check.active').length === 0) {
                alert("예약하실 수업을 선택해주세요."); // 정보가 없을 경우 alert 창을 띄웁니다.
                return;
            }

            // 버튼 비활성화
            $(this).prop('disabled', true);

            let classNo = $('.circle_check.active').closest('.item').find('#classNo').val();

            // GET 요청으로 예약 정보를 서버에 전송합니다
            $.ajax({
                url: '/class/reserve',
                type: 'GET',
                data: { classNo: classNo },
                success: function (response) {
                    if (response === "success") {
                        alert("예약이 완료되었습니다");
                        $('#mdllAdd_Address').modal('hide'); // 모달 창을 닫습니다
                        window.location.href = "/class/my_reservation"; // 페이지 이동
                    } else {
                        alert("예약에 실패하였습니다");
                        $('#mdllAdd_Address').modal('hide'); // 모달 창을 닫습니다
                    }
                },
                error: function (error) {
                    alert("예약에 실패하였습니다");
                    $('#mdllAdd_Address').modal('hide');
                },
                complete: function () {
                    // 버튼 다시 활성화
                    $('#reserve_btn').prop('disabled', false);
                }
            });
        });
    },

    // cal4 참고
    events: '/class/getClassdata', // ajax 호출하면 된다. 배열로 주기만 하면 된다.

    views: {
        month     : {
            titleFormat: {
                month: "long",
                year : "numeric"
            }
        },
        agendaWeek: {
            titleFormat: {
                month: "long",
                year : "numeric",
                day  : "numeric"
            }
        },
        agendaDay : {
            titleFormat: {
                month: "short",
                year : "numeric",
                day  : "numeric"
            }
        }
    },
});

calendar.render();
