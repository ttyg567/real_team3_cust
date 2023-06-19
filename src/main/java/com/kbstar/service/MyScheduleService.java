package com.kbstar.service;

import com.kbstar.dto.MySchedule;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.MyScheduleMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Slf4j
@Service
public class MyScheduleService implements KBService<Integer, MySchedule> {

    @Autowired
    MyScheduleMapper mapper;

    // 수업예약
    @Override
    public void register(MySchedule mySchedule) throws Exception {
        mapper.insert(mySchedule);
    }

    // 수업예약하면 수업정보에 참가인원을 +1 해줌
    public void reserve_update_classJoin(MySchedule my) throws Exception {
        mapper.reserve_update_classJoin(my);
    }

    // 수업예약하면 구매 이용권에 사용횟수를 +1 해줌
    public void reserve_update_usedCnt(MySchedule my) throws Exception {
        mapper.reserve_update_usedCnt(my);
    }

    // 예약한 수업 취소
    public void cancelClass(MySchedule my) throws Exception {
        mapper.cancelClass(my);
    }

    // 수업취소하면 고객 예약에서 운동 취소여부를 '여'로 바꿔줌
    public void cancel_update_sheduleCanceled(MySchedule my) throws Exception {
        mapper.cancel_update_sheduleCanceled(my);
    }

    // 수업취소하면 수업정보에 참가인원을 -1 해줌
    public void cancel_update_classJoin(MySchedule my) throws Exception {
        mapper.cancel_update_classJoin(my);
    }

    // 수업취소하면 구매 이용권에 사용횟수를 -1 해줌
    public void cancel_update_usedCnt(MySchedule my) throws Exception {
        mapper.cancel_update_usedCnt(my);
    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(MySchedule mySchedule) throws Exception {
        mapper.update(mySchedule);
    }


    @Override
    public MySchedule get(Integer integer) throws Exception {
        return null;
    }

    @Override
    public List<MySchedule> get() throws Exception {
        return null;
    }

    // 특정일자 운동예약 리스트 추출
    public List<MySchedule> isReserved_day(MySchedule ms) throws Exception{
        return mapper.isReserved_day(ms);
    }

    // 운동예약 리스트 추출
    public List<MySchedule> isReserved(Integer custNo) throws Exception{
        return mapper.isReserved(custNo);
    }

    // 오늘 이후 이번주, 다음주 예약한 수업 조회
    public List<MySchedule> mypageReserved(Integer custNo) throws Exception{
        return mapper.mypageReserved(custNo);
    }

    // 해당 일자에 운동완료를 했는지 여부를 반환하는 함수
    public List<MySchedule> isCompleted(MySchedule my) throws Exception {
        return mapper.isCompleted(my);
    }

    // 오늘 예약한 수업 조회
    public List<MySchedule> todayClass(MySchedule my) throws Exception {
        return mapper.todayClass(my);
    }

}
