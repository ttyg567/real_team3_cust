package com.kbstar.controller;

import com.google.gson.JsonObject;
import com.kbstar.dto.Coupon;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Groupboard;
import com.kbstar.dto.Gym;
import com.kbstar.service.CouponService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/coupon")
public class CouponController {

    String dir = "coupon/";

    @Autowired
    CouponService couponService;

//    @RequestMapping("/sendimpl")
//    public String sendimpl(Model model, Integer couponNo, Integer custNo) throws Exception {
//
//        log.info("쿠폰 전송 시작");
//        log.info("쿠폰 넘버" + couponNo);
//        log.info("고객 넘버" + custNo);
//
//        pushNotificationUtil.sendCommonMessage("헬쓱 쿠폰 도착!", "헬쓱이를 위한 쿠폰이 도착했어요!!", "/coupon/show");
//        return "index";
//    }

    @RequestMapping("/show")
    public String show(Model model, @RequestParam("couponNo") Integer couponNo) throws Exception {
        log.info("쿠폰보여주기 진입");
        model.addAttribute("couponNo", couponNo);
        model.addAttribute("center", dir + "show");
        return "index";
    }

    @RequestMapping("/received")
    public String received(Model model, Integer couponNo, HttpSession session) throws Exception {
        log.info("쿠폰 열기");

        Cust cust = null;
        int custNo = 0;
        Coupon couponOpen = null;

//        if (session != null) {
//            cust = (Cust) session.getAttribute("logincust");
//            custNo = cust.getCustNo();
//
//            log.info("==============찍어보자" + custNo);

        couponOpen = couponService.get(couponNo); // 쿠폰번호로 쿠폰 불러오기

//            String couponIsdateStr = new SimpleDateFormat("yyyy-MM-dd").format(coupon.getCouponIsdate());
//            String couponExdateStr = new SimpleDateFormat("yyyy-MM-dd").format(coupon.getCouponIsdate());

//            coupon.setCouponIsdate(couponIsdateStr);
//            coupon.setCouponExdate(couponExdateStr);

            model.addAttribute("couponOpen", couponOpen);
            model.addAttribute("center", dir + "received");
            return "index";
//        }
//
//        return "redirect:/loginplz"; // 로그인 후 이용해주세요 !!!!!
    }

    // 나의 쿠폰함
    @RequestMapping("/my_coupon")
    public String my_coupon(Model model, Integer custNo, HttpSession session, HttpServletRequest request) throws Exception {
        List<Coupon> list1 = null;
        List<Coupon> list2 = null;
        // 로그인 체크
        Cust cust = (Cust) session.getAttribute("logincust");
        if (cust == null) {
            // 로그인 완료한 뒤 다시 돌아오도록 url 저장
            String redirectUrl = "/coupon/my_coupon?custNo=" + custNo;
            request.getSession().setAttribute("redirectUrl", redirectUrl);
            return "redirect:/login"; // 로그인하지 않은 경우 로그인 페이지로 리다이렉트
        }

        try {
            list1 = couponService.getMycoupon(custNo); // 고객의 조인 정보를 list에 담기.
            list2 = couponService.getMyusedcoupon(custNo);

            // 쿠폰 이름을 바꿔주기 (할인권 --> 티켓 이름 10% 할인권
            for(Coupon item1 : list1){
                if(item1.getCouponCode().trim().equals("3"))
                    item1.setCouponName(item1.getGymName()+" "+item1.getTicketName()+" "+(int) Math.floor(item1.getCouponRate())+"% "+"할인권");
                else
                    item1.setCouponName(item1.getCouponName()+" "+"상품권");
            }
            for(Coupon item2: list2){
                if(item2.getCouponCode().trim().equals("3"))
                    item2.setCouponName(item2.getGymName()+" "+item2.getTicketName()+" "+(int) Math.floor(item2.getCouponRate())+"% "+"할인권");
                else
                    item2.setCouponName(item2.getCouponName()+" "+"상품권");
            }

        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("mycoupon", list1); // 내가 참여한 쿠폰정보 보기
        model.addAttribute("myusedcoupon", list2); // 내가 만든 쿠폰정보 보기
        model.addAttribute("center", dir + "my_coupon");
        return "index"; // 로그인 후 "my_applyjoin" 페이지로 이동
    }

    // pay 시 나의 쿠폰 조회 (위에 my_coupon은 스타벅스쿠폰도 보여주고, 티켓과 매칭이 안되기 때문에)
    @RequestMapping("/pay_my_coupon")
    @ResponseBody
    public Object pay_my_coupon(Model model, Integer custNo, Integer ticketNo, HttpSession session, HttpServletRequest request) throws Exception {
        List<Coupon> list = null;
        JSONArray ja = new JSONArray();
        Coupon cp = new Coupon();
        // 로그인 체크
//        Cust cust = (Cust) session.getAttribute("logincust");

        cp.setCustNo(custNo);
        cp.setTicketNo(ticketNo);
        list = couponService.payMycoupon(cp);


        for(Coupon item : list){
            JSONObject jo = new JSONObject();
            jo.put("couponNo", item.getCouponNo());
            jo.put("couponRate", item.getCouponRate());
            jo.put("couponIsdate", item.getCouponIsdate());
            jo.put("couponExdate", item.getCouponExdate());
            jo.put("couponName", item.getCouponName());
            jo.put("couponCode", item.getCouponCode());
            jo.put("ticketNo", item.getTicketNo());
            jo.put("ticketName", item.getTicketName());
            jo.put("myCoupon", item.getTicketName()+" "+(int) Math.floor(item.getCouponRate())+"%");
            jo.put("finalPrice", item.getTicketPrice()*(100-item.getCouponRate())/100); //결제 최종가격
            ja.add(jo);
        }

        return ja;
    }

    // 쿠폰정보를 다시 불러온다 (자바스크립트에서 잘 안되서 ajax 한번 더 호출)
    @RequestMapping("/finalcoupon")
    @ResponseBody
    public Object finalcoupon(Model model, Integer couponNo) throws Exception {
        Coupon cp = new Coupon();

        cp = couponService.get(couponNo);

        JSONObject jo = new JSONObject();

        jo.put("couponNo", cp.getCouponNo());
        jo.put("couponRate", cp.getCouponRate());
        jo.put("couponIsdate", cp.getCouponIsdate());
        jo.put("couponExdate", cp.getCouponExdate());
        jo.put("couponName", cp.getCouponName());
        jo.put("couponCode", cp.getCouponCode());
        jo.put("ticketNo", cp.getTicketNo());
        jo.put("ticketName", cp.getTicketName());
        jo.put("myCoupon", cp.getTicketName()+" "+ cp.getCouponRate()+"%");
        jo.put("finalPrice", cp.getTicketPrice()*(100-cp.getCouponRate())/100); //결제 최종가격

        return jo;
    }
}
