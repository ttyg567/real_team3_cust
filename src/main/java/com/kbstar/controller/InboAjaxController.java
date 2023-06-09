package com.kbstar.controller;


import com.kbstar.dto.*;
import com.kbstar.service.*;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Slf4j
@RestController // ajax에서 요청이 들어오면 그 요청을 받고 전달하는 곳! @RestController
public class InboAjaxController {
    // imgdir 세팅하면, cust가 조인개설할 때 첨부한 이미지정보를
    // 애플리케이션 프로퍼티에 정해둔, uimg/ 폴더에 집어넣는다.
    @Value("${uploadimgdir}")
    String imgdir;
    @Autowired
    GroupboardService groupboardService;
    @Autowired
    GBMemberService gbMemberService;
    @Autowired
    GymService gymService;
    @Autowired
    TicketService ticketService;
    @Autowired
    GymMachineService gymMachineService;
    @Autowired
    MyMachineService myMachineService;
    @Autowired
    CustService custService;
    String dir = "groupboard/";
    @RequestMapping("/notificationimpl")
    public String notificationimpl(Model model, Integer custNo,HttpSession session) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        // cust 객체에는 form 데이터가 자동으로 바인딩되어 전달됩니다.
        if (cust.getMarketingStatus() == null || cust.getMarketingStatus().equals("0")) {
            custService.updateNoti(cust); // 최초 등록 시엔 마케팅 동의여부를 '1'로 인서트하기
        }
        // 재등록 시엔 마케팅 동의여부를 '0'으로 변경하고,
        // '0'으로 변경한 고객이 다시 버튼 누르면 '1'로 또 바꿔주기
        else if (cust.getMarketingStatus().equals("1")) {
            custService.clearNoti(cust);
        }
        session.setAttribute("logincust", cust);
        return "redirect:/discount/";
    }




    // 4-2-2. 조인 만들기에서 센터 검색
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public Object search(@RequestParam("gymName") String gymName, Integer gymNo,Model model) {

        gymSearch gs = new gymSearch();

        gs.setGymName(gymName); // 검색어 설정
        //gs.setGymNo(gymNo); // 검색어 설정

        List<Gym> gymlist = gymService.search(gs); // 상품 검색 수행

        if (gymlist != null) {

            JSONArray ja = new JSONArray();
            for(Gym obj : gymlist){
                JSONObject jo = new JSONObject();

                jo.put("gymName", obj.getGymName());
                jo.put("gymNo", obj.getGymNo());
                ja.add(jo);
            }
            return ja;
        }
        return "fail";


    }
    // 4-2-3. 조인 만들기에서 이용권 검색
    @RequestMapping(value = "/ticketsearch", method = RequestMethod.GET)
    public Object ticketsearch(@RequestParam("ticketName") String ticketName,Model model) {

        TicketSearch ts = new TicketSearch();

        ts.setTicketName(ticketName); // 검색어 설정
        //gs.setGymNo(gymNo); // 검색어 설정

        List<Ticket> ticketlist = ticketService.search(ts); // 상품 검색 수행

        if (ticketlist != null) {

            JSONArray ja = new JSONArray();
            for(Ticket obj : ticketlist){
                JSONObject jo = new JSONObject();

                jo.put("ticketName", obj.getTicketName() );
                jo.put("ticketNo", obj.getTicketNo());
                ja.add(jo);
            }
            return ja;
        }
        return "fail";

    }
    // 만들어진 보드의 센터위치를 지도로 보여주기
    @RequestMapping("/getgymaddress")
    public Object getgymaddress(Model model, Integer gymNo) throws Exception { // ajax에서 보내주는 값 : loc.
        log.info("센터 지도 얻어오기 화면 호출");
        Groupboard groupboard = null;
        try {
            groupboard = groupboardService.get(gymNo);
        } catch (Exception e) {
            throw new Exception("ER0003");
        }
        // 위 데이터를
        JSONObject jo = new JSONObject();

        jo.put("gymNo", groupboard.getGymNo() ); // 센터 번호
        jo.put("groupboardNo", groupboard.getGroupboardNo() ); // 게시글 번호
        jo.put("gymAddress1", groupboard.getGymAddress1() ); // 센터 전체주소

        log.info("센터 지도 얻어오기 화면 호출 결과" + groupboard.getGymAddress1());

        return jo;
    }



}
