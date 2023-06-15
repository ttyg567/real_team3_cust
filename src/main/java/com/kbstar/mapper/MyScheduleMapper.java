package com.kbstar.mapper;




import com.kbstar.dto.MySchedule;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface MyScheduleMapper extends KBMapper<Integer, MySchedule> {


}
