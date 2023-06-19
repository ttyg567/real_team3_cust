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

    /**** 수업 예약 ****/

    // 수업예약하면 수업정보에 참가인원을 +1 해줌
    public void reserve_update_classJoin(MySchedule my) throws Exception;

    // 수업예약하면 구매 이용권에 사용횟수를 +1 해줌
    public void reserve_update_usedCnt(MySchedule my) throws Exception;

    /**** 수업 취소 ****/

    // 수업취소
    public void cancelClass(MySchedule my) throws Exception;

    // 수업취소하면 고객 예약에서 운동 취소여부를 '여'로 바꿔줌
    public void cancel_update_sheduleCanceled(MySchedule my) throws Exception;

    // 수업취소하면 수업정보에 참가인원을 -1 해줌
    public void cancel_update_classJoin(MySchedule my) throws Exception;

    // 수업취소하면 구매 이용권에 사용횟수를 -1 해줌
    public void cancel_update_usedCnt(MySchedule my) throws Exception;


    // 특정일자 운동예약 리스트 추출
    public List<MySchedule> isReserved_day(MySchedule ms) throws Exception;
    
    // 운동예약 리스트 추출
    public List<MySchedule> isReserved(Integer custNo) throws Exception;

    // 오늘 이후 이번주, 다음주 예약한 수업 조회 (운동 취소여부 : '0', 대표계정 : '1')
    public List<MySchedule> mypageReserved(Integer custNo)throws Exception;

    // 운동완료 리스트 추출
    public List<MySchedule> isCompleted(MySchedule my) throws Exception;

    // 오늘 예약한 수업 조회
    public List<MySchedule> todayClass(MySchedule my) throws Exception;


}
