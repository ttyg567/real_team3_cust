package com.kbstar.controller;

import com.kbstar.dto.Class;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.dto.MySchedule;
import com.kbstar.service.ClassService;
import com.kbstar.service.MyScheduleService;
import com.kbstar.util.DateUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/class")
public class ClassController {
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "class/";

    @Autowired
    ClassService classService;

    @Autowired
    MyScheduleService myScheduleService;

    @RequestMapping("/reservation")
    public String reservation(Model model, String redirectURL) {
        model.addAttribute("center", dir + "reservation");
        return "index";
    }

    @RequestMapping("/getMyclass")
    @ResponseBody
    public Object getMyclass(Model model, String tdate, HttpSession session) throws Exception {

        log.info("모달 뿌려주기 위한 데이터 get 화면 진입");

        Cust cust = null;
        int custNo = 0;
        JSONArray ja = new JSONArray();
        // 세션에서 custNo 가져오기
        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            cust.setClassDate(tdate); // 선택한 tdate set

            custNo = cust.getCustNo();
            log.info("========== 세션의 custNo는 " + custNo + "============");


            List<Class> class_reserve_list = null;
            class_reserve_list = classService.selectDayclass(cust); // 내가 예약 가능한 수업 가져오기

            // Java Object ---> JSON
            // JSON(JavaScript Object Notation)
            // [시간1, 시간2, ... ]
//            for (Class obj : list) {
//                ja.add(obj.getClassStarttime()+"~"+obj.getClassEndtime()); // 수업시작시간 select하여 add
//            }
            // [ {classNo: , gymNo; , gymMasterCk: , trainerNo: , className: ,
            // classDate: , classStarttime: , classEndtime: , classMaximum: , classJoin: ,
            // classFullbooked: , sportsType: , sportsClasstype: }, {} ]
            for (Class obj : class_reserve_list) {
                JSONObject jo = new JSONObject();
                jo.put("classNo", obj.getClassNo());
                jo.put("gymNo", obj.getGymNo());
                jo.put("gymName", obj.getGymName());
                jo.put("gymMasterCk", obj.getGymMasterCk());
                jo.put("trainerNo", obj.getTrainerNo());
                jo.put("trainerName", obj.getTrainerName()); // trainer 테이블과 조인
                jo.put("className", obj.getClassName());
                jo.put("classDate", obj.getClassDate());
                jo.put("classStarttime", obj.getClassStarttime());
                jo.put("classEndtime", obj.getClassEndtime());
                jo.put("classTime", obj.getClassStarttime() + "~" + obj.getClassEndtime());
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

    @RequestMapping("/getClassdata")
    @ResponseBody
    public Object getClassdata(Model model, HttpSession session) throws Exception {

        log.info("캘린더에 뿌려주기 위한 데이터 get 화면 진입");

        Cust cust = null;
        int custNo = 0;
        List<Class> class_all_list = null;
        JSONArray ja = new JSONArray();
        // 세션에서 custNo 가져오기
        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");

            custNo = cust.getCustNo();
            log.info("========== 세션의 custNo는 " + custNo + "============");

            class_all_list = classService.selectAllclass(custNo); // 내가 예약 가능한 수업 가져오기

            // Java Object ---> JSON
            // JSON(JavaScript Object Notation)
            // [시간1, 시간2, ... ]
//            for (Class obj : list) {
//                ja.add(obj.getClassStarttime()+"~"+obj.getClassEndtime()); // 수업시작시간 select하여 add
//            }
            // [ {classNo: , gymNo; , gymMasterCk: , trainerNo: , className: ,
            // classDate: , classStarttime: , classEndtime: , classMaximum: , classJoin: ,
            // classFullbooked: , sportsType: , sportsClasstype: }, {} ]

            if (class_all_list == null) {
                log.info("null 이다..");
            } else {
                for (Class obj : class_all_list) {
                    JSONObject jo = new JSONObject();

//                jo.put("title",obj.getClassName());
//                    jo.put("start", DateUtil.getDateStr(obj.getClassDate()) + "T" + DateUtil.getTimeStr(obj.getClassStarttime()));
//                    jo.put("end", DateUtil.getDateStr(obj.getClassDate()) + "T" + DateUtil.getTimeStr(obj.getClassEndtime()));

//                    if (obj.getClassFullbooked().equals("1")) { // 수업 마감시 빨간색
//                        jo.put("className", "bg-gradient-danger");
//                    } else {
//                        jo.put("className", "bg-gradient-success"); // 마감 안되었으면 초록색
//                    }

                    ja.add(jo);
                }
            }
        }
        return ja;
    }

    @RequestMapping("/reserve")
    @ResponseBody
    public String reserve(Model model, Integer classNo, HttpSession session) throws Exception {
        log.info("수업을 예약하겠습니다.");
        log.info("수업 번호는 " + classNo);

        MySchedule ms = new MySchedule();
        Cust cust = null;
        int custNo = 0;

        if (session != null) {

            cust = (Cust) session.getAttribute("logincust");
            custNo = cust.getCustNo();

            log.info("========== 세션의 custNo는 " + custNo + "============");

            ms.setClassNo(classNo);
            ms.setPurchaseNo(100); /* 가상 set */
            ms.setCustNo(custNo);

            myScheduleService.register(ms);

        }

        return "success";
    }

    @RequestMapping("/my_reservation")
    public String my_reservation(Model model, String redirectURL) {
        model.addAttribute("center", dir + "my_reservation");
        return "index";
    }

    @RequestMapping("/getReservedclasstime")
    @ResponseBody
    public Object getReservedclasstime(Model model, String tdate, HttpSession session) throws Exception {
        log.info("===== 예약 완료된 time을 찍어보겠습니다 =====");

        Cust cust = null;
        int custNo = 0;
        List<MySchedule> list = null;
        MySchedule ms = new MySchedule();
        JSONArray ja = new JSONArray();

        // 세션에서 cust, custNo 가져오기
        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            custNo = cust.getCustNo();

            log.info("========== 세션의 custNo는 " + custNo + "============");

            ms.setCustNo(custNo); // custNo set
            ms.setClassDate(tdate); // 특정일자 set

            list = myScheduleService.isReserved_day(ms); // 특정일자 예약된 스케줄 모두 추출

            for (MySchedule obj : list) {
                JSONObject jo = new JSONObject();
                jo.put("myscheduleNo", obj.getMyscheduleNo());
                jo.put("classNo", obj.getClassNo());
                jo.put("purchaseNo", obj.getPurchaseNo());
                jo.put("scheduleCompleted", obj.getScheduleCompleted());
                jo.put("sheduleCanceled", obj.getSheduleCanceled());
                jo.put("className", obj.getClassName());
                jo.put("gymName", obj.getGymName());
                jo.put("trainerName", obj.getTrainerName());
                jo.put("classDate", obj.getClassDate());
                jo.put("classStarttime", obj.getClassStarttime());
                jo.put("classEndtime", obj.getClassEndtime());
                jo.put("sportsType", obj.getSportsType());
                jo.put("sportsClasstype", obj.getSportsClasstype());

                ja.add(jo);
            }

        }

        return ja;
    }


