package com.kbstar.mapper;


import com.kbstar.dto.Trainer;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface TrainerMapper extends KBMapper<String, Trainer> {
    public List<Trainer> allTrainer(int gymNo); // 내가 예약 가능한 모든일자 수업 (캘린더용)
}
