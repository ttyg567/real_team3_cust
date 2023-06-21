package com.kbstar.service;


import com.kbstar.dto.Like1;
import com.kbstar.dto.MyMachine;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.GymMachineMapper;
import com.kbstar.mapper.MyMachineMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Slf4j
@Service
public class MyMachineService implements KBService<Integer, MyMachine> {

    @Autowired
    MyMachineMapper myMachineMapper;


    @Override
    public void register(MyMachine myMachine) throws Exception {
        myMachineMapper.insert(myMachine);
    }

    @Override
    public void remove(Integer integer) throws Exception {
        myMachineMapper.delete(integer);
    }

    @Override
    public void modify(MyMachine myMachine) throws Exception {
        myMachineMapper.update(myMachine);
    }

    @Override
    public MyMachine get(Integer integer) throws Exception {
        return myMachineMapper.select(integer);
    }

    @Override
    public List<MyMachine> get() throws Exception {
        return myMachineMapper.selectall();
    }

    // 회원이 즐겨찾기한 운동기구 보여주기
    public List<MyMachine> getmymachine(Integer custNo) throws Exception {
        return myMachineMapper.getmymachine(custNo);
    }
}
