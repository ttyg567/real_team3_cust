package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Cust {

    private int custNo; // 개인회원번호
    private String custEmail; // 이메일 ㅇ
    private String custPwd; // 패스워드 ㅇ
    private String custName; // 이름(닉네임) ㅇ
    private String custPhone; // 휴대폰번호 ㅇ
    private int custBirth; // 출생년도 ㅇ
    private String custGender; // 성별 ㅇ // 0: 남자, 1: 여자
    private String custSido; // 관심시도
    private String custSigungu; // 관심시군구
    private String sportsType; // 관심운동종목 ㅇ // 1:헬스, 2:PT, 3:크로스핏, 4:요가, 5:필라테스, 6:골프, 7:수영
    private String sportsClasstype; // 클래스형태 ㅇ // 1:1:1수업, 2:그룹수업, 3:자유수업
    private String custStatus; // 상태 // 1:활동, 2:중지, 3:탈퇴
    private String custSocialmedia; // 소셜미디어여부 // 0:부, 1:여
    private String custSnstype; // SNS종류 // 0:부, 1:카카오
    private String custJoindate; // 가입일시

    // insert
    public Cust(String custEmail, String custPwd, String custName, String custPhone, int custBirth, String custGender, String custSido, String custSigungu, String sportsType, String sportsClasstype, String custSocialmedia, String custSnstype) {
        this.custEmail = custEmail;
        this.custPwd = custPwd;
        this.custName = custName;
        this.custPhone = custPhone;
        this.custBirth = custBirth;
        this.custGender = custGender;
        this.custSido = custSido;
        this.custSigungu = custSigungu;
        this.sportsType = sportsType;
        this.sportsClasstype = sportsClasstype;
        this.custSocialmedia = custSocialmedia;
        this.custSnstype = custSnstype;
    }

    // modify
    public Cust(String custEmail, String custName, String custPhone, int custBirth, String custGender) {
        this.custEmail = custEmail;
        this.custName = custName;
        this.custPhone = custPhone;
        this.custBirth = custBirth;
        this.custGender = custGender;
    }
}
