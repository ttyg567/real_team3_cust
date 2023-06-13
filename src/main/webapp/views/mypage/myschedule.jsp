<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
    .fc-day-sun a {
        color: red;
        color: red;
    }

    .fc-day-sat a {
        color: blue;
    }
</style>


<div class="col-sm-8  text-left ">
    <div class="container">
        <div class="row content">
            <div class="col-sm-2  text-left ">
                <div class="container">
                    <h6>일자: <span id="tdate"></span></h6>
                    <h6>시간: <span id="ttime"></span></h6>
                    <h6 id="select_time">시간선택:<span id="stime"></span></h6>
                    <h6 id="next_btn"><a href="#" class="btn btn-sm btn-primary ml-lg-4">예약</a></h6>
                </div>
            </div>
            <div class="col-sm-6  text-left ">
                <div id='calendar-container'>
                    <div id='calendar'></div>
                </div>
            </div>
        </div>
    </div>
</div>