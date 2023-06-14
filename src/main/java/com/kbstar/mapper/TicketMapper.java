package com.kbstar.mapper;


import com.kbstar.dto.Ticket;
import com.kbstar.dto.TicketSearch;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface TicketMapper extends KBMapper<Integer, Ticket> {
    public void selectTicketsWithDiscount();
    List<Ticket> selectTicketsByGymNo(int gymNo);
    // 인보. 조인개설 시 이용권 검색해서 가져오는 기능
    public List<Ticket> search(TicketSearch ts);
}
