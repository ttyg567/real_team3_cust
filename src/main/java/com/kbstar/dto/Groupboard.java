package com.kbstar.dto;

import lombok.*;

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
    private String groupboardImgpath; // 게시글 대표이미지 경로
    private String categoryNo; // 카테고리번호 // 1: 헬스, 2: PT, 3: 필라테스, 4: 요가, 5: 크로스핏, 6: 골프, 7:수영
    private int expectMember; // 모집인원
    private int applicationMember; // 신청인원
    private int confirmMember; // 확정인원
    private String groupboardStatus; // 상태 // 1: 모집중, 2: 모집취소, 3: 신청중, 4: 신청취소, 5:신청취소, 5:확정
    private int boardViews; // 글 조회수
    private Date writeDate; // 글 작성일자

    // insert
    public Groupboard(int custNo, int ticketNo, String groupboardTitle, String groupboardContents, String groupboardImgname, String groupboardImgpath, String categoryNo, int expectMember, int applicationMember, int confirmMember, String groupboardStatus, int boardViews, Date writeDate) {
        this.custNo = custNo;
        this.ticketNo = ticketNo;
        this.groupboardTitle = groupboardTitle;
        this.groupboardContents = groupboardContents;
        this.groupboardImgname = groupboardImgname;
        this.groupboardImgpath = groupboardImgpath;
        this.categoryNo = categoryNo;
        this.expectMember = expectMember;
        this.applicationMember = applicationMember;
        this.confirmMember = confirmMember;
        this.groupboardStatus = groupboardStatus;
        this.boardViews = boardViews;
        this.writeDate = writeDate;
    }

    // getMyJoin으로 가져올 때 보여줄 다른 테이블 칼럼들 적음
    private int applycustno; // 조인을 신청한 회원번호 : xml에서 별칭으로 정한 칼럼명 사용.
    private String custName; // 조인을 신청한 회원 이름(닉네임) ㅇ
    private String memberStatus; // 조인을 신청한 신청한 회원상태 // 1: 정상, 2: 취소
    private int applicationMemberCount; // 조인을 신청한 회원 인원수
}