    @RequestMapping("/getReservedclass")
    @ResponseBody
    public Object getReservedclass(Model model, HttpSession session) throws Exception {
        log.info("===== 예약 완료 된 것을 찍어보겠습니다 =====");

        Cust cust = null;
        int custNo = 0;
        List<MySchedule> list = null;
        JSONArray ja = new JSONArray();

        // 세션에서 cust, custNo 가져오기
        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            custNo = cust.getCustNo();

            log.info("========== 세션의 custNo는 " + custNo + "============");

            list = myScheduleService.isReserved(custNo); // 예약된 스케줄 모두 추출

            for (MySchedule obj : list) {
                JSONObject jo = new JSONObject();
//                jo.put("date", obj.getClassDate());
//                jo.put("start", DateUtil.getTimeStr(obj.getClassStarttime()));
//                jo.put("end", DateUtil.getTimeStr(obj.getClassEndtime()));
                jo.put("title", obj.getClassName());
                jo.put("date", obj.getClassDate());
                jo.put("start", DateUtil.getTimeStr(obj.getClassStarttime()));
                jo.put("end", DateUtil.getTimeStr(obj.getClassEndtime()));
                jo.put("myscheduleNo", obj.getMyscheduleNo());
                jo.put("classNo", obj.getClassNo());
                ja.add(jo);
            }

        }

        return ja;
    }



}
