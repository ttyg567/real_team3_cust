package com.kbstar.service;

import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.TicketMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class TicketService implements KBService<Integer, Ticket>{
    @Autowired
    TicketMapper mapper;
    @Override
    public void register(Ticket ticket) throws Exception {
        mapper.insert(ticket);
    }

    @Override
    public void remove(Integer integer) throws Exception {
        mapper.delete(integer);
    }

    @Override
    public void modify(Ticket ticket) throws Exception {
        mapper.update(ticket);
    }

    @Override
    public Ticket get(Integer integer) throws Exception {
        return mapper.select(integer);
    }

    @Override
    public List<Ticket> get() throws Exception {
        return mapper.selectall();
    }

    public void selectwithDiscount() {
        mapper.selectTicketsWithDiscount();
    }

    public List<Ticket> getTicketsByGymNo(int gymNo) throws Exception {
        return mapper.selectTicketsByGymNo(gymNo);
    }
}
