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

}
