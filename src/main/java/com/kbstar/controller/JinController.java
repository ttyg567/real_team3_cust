package com.kbstar.controller;

import com.kbstar.dto.*;
import com.kbstar.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.net.URLDecoder;
import java.util.List;

@Slf4j
@Controller
public class JinController {


    @Autowired
    PurchaseService purchaseService;

    @Autowired
    TicketService ticketService;

    @Autowired
    GymService gymService;

    @Autowired
    NotificationService notificationService;

    @Autowired
    CouponService couponService;

    @RequestMapping("/ticket")
    public String main(Model model){
        model.addAttribute("center","ticket");
        return "index";
    }

    // 나의 알림함
    @RequestMapping("/notification")
    public String notification(Model model, HttpSession session) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        List<Notification> list = null;
        list = notificationService.getMyNoti(cust.getCustNo()); // 로그인고객의 알림내역 가져오기.
        log.info("추출" + list);

        model.addAttribute("myNoti",list);
        model.addAttribute("center","notification");
        return "index";
    }

    @RequestMapping("/payment_method")
    public String payment_method(Model model){
        model.addAttribute("center","payment_method");
        return "index";
    }

    // web_일반결제 : O
    // web_카카오결제 : O
    @RequestMapping("/paySuccess")
    public String paySuccess(Model model , Integer custNo, Integer ticketNo, Integer gymNo, String sportsType, String sportsClasstype
    , String ticketType, Integer ticketMonth, Integer ticketNumber, String ticketJoin, Integer hiddenFinalPrice, Integer hiddenCouponNo) throws Exception {
        Purchase p = new Purchase();
        p.setCustNo(custNo);
        p.setTicketNo(ticketNo);
        p.setGymNo(gymNo);
        p.setSportsType(sportsType);
        p.setSportsClasstype(sportsClasstype);
        p.setTicketType(ticketType);
        p.setTicketMonth(ticketMonth);
        p.setTicketNumber(ticketNumber);
        p.setTicketJoin(ticketJoin);
        p.setPurchasePrice(hiddenFinalPrice);

//        String decodedCustNo = URLDecoder.decode(String.valueOf(custNo), "UTF-8");
//        String decodedTicketNo = URLDecoder.decode(String.valueOf(ticketNo), "UTF-8");
//        String decodedGymNo = URLDecoder.decode(String.valueOf(gymNo), "UTF-8");
//        String decodedSportsType = URLDecoder.decode(sportsType, "UTF-8");
//        String decodedSportsClasstype = URLDecoder.decode(sportsClasstype, "UTF-8");
//        String decodedTicketType = URLDecoder.decode(ticketType, "UTF-8");
//        String decodedTicketMonth = URLDecoder.decode(String.valueOf(ticketMonth), "UTF-8");
//        String decodedTicketNumber = URLDecoder.decode(String.valueOf(ticketNumber), "UTF-8");
//        String decodedTicketJoin = URLDecoder.decode(ticketJoin, "UTF-8");
//        String decodedPurchasePrice = URLDecoder.decode(String.valueOf(purchasePrice), "UTF-8");

//        Purchase p = new Purchase();
//        p.setCustNo(Integer.parseInt(decodedCustNo));
//        p.setTicketNo(Integer.parseInt(decodedTicketNo));
//        p.setGymNo(Integer.parseInt(decodedGymNo));
//        p.setSportsType(decodedSportsType);
//        p.setSportsClasstype(decodedSportsClasstype);
//        p.setTicketType(decodedTicketType);
//        p.setTicketMonth(Integer.parseInt(decodedTicketMonth));
//        p.setTicketNumber(Integer.parseInt(decodedTicketNumber));
//        p.setTicketJoin(decodedTicketJoin);
//        p.setPurchasePrice(Integer.parseInt(decodedPurchasePrice));

        purchaseService.register(p); // 구매 이용권에 insert

        if(hiddenCouponNo!= null) {
            couponService.updateUsed(hiddenCouponNo); // 쿠폰 사용완료로 update
        }

        model.addAttribute("center","paySuccess");
        model.addAttribute("ticket_pay_option", p);
        return "index";
    }

    // 웹 시현시에는 X를 눌러야 DB 쌓임

    @RequestMapping("/paySuccess_mobile")
    public String paySuccess_mobile(Model model , Integer custNo, Integer ticketNo, Integer gymNo, String sportsType, String sportsClasstype
            , String ticketType, Integer ticketMonth, Integer ticketNumber, String ticketJoin, Integer hiddenFinalPrice, Integer hiddenCouponNo
            , String imp_uid, String merchant_uid, String imp_success) throws Exception {

        Purchase p = new Purchase();
        p.setCustNo(custNo);
        p.setTicketNo(ticketNo);
        p.setGymNo(gymNo);
        p.setSportsType(sportsType);
        p.setSportsClasstype(sportsClasstype);
        p.setTicketType(ticketType);
        p.setTicketMonth(ticketMonth);
        p.setTicketNumber(ticketNumber);
        p.setTicketJoin(ticketJoin);
        p.setPurchasePrice(hiddenFinalPrice);

        purchaseService.register(p); // 구매 이용권에 insert
        if(hiddenCouponNo!= null) {
            couponService.updateUsed(hiddenCouponNo); // 쿠폰 사용완료로 update
        }

        model.addAttribute("center","paySuccess");
        model.addAttribute("ticket_pay_option", p);
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
//로그아웃
    @RequestMapping("/logoutimpl")
    public String logoutimpl(HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }
}