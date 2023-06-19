package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Purchase;
import com.kbstar.dto.Ticket;
import com.kbstar.service.GymService;
import com.kbstar.service.PurchaseService;
import com.kbstar.service.TicketService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class JinController {


    @Autowired
    PurchaseService purchaseService;

    @Autowired
    TicketService ticketService;

    @Autowired
    GymService gymService;

    @RequestMapping("/ticket")
    public String main(Model model){
        model.addAttribute("center","ticket");
        return "index";
    }

    // 알림함
    @RequestMapping("/notification")
    public String notification(Model model){
        model.addAttribute("center","notification");
        return "index";
    }

    @RequestMapping("/payment_method")
    public String payment_method(Model model){
        model.addAttribute("center","payment_method");
        return "index";
    }


    @RequestMapping("/paySuccess")
    public String paySuccess(Model model , String ticket_pay_option){
        model.addAttribute("center","paySuccess");
        model.addAttribute("ticket_pay_option", ticket_pay_option);
        return "index";
    }
    @RequestMapping("/payFailed")
    public String payFailed(Model model){
        model.addAttribute("center","payFailed");
        return "index";
    }
    @RequestMapping("/pay")
    public String pay(HttpSession session, String ticket_pay_option, Model model, String gymName, int gymNo) throws Exception {
        model.addAttribute("ticket_pay_option", ticket_pay_option);
        model.addAttribute("gymName", gymName);
        model.addAttribute("gymNo", gymNo);
        Cust cust = (Cust) session.getAttribute("logincust");

        // 마지막 "-" 뒤의 숫자 추출
        String[] parts = ticket_pay_option.split("-");
        String lastPart = parts[parts.length - 1];
        Integer ticketNo = Integer.parseInt(lastPart);

        // ticketNo 로 ticket 가져오기
        Ticket pticket = ticketService.get(ticketNo);

//        log.info("---------------%%%%%%%%%%%%%테스트테스트----------------------------");
//        log.info(String.valueOf(pticket));
//        log.info(gymName);


        model.addAttribute("pticket", pticket);
        session.setAttribute("logincust", cust);
        model.addAttribute("center","pay");
        return "index";
    }



    // 결제하기 버튼 누를 때, 바로 DB에 저장되도록 작동(차후 실제 완료된 결제인지 검증하는 컬럼을 넣어줄 수 있으면..)
    @RequestMapping("/purchaseimpl")
    public String purchaseimpl(Model model, Purchase purchase) throws Exception {

        log.info("---------------%%%%%%%%%%%%%테스트테스트----------------------------");
        log.info(String.valueOf(purchase));

        purchaseService.register(purchase);

        return "index";
    }
}