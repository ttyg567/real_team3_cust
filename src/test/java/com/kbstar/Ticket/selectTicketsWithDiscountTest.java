package com.kbstar.Ticket;

import com.kbstar.service.TicketService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
public class selectTicketsWithDiscountTest {
    @Autowired
    TicketService service;
    @Test
    void contextLoads() {
        try {
            service.selectwithDiscount();
        } catch (Exception e) {
            log.info("에러..");
            //e.printStackTrace();
        }
    }

}