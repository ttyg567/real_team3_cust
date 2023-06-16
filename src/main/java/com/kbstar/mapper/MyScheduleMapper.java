package com.kbstar.mapper;




import com.kbstar.dto.Cust;
import com.kbstar.dto.MySchedule;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MyScheduleMapper extends KBMapper<Integer, MySchedule> {

    // 특정일자 운동예약 리스트 추출
    public List<MySchedule> isReserved_day(MySchedule ms) throws Exception;
    
    // 운동예약 리스트 추출
    public List<MySchedule> isReserved(Integer custNo) throws Exception;

    // 운동완료 리스트 추출
    public List<MySchedule> isCompleted(MySchedule my) throws Exception;

}
