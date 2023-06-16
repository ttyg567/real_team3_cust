package com.kbstar.dto;


import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class MySchedule {

    private Integer myscheduleNo;
    private Integer classNo;
    private Integer purchaseNo;
    private String scheduleCompleted;
    private String sheduleCanceled; // db에 c 빠져있음
    private Integer custNo;

    // 해당일자 예약 내역 및 운동여부 완료 추출을 위해 변수 추가
    private String className;
    private String gymName;
    private String trainerName;
    private String classDate; // 수업일시
    private String classStarttime; // 수업시작시간
    private String classEndtime; // 수업종료시간
    private String sportsType; // 운동종목구분
    private String sportsClasstype; // 운동수업형태
}
