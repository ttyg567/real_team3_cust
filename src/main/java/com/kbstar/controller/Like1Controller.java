package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Like1;
import com.kbstar.service.CustService;
import com.kbstar.service.LikeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
@Slf4j
@RestController
public class Like1Controller {
    @Autowired
    LikeService service;
    @PostMapping("/like1")
    public String insertLike1(@RequestBody Like1 like1, HttpSession session,
                              @RequestParam("ticket_pay_option") String ticket_pay_option,
                              Model model)
    {
        Cust cust = (Cust) session.getAttribute("logincust");

        // Set the custNo from the logged-in customer
        like1.setCustNo(cust.getCustNo());
        // Set the ticketNo from the ticket_pay_option
        int ticketNo = Integer.parseInt
                (ticket_pay_option.substring(ticket_pay_option.lastIndexOf('-') + 1));
        like1.setTicketNo(ticketNo);

        try {
            service.register(like1);
            // Additional logic or model attributes if needed
            log.info("####################################");
        log.info("like1");
            return "success"; // Return the appropriate success view or redirect
        } catch (Exception e) {
            log.info("시스템 장애입니다.----------------------------------");
            e.printStackTrace();
            // Additional error handling if needed
            return "error"; // Return the appropriate error view or redirect
        }
    }

}