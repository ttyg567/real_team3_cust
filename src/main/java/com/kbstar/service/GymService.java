package com.kbstar.service;

import com.kbstar.dto.Gym;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.GymMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class GymService implements KBService<Integer, Gym> {

    @Autowired
    GymMapper mapper;

    @Override
    public void register(Gym gym) throws Exception {
        mapper.insert(gym);
    }


    @Override
    public void remove(Integer i) throws Exception {
        mapper.delete(i);
    }

    @Override
    public void modify(Gym gym) throws Exception {
        mapper.update(gym);
    }

    @Override
    public Gym get(Integer i) throws Exception {
        return mapper.select(i);
    }

    @Override
    public List<Gym> get() throws Exception {
        return mapper.selectall();
    }
    @Override
    public List<Gym> getByTypeNo(Integer typeNo) throws Exception {
        return mapper.selectByTypeNo(typeNo);
    }


    public List<Gym> selectImg(Integer i){
        return mapper.selectimg(i);
    }
}
