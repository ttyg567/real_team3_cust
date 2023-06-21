package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Review {

    private Integer reviewNo;
    private Integer reviewRate;
    private Integer custNo;
    private String reviewDate;
    private String reviewContents;
    private Integer purchaseNo;

    private String custName;
    private Integer gymNo;
    private String gymName;

    private float averageRate;
    private Integer users;
    private float percentage; // 평점별 백분율

}
