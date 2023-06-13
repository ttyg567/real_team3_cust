package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Like1 {
    private int likeNo; // 개인회원번호
    private int custNo;
    private int ticketNo;
    private String likeStatus;

    //insert할때 필요 (likeStatus =1) 로 들어가니까
    public Like1(int custNo, int ticketNo) {
    }
}
