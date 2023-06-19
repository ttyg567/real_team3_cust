package com.kbstar.controller;

import com.kbstar.dto.Class;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.dto.MySchedule;
import com.kbstar.service.ClassService;
import com.kbstar.service.MyScheduleService;
import com.kbstar.service.PurchaseService;
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

    @Autowired
    PurchaseService purchaseService;

    ////////////////////// 수업예약 ///////////////////////

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
                jo.put("purchaseNo", obj.getPurchaseNo());
                jo.put("ticketNo", obj.getTicketNo());
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

            // title, start, end는 필수이고, start와 end는 반드시 밑에처럼 써야 함. 날짜만 쓰면 안나옴 //
            if (class_all_list == null) {
                log.info("null 이다..");
            } else {
                for (Class obj : class_all_list) {
                    JSONObject jo = new JSONObject();

                    jo.put("title",obj.getClassName());
                    jo.put("start", DateUtil.getDateStr(obj.getClassDate()) + "T" + DateUtil.getTimeStr(obj.getClassStarttime()));
                    jo.put("end", DateUtil.getDateStr(obj.getClassDate()) + "T" + DateUtil.getTimeStr(obj.getClassEndtime()));
//                    jo.put("start", DateUtil.getDateStr(obj.getClassDate()));
//                    jo.put("end", DateUtil.getDateStr(obj.getClassDate()));

                    ja.add(jo);
                }
            }
        }
        return ja;
    }

    @RequestMapping("/reserve")
    @ResponseBody
    public String reserve(Model model, Integer classNo, Integer purchaseNo, Integer ticketNo, HttpSession session) throws Exception {
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
            ms.setPurchaseNo(purchaseNo);
            ms.setCustNo(custNo);

            myScheduleService.register(ms); // 수업예약
            myScheduleService.reserve_update_classJoin(ms); // 수업예약하면 수업정보에 참가인원을 +1 해줌
            myScheduleService.reserve_update_usedCnt(ms); // 수업예약하면 구매 이용권에 사용횟수를 +1 해줌

            return "success";

        }

        return "fail";
    }

    ////////////////////// 예약내역조회 및 취소 ///////////////////////

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
                jo.put("purchaseNo", obj.getPurchaseNo());

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
                jo.put("id", obj.getMyscheduleNo()); // id 속성 추가
                jo.put("title", obj.getClassName());
                jo.put("start", DateUtil.getDateStr(obj.getClassDate()) + "T" + DateUtil.getTimeStr(obj.getClassStarttime()));
                jo.put("end", DateUtil.getDateStr(obj.getClassDate()) + "T" + DateUtil.getTimeStr(obj.getClassEndtime()));
                jo.put("date", obj.getClassDate());
                jo.put("myscheduleNo", obj.getMyscheduleNo());
                jo.put("classNo", obj.getClassNo());
                jo.put("purchaseNo", obj.getPurchaseNo()); // 여기 넣어줘야 함!!
                ja.add(jo);
            }

        }

        log.info("=1=1=" + ja.toJSONString() + "=1=1=");
        return ja;
    }

    @RequestMapping("/cancel")
    @ResponseBody
    public String cancel(Model model, Integer classNo, Integer purchaseNo, HttpSession session) throws Exception {
        log.info("수업을 취소하겠습니다.");
        log.info("수업 번호는 " + classNo);

        MySchedule ms = new MySchedule();
        Cust cust = null;
        int custNo = 0;

        if (session != null) {

            cust = (Cust) session.getAttribute("logincust");
            custNo = cust.getCustNo();

            log.info("========== 세션의 custNo는 " + custNo + "============");

            ms.setClassNo(classNo);
            ms.setPurchaseNo(purchaseNo);
            ms.setCustNo(custNo);

            myScheduleService.cancelClass(ms); // 예약한 수업 취소
            myScheduleService.cancel_update_sheduleCanceled(ms); // 수업취소하면 고객 예약에서 운동 취소여부를 '여'로 바꿔줌
            myScheduleService.cancel_update_classJoin(ms); // 수업취소하면 수업정보에 참가인원을 -1 해줌
            myScheduleService.cancel_update_usedCnt(ms);  // 수업취소하면 구매 이용권에 사용횟수를 -1 해줌

            return "success";

        }

        return "fail";
    }



}
