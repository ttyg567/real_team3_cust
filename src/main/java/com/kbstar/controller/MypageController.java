package com.kbstar.controller;

import com.kbstar.dto.*;

import com.kbstar.service.ClassService;
import com.kbstar.service.MyScheduleService;
import com.kbstar.service.PurchaseService;
import io.github.flashvayne.chatgpt.service.ChatgptService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
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
    @Autowired
    ChatgptService chatgptService;
    String dir = "mypage/";

    @RequestMapping
    public String main(Model model, HttpSession session) throws Exception {

        Cust cust = null;
        MySchedule my = new MySchedule();
        List<MySchedule> list = null;
        List<Purchase> my_ticket_list = null;

        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            // 오늘의 운동 일정 추출
            list = myScheduleService.mypageReserved(cust.getCustNo());
            // 나의 티켓 추출
            my_ticket_list = purchaseService.getvalid(cust.getCustNo());

            if  (list != null) {
                // 날짜 형식 변경 날짜만 나오게
                for (MySchedule item : list) {
                    String formattedDate = formatDate(item.getClassDate());
                    item.setClassDate(formattedDate);
                }
            }

            if  (my_ticket_list != null) {
                // 날짜 형식 변경 날짜만 나오게
                for (Purchase item : my_ticket_list) {
                    String exDate = new SimpleDateFormat("yyyy-MM-dd").format(item.getExDate());
                    log.info("===== 날짜 찍어보자 " + exDate + "======");
                    item.setPurchaseDate_str(exDate);

                    log.info("===== 잔여횟수 찍어보자 " + item.getRemaining() + "======");
                }
            }
        }

        model.addAttribute("my_reservation_list", list);
        model.addAttribute("my_ticket_list", my_ticket_list);
        model.addAttribute("center", dir+"center");
        return "index";
    }


    @RequestMapping("/mypurchase")
    public String mypurchase(Model model, HttpSession session) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");

        List<Purchase> list = null;
        list = purchaseService.getvalid(cust.getCustNo());
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
        invalidList = purchaseService.getinvalid(cust.getCustNo());


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

            for (MySchedule obj : list) {
                JSONObject jo = new JSONObject();
                jo.put("date", obj.getClassDate());
                jo.put("completed", obj.getScheduleCompleted());
                ja.add(jo);
            }

        }

        return ja;
    }

    // Date 형식을 원하는 형태로 변환하는 메소드
    private String formatDate(String dateString) {
        DateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        DateFormat outputFormat = new SimpleDateFormat("MM월 dd일");
        Date date = null;
        try {
            date = inputFormat.parse(dateString);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return outputFormat.format(date);
    }

    @RequestMapping("/gptchatbot")
    public String gptchatbot(Model model, HttpSession session) throws Exception {

        model.addAttribute("center", dir+"gptchatbot");
        return "index";
    }

    @RequestMapping("/gptchatting")
    @ResponseBody
    public Object gptchatting(String question) throws Exception {
        log.info("챗지티피 시작하자!!");
        String answer ="";
        try {
            answer = chatgptService.sendMessage(question);
        } catch (Exception e){
            e.printStackTrace();
        }
        log.info("============= 대답 출력: ");
        log.info(answer);
        String imageUrl = chatgptService.imageGenerate("boy");
        log.info(imageUrl);  // image url

        JSONArray ja = new JSONArray();
        JSONObject jo = new JSONObject();

        jo.put("question", question);
        jo.put("answer", answer);
        ja.add(jo);

        return ja;
    }



}

