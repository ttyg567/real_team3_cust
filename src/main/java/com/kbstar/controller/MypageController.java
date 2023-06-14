package com.kbstar.controller;

import com.kbstar.dto.Class;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Purchase;
import com.kbstar.dto.Ticket;
import com.kbstar.service.ClassService;
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

    @RequestMapping("/gettime")
    @ResponseBody
    public Object gettime(Model model, String tdate, HttpSession session) throws Exception {

        Cust cust = null;
        int custNo = 0;
        JSONArray ja = new JSONArray();
        // 세션에서 cust, custNo 가져오기
        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            cust.setClassDate(tdate); // 선택한 tdate set
            if (cust != null) {
                custNo = cust.getCustNo();
                log.info("========== 세션의 gymNo는 " + custNo + "============");
            }

            List<Class> list = null;
            list = purchaseService.getdayclass(cust);

            // Java Object ---> JSON
            // JSON(JavaScript Object Notation)
            // [시간1, 시간2, ... ]
//            for (Class obj : list) {
//                ja.add(obj.getClassStarttime()+"~"+obj.getClassEndtime()); // 수업시작시간 select하여 add
//            }
            // [ {classNo: , gymNo; , gymMasterCk: , trainerNo: , className: ,
            // classDate: , classStarttime: , classEndtime: , classMaximum: , classJoin: ,
            // classFullbooked: , sportsType: , sportsClasstype: }, {} ]
            for (Class obj : list) {
                JSONObject jo = new JSONObject();
                jo.put("classNo", obj.getClassNo());
                jo.put("gymNo", obj.getGymNo());
                jo.put("gymMasterCk", obj.getGymMasterCk());
                jo.put("trainerNo", obj.getTrainerNo());
                jo.put("trainerName", obj.getTrainerName()); // trainer 테이블과 조인
                jo.put("className", obj.getClassName());
                jo.put("classDate", obj.getClassDate());
                jo.put("classStarttime", obj.getClassStarttime());
                jo.put("classEndtime", obj.getClassEndtime());
                jo.put("classTime", obj.getClassStarttime()+"~"+obj.getClassEndtime());
                jo.put("classMaximum", obj.getClassMaximum());
                jo.put("classJoin", obj.getClassJoin());
                jo.put("classFullbooked", obj.getClassFullbooked());
                jo.put("sportsType", obj.getSportsType());
                jo.put("sportsClasstype", obj.getSportsClasstype());
                ja.add(jo);
            }

        }
        return ja;
    }

}

