package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Groupboard {
    private int groupboardNo; // 게시글번호(pk) : 시퀀스
    private int custNo; // 개인회원번호(fk) : 시퀀스
    private int ticketNo; // 이용권번호(fk) : 시퀀스
    private String groupboardTitle; // 모집제목
    private String groupboardContents; // 모집내용
    private String groupboardImgname; // 게시글 대표이미지명
    private MultipartFile groupboardImgpath; // 게시글 대표이미지 경로(서버로 전송될 때 필요)
    private String categoryNo; // 카테고리번호 // 1: 헬스, 2: PT, 3: 필라테스, 4: 요가, 5: 크로스핏, 6: 골프, 7:수영
    private int expectMember; // 모집인원
    private int applicationMember; // 신청인원
    private int confirmMember; // 확정인원
    private String groupboardStatus; // 상태 // 1: 모집중, 2: 모집취소, 3: 신청중, 4: 신청취소, 5:신청취소, 5:확정
    private int boardViews; // 글 조회수
    private Date writeDate; // 글 작성일자

    // 알람 메세지 토큰 떄문에 추가
    private String custToken;

    // insert 2
    public Groupboard(int groupboardNo, int custNo, int ticketNo, String groupboardTitle, String groupboardContents, String groupboardImgname, String categoryNo, int expectMember, String groupboardStatus, Date writeDate, int boardViews,int gymNo,  String gymName) {
        this.groupboardNo = groupboardNo;
        this.custNo = custNo;
        this.ticketNo = ticketNo;
        this.groupboardTitle = groupboardTitle;
        this.groupboardContents = groupboardContents;
        this.groupboardImgname = groupboardImgname;
        this.categoryNo = categoryNo;
        this.expectMember = expectMember;
        this.groupboardStatus = groupboardStatus;
        this.writeDate = writeDate;
        this.boardViews = boardViews;
        this.gymNo = gymNo;
        this.gymName = gymName;
    }

    // update

    // insert 1
    public Groupboard(int groupboardNo, int custNo, int ticketNo, String groupboardTitle, String groupboardContents, String groupboardImgname, String categoryNo, int expectMember, int applicationMember, int confirmMember, int boardViews) {
        this.groupboardNo = groupboardNo;
        this.custNo = custNo;
        this.ticketNo = ticketNo;
        this.groupboardTitle = groupboardTitle;
        this.groupboardContents = groupboardContents;
        this.groupboardImgname = groupboardImgname;
        this.categoryNo = categoryNo;
        this.expectMember = expectMember;
        this.applicationMember = applicationMember;
        this.confirmMember = confirmMember;
        this.boardViews = boardViews;
    }
    public Groupboard(int groupboardNo, int custNo, int ticketNo, String groupboardTitle, String groupboardContents, String groupboardImgname,String categoryNo, int expectMember, int applicationMember, int confirmMember, String groupboardStatus, int boardViews, Date writeDate) {
        this.groupboardNo = groupboardNo;
        this.custNo = custNo;
        this.ticketNo = ticketNo;
        this.groupboardTitle = groupboardTitle;
        this.groupboardContents = groupboardContents;
        this.groupboardImgname = groupboardImgname;
        this.categoryNo = categoryNo;
        this.expectMember = expectMember;
        this.applicationMember = applicationMember;
        this.confirmMember = confirmMember;
        this.groupboardStatus = groupboardStatus;
        this.boardViews = boardViews;
        this.writeDate = writeDate;
    }

    // makejoin 할 때 추가로 필요한 속성
    private int gymNo;
    private String gymName;
    private String ticketName;

    // getMyJoin으로 가져올 때 보여줄 다른 테이블 칼럼들 적음
    private int applycustno; // 조인을 신청한 회원번호 : xml에서 별칭으로 정한 칼럼명 사용.
    private String custName; // 조인을 신청한 회원 이름(닉네임) ㅇ
    private String memberStatus; // 조인을 신청한 신청한 회원상태 // 1: 정상, 2: 취소
    private int applicationMemberCount; // 조인을 신청한 회원 인원수

    // 조인 조회 시 상세조회에 필요한 속성
    private String gymAddress1; // 센터 주소 전체
    private String gymAddress2; // 호,층
    private String gymAddress3; // **동
    private String gymPhone; // 센터 연락처
    private String gymReginumber;
    //private String makeJoinCustName; // 조인을 만든 고객 이름 예정.

    private String ticketType;
    private int ticketMonth;
    private int ticketNumber;
    private int ticketCost;
    private double ticketDiscount;
    private int ticketPrice;
}
