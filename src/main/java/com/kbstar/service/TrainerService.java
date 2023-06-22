package com.kbstar.service;


import com.kbstar.dto.Trainer;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.TrainerMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Slf4j  //log
@Service
public class TrainerService  implements KBService<String, Trainer> {

    @Autowired
    TrainerMapper mapper;
    @Override
    public void register(Trainer trainer) throws Exception {

    }

    @Override
    public void remove(String s) throws Exception {

    }

    @Override
    public void modify(Trainer trainer) throws Exception {

    }

    @Override
    public Trainer get(String s) throws Exception {
        return null;
    }

    @Override
    public List<Trainer> get() throws Exception {
        return null;
    }
    public List<Trainer> getAll(int gymNo) throws Exception {
        return mapper.allTrainer(gymNo);
    }

}
