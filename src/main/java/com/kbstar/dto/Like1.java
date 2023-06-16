package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Like1 {
    private int likeNo; //
    private int custNo;
    private int ticketNo;
    private String likeStatus;
//좋아요 조회시 필요쓰
    private String ticketName;
    private String ticketCost;
    private String gymImgName;
    private String gymName;
    private int gymNo;

    //insert할때 필요 (likeStatus =1) 로 들어가니까
    public Like1(int custNo, int ticketNo) {
    }
}
