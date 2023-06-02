package com.kbstar.mapper;


import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface TicketMapper extends KBMapper<Integer, Ticket> {
    public void selectTicketsWithDiscount();
    List<Ticket> selectTicketsByGymNo(int gymNo);
}
