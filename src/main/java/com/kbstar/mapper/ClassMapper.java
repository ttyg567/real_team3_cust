package com.kbstar.mapper;

import com.kbstar.dto.Class;
import com.kbstar.dto.Cust;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ClassMapper extends KBMapper<Integer, Class> {

    public List<Class> selectallclass(Integer custNo); // 내가 예약 가능한 모든일자 수업 (캘린더용)
    public List<Class> selectdayclass(Cust c); // 내가 예약 가능한 특정일자 수업



}
