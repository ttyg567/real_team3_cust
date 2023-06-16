package com.kbstar.controller;

import com.kbstar.dto.*;
import com.kbstar.dto.Class;
import com.kbstar.service.ClassService;
import com.kbstar.service.MyScheduleService;
import com.kbstar.service.PurchaseService;
import com.kbstar.service.TicketService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    @Autowired
    MyScheduleService myScheduleService;
    String dir = "mypage/";

    @RequestMapping
    public String main(Model model, HttpSession session) throws Exception {

//        Cust cust = (Cust) session.getAttribute("logincust");
//
//        List<Purchase> list = null;
//        list = purchaseService.get();
//
//        model.addAttribute("clist", list);
//        session.setAttribute("logincust", cust);
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


    @RequestMapping("/getCompleted")
    @ResponseBody
    public Object getCompleted(Model model, HttpSession session) throws Exception {
        log.info("===== 운동 완료 된 것을 찍어보겠습니다 =====");

        Cust cust = null;
        int custNo = 0;
        MySchedule my = new MySchedule();
        List<MySchedule> list = null;
        JSONArray ja = new JSONArray();

        // 세션에서 cust, custNo 가져오기
        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            custNo = cust.getCustNo();

            log.info("========== 세션의 custNo는 " + custNo + "============");

            my.setCustNo(custNo); // custNo set

            list = myScheduleService.isCompleted(my); // 운동 완료된 내 스케줄 모두 추출

//            var eventData = [
//            {
//                "date": "2023-06-01",
//                    "completed": true
//            },
//            {
//                "date": "2023-06-05",
//                    "completed": true
//            },
//            {
//                "date": "2023-06-10",
//                    "completed": false
//            },
//            ];

            for (MySchedule obj : list) {
                JSONObject jo = new JSONObject();
                jo.put("date", obj.getClassDate());
                jo.put("completed", obj.getScheduleCompleted());
                ja.add(jo);
            }

        }

        return ja;
    }

}

