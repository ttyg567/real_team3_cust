package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class GBMember {
    private int groupboardNo; // 게시글번호(pk) : 시퀀스
    private int custNo; // 개인회원번호(pk) : 시퀀스
    private String memberStatus; // 상태 // 1: 정상, 2: 취소

}
