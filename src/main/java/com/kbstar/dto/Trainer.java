package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Trainer {
    private Integer trainerNo;
    private Integer gymNo;
    private String gymMasterCk;
    private String trainerName;
    private String trainerGender;
    private String trainerCareer;
    private String trainerIntro;
    private String trainerImgName;
}
