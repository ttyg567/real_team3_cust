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

var calendar = new FullCalendar.Calendar(document.getElementById("calendar_check"), {

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

    // events: '/class/getClassdata', // ajax 호출하면 된다. 배열로 주기만 하면 된다.

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

    dayRender: function (info) {
        // 날짜 셀의 데이터를 가져와서 조건에 따라 이미지를 삽입합니다.
        var date = info.date;
        getEventData(date, function(eventData) {
            if (eventData.trim() === 'success') {
                var cellElement = info.el;
                var imageElement = document.createElement('img');
                imageElement.src = '/img/exercise.png';
                cellElement.appendChild(imageElement);
            }
        });
    }
});

calendar.on('dayRender', function (info) {
    var date = info.date;
    getEventData(date, function(eventData) {
        if (eventData.trim() === 'success') {
            var cellElement = info.el;
            var imageElement = document.createElement('img');
            imageElement.src = '/img/exercise.png';
            cellElement.appendChild(imageElement);
        }
    });
});

function getEventData(date, callback) {

    var custNo = $('#custNo').val();
    console.log("고객넘버는 " + custNo);

    $.ajax({
        url: '/mypage/getCompleted',
        dataType: 'json',
        data: {
            tdate: date
        }
    }).done(function (data) {
        console.log("운동 완료된 데이터를 찍어보겠습니다");
        console.log(data);
        callback(data);
    }).fail(function () {
        callback("fail");
    });

}


calendar.render();