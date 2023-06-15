package com.kbstar.mapper;




import com.kbstar.dto.MySchedule;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MyScheduleMapper extends KBMapper<Integer, MySchedule> {

    // 해당 일자에 운동완료를 했는지 여부를 반환하는 함수
    public List<MySchedule> isCompleted(MySchedule my) throws Exception;

}
