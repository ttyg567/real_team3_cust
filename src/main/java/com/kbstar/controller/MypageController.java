package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Purchase;
import com.kbstar.dto.Ticket;
import com.kbstar.service.PurchaseService;
import com.kbstar.service.TicketService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Slf4j
@RequestMapping("/mypage")
public class MypageController {

    @Autowired
    PurchaseService purchaseService;
    String dir = "mypage/";

    @RequestMapping
    public String main(Model model, HttpSession session) throws Exception {

        Cust cust = (Cust) session.getAttribute("logincust");

        List<Purchase> list = null;
        list = purchaseService.get();

//        log.info("----------------------------------------");
//        log.info(list.toString());
//        log.info("----------------------------------------");

        model.addAttribute("clist", list);
        session.setAttribute("logincust", cust);
        model.addAttribute("center", dir+"center");
        return "index";
    }


    @RequestMapping("/mypurchase")
    public String all(Model model, HttpSession session) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");

        List<Purchase> list = null;
        list = purchaseService.get();

        model.addAttribute("clist", list);
        session.setAttribute("logincust", cust);
        model.addAttribute("center", dir + "mypurchase");
        return "index";
    }

}

