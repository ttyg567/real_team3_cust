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

    @Override
    public void register(MySchedule mySchedule) throws Exception {
        mapper.insert(mySchedule);
    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(MySchedule mySchedule) throws Exception {

    }

    @Override
    public MySchedule get(Integer integer) throws Exception {
        return null;
    }

    @Override
    public List<MySchedule> get() throws Exception {
        return null;
    }
}
