package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Like1;
import com.kbstar.dto.Ticket;
import com.kbstar.service.CustService;
import com.kbstar.service.LikeService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Case;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
public class Like1Controller {

    @Autowired
    LikeService service;

    @RequestMapping("/like1")
    public String like1impl(Model model, Like1 like1, Ticket ticket, HttpSession session, String ticket_pay_option) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        // 마지막 "-" 뒤의 숫자 추출
        String[] parts = ticket_pay_option.split("-");
        String lastPart = parts[parts.length - 1];
        int ticketNo = Integer.parseInt(lastPart);

        like1.setCustNo(cust.getCustNo());
        like1.setTicketNo(ticketNo);
        service.register(like1);

        model.addAttribute("center", "mypage");
        return "index";
    }

//

}