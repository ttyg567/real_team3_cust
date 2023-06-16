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
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class Like1Controller {

    @Autowired
    LikeService service;

    @RequestMapping("/like1")
    public String like1(Model model, Like1 like1, Ticket ticket, HttpSession session, String ticket_pay_option) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        List<Like1> list = new ArrayList<>();
        // 마지막 "-" 뒤의 숫자 추출
        String[] parts = ticket_pay_option.split("-");
        String lastPart = parts[parts.length - 1];
        int ticketNo = Integer.parseInt(lastPart);

        like1.setCustNo(cust.getCustNo());
        like1.setTicketNo(ticketNo);
        service.register(like1);
        list = service.getmylike(cust.getCustNo());
        log.info("나의좋아요~~~~~~~~~");
        log.info(list.toString());
        model.addAttribute("center", "myLike");
        model.addAttribute("myLike", list);
        return "index";
    }

//
@RequestMapping("/like1check")
public String like1check(Model model, Like1 like1,  HttpSession session) throws Exception {
    Cust cust = (Cust) session.getAttribute("logincust");
    List<Like1> list = new ArrayList<>();

    list = service.getmylike(cust.getCustNo());

    model.addAttribute("center", "myLikeCheck");
    model.addAttribute("myLike", list);
    return "index";
}
@RequestMapping("/like1Delete")
    public String like1Delete(Integer likeNo, Like1 like1, HttpSession session) throws Exception {
        //delete버튼이 눌리면 form이 like1delete로 전송이되고 전송이되면
        //session의  cust값이 가진 그 likeNo를 삭제한다.
//        Cust cust = (Cust) session.getAttribute("logincust");
        service.remove(likeNo);
    return "redirect:/like1check";

    }
}