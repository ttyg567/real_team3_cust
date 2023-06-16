package com.kbstar.service;

import com.kbstar.dto.Class;
import com.kbstar.dto.Cust;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.ClassMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class ClassService implements KBService<Integer, Class> {

    @Autowired
    ClassMapper mapper;

    @Override
    public void register(Class aClass) throws Exception {
        mapper.insert(aClass);
    }

    @Override
    public void remove(Integer integer) throws Exception {
        mapper.delete(integer);
    }

    @Override
    public void modify(Class aClass) throws Exception {
        mapper.update(aClass);
    }

    @Override
    public Class get(Integer integer) throws Exception {
        return mapper.select(integer);
    }

    @Override
    public List<Class> get() throws Exception {
        return mapper.selectall();
    }

    // 내가 예약 가능한 모든일자 수업 (캘린더용)
    public List<Class> selectAllclass(Integer custNo) throws Exception {
        return mapper.selectallclass(custNo);
    }

    // 내가 예약 가능한 특정일자 수업
    public List<Class> selectDayclass(Cust c) throws  Exception {
        return mapper.selectdayclass(c);
    }

}
