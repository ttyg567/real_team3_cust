package com.kbstar.dto;


import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class MySchedule {

    private Integer classNo;
    private Integer purchaseNo;
    private String scheduleCompleted;
    private String sheduleCanceled;
    private Integer custNo;

    // 해당일자 운동여부 완료 추출을 위해 변수 추가
    private String classDate; // 수업일시

}
