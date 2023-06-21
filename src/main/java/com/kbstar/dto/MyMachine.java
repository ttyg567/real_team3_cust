package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class MyMachine {
    private int custNo; // 회원 번호
    private int gymNo; // 센터 번호
    private int machineNo; // 운동기구 번호
    private String myMachineStatus; // 즐겨찾기 상태(1-등록, 0-해제)

    // 즐겨찾기 조회시 필요
    private String machineName; // 기계 이름
    private String machineImgname; // 기계 사진
    private int holdingQuantity; // 기계 보유수량
    private int usingQuantity; // 기계를 사용 중인 수량

    public MyMachine(int custNo, int gymNo, int machineNo, String myMachineStatus) {
        this.custNo = custNo;
        this.gymNo = gymNo;
        this.machineNo = machineNo;
        this.myMachineStatus = myMachineStatus;
    }
}
