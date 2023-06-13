package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Purchase;
import com.kbstar.dto.Ticket;
import com.kbstar.service.ClassService;
import com.kbstar.service.PurchaseService;
import com.kbstar.service.TicketService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequestMapping("/mypage")
public class MypageController {

    @Autowired
    PurchaseService purchaseService;
    @Autowired
    ClassService classService;
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
    public String mypurchase(Model model, HttpSession session) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");

        List<Purchase> list = null;
        list = purchaseService.getvalid();
//        log.info("----------------------------------------");
//        log.info(list.toString());
//        log.info("----------------------------------------");

        Map<Purchase, Integer> remainDays = new HashMap<Purchase, Integer>();
        for(Purchase p : list) {

            String purchaseDate = new SimpleDateFormat("yyyy-MM-dd").format(p.getPurchaseDate());
            String exDate = new SimpleDateFormat("yyyy-MM-dd").format(p.getExDate());

            SimpleDateFormat dateFormat =  new SimpleDateFormat("yyyy-MM-dd");

            Date pdate = new Date(dateFormat.parse(purchaseDate).getTime());
            Date edate = new Date(dateFormat.parse(exDate).getTime());

            long calculate = pdate.getTime() - edate.getTime();

            int rDays =  (int) (calculate / (24*60*60*1000));
            //p.setRday(rDays);

            log.info("-----------------test-----------------------");
            log.info(remainDays.toString());
            log.info(String.valueOf(rDays));
            log.info("----------------------------------------");

            remainDays.put(p, rDays);

        }


        List<Purchase> invalidList = null;
        invalidList = purchaseService.getinvalid();


        model.addAttribute("cmap", remainDays);
        model.addAttribute("clist", list);
        model.addAttribute("cinvalidList", invalidList);
        session.setAttribute("logincust", cust);
        model.addAttribute("center", dir + "mypurchase");
        return "index";
    }


    @RequestMapping("/myschedule")
    public String myschedule(Model model, HttpSession session) throws Exception {
        model.addAttribute("center", dir + "myschedule");
        return "index";
    }

}

