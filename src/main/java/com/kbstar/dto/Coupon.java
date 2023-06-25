package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Coupon {

    private Integer couponNo;
    private String adminId;
    private Double couponRate;
    private String couponIsdate;
    private String couponExdate;
    private String couponUsed;
    private Integer custNo;
    private String couponName;
    private Integer couponAmount;
    private String sendDate;

    // 추가
    private String custName;

    // 추가
    private String couponCode;
    private Integer groupboardNo;
    private String custToken;

    // 추가
    private String gymNo;
    private Integer ticketNo;
    private String gymName;
    private String ticketName;
    private String groupboardTitle;
    private String groupboardImgname;

    // 결제창에서 보여주기 위해 하나 만듦
    private String myCoupon;
    private int ticketCost;
    private int ticketDiscount;
    private int ticketPrice;

}
