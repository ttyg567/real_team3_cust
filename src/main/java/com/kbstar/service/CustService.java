package com.kbstar.service;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.CustMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class CustService implements KBService<String, Cust> {

    @Autowired
    CustMapper mapper;

    @Override
    public void register(Cust cust) throws Exception {
        mapper.insert(cust);
    }

    @Override
    public void remove(String s) throws Exception {
        mapper.delete(s);
    }

    @Override
    public void modify(Cust cust) throws Exception {
        mapper.update(cust);
    }

    @Override
    public Cust get(String s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<Cust> get() throws Exception {
        return mapper.selectall();
    }


    public List<Gym> getByTypeNo(Integer typeNo) throws Exception {
        return mapper.selectByTypeNo(typeNo);
    }

    public Ticket selectwitDiscount(Ticket ticket) {
        return null;
    }

    public Ticket selectwitDiscount(Integer i) {
        return null;
    }
}
