package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

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

    /* center 관련 이미지 등록(GymImg) */
    private int gymImgNo; // 센터이미지번호(시퀀스)
    private String gymImgname; // 센터이미지명
    private String gymImgdetailCk; // 디테일 이미지 여부 // 0: 디테일 X, 1: 디테일 ㅇ

    /* center 관련 운동종목 등록(Gymtype) */
    private int typeNo; // 종목일련번호(시퀀스)
    private String sportsType; // 운동종목구분

    private MultipartFile[] gymimg_notdetail; // 디테일 이미지 X
    private MultipartFile gymimg_isdetail; // 디테일 이미지 O
}
