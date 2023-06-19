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

        if (allDay) {//하루종일이면
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

var calendar = new FullCalendar.Calendar(document.getElementById("calendar_check"), {

    /** 구글 공휴일 지정 **/
    // googleCalendarApiKey: "AIzaSyD1IVA95RXsFpj3FngyLcClyP-RE4axSQw",
    // eventSources        : [
    //     {
    //         googleCalendarId: 'ko.south_korea.official#holiday@group.v.calendar.google.com'
    //         , color         : 'white'   // an option!
    //         , textColor     : 'red' // an option!
    //     }
    // ],
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
    eventColor : 'purple',
    themeSystem: 'materia',

    eventClick : function (info) {
        var eventObj = info.event;
        console.log("로그" + eventObj.title);
        var classNo = eventObj.extendedProps.classNo; // classNo 가져오기
        var purchaseNo = eventObj.extendedProps.purchaseNo; // purchaseNo 가져오기
        console.log("classNo: " + classNo);
        console.log("purchaseNo: " + purchaseNo);


        if (eventObj.url) {
            alert(
                'Clicked ' + eventObj.title + '.\n' +
                'Will open ' + eventObj.url + ' in a new tab'
            );

            window.open(eventObj.url);

            info.jsEvent.preventDefault(); // prevents browser from following link in current tab.
        } else {
            // alert("["+eventObj.title+"]"+" 날짜를 선택")
            // 예약 취소 모달을 열고 classNo를 전달
            openCancelModal(classNo, purchaseNo);

        }
    },
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

        $('#tdate').text(info.dateStr);

        $.ajax({
            url     : '/class/getReservedclasstime',
            dataType: 'json',
            data    : {tdate: info.dateStr}
        }).done(function (data) {
            let arr = data;
            let html = '';
            $(arr).each(function(index, item) {
                console.log(item);
                var itemString = JSON.stringify(item); // 직렬화
                console.log("json 문자열 확인: " + itemString); // 직렬화 확인
            });
        });
    },

    events: '/class/getReservedclass', // ajax 호출하면 된다. 배열로 주기만 하면 된다.

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

// 예약 취소 모달 열기
function openCancelModal(classNo, purchaseNo) {

    // 모달 열기
    $('#mdllRemoveStand').modal('show');

    // Remove 버튼 클릭 시 AJAX 호출
    var removeButton = document.querySelector('#mdllRemoveStand .modal-footer a');
    removeButton.addEventListener('click', function (event) {
        event.preventDefault(); // 기본 동작 방지

        // AJAX 호출
        $.ajax({
            url: '/class/cancel',
            type: 'GET',
            data: { classNo: classNo,
                purchaseNo : purchaseNo},
            success: function (response) {
                if (response === "success") {
                    alert("예약취소가 완료되었습니다");
                    $('#mdllRemoveStand').modal('hide'); // 모달 창을 닫습니다
                    window.location.href = "/class/my_reservation"; // 페이지 이동
                } else {
                    alert("예약취소에 실패하였습니다");
                    $('#mdllRemoveStand').modal('hide'); // 모달 창을 닫습니다
                }
            },
            error: function (error) {
                alert("예약취소에 실패하였습니다");
                $('#mdllRemoveStand').modal('hide'); // 모달 창을 닫습니다
            },
            complete: function () {
                // AJAX 요청 완료 후 필요한 작업을 수행할 수 있습니다.
            }
        });
    });
}