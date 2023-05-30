package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Gym {
    private int gymNo;
    private String gymMasterCk; //0:부, 1:여, 처음 만드는 것은 1
    private String gymEmail;
    private String gymPwd;
    private String gymName;
    private String gymPhone;
    private String gymZipcode;
    private String gymAddress1;
    private String gymAddress2;
    private String gymAddress3;
    private String gymRegiimgname;
    private String gymReginumber;
    private String gymTitle;
    private String gymContents;
    private String gymMarketing; //0:미사용, 1: 사용
    private String status;// 1:가입완료, 2:승인완료, 3:탈퇴
    private String approvedAdmID; //승인할때 입력
}
