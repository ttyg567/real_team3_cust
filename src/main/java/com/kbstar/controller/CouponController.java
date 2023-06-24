package com.kbstar.controller;

import com.kbstar.dto.Coupon;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Groupboard;
import com.kbstar.dto.Gym;
import com.kbstar.service.CouponService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String show(Model model, Integer couponNo) throws Exception {
        model.addAttribute("center", dir + "show");
        return "index";
    }

    @RequestMapping("/received")
    public String received(Model model, Integer couponNo, HttpSession session) throws Exception {
        log.info("쿠폰 열기");

        Cust cust = null;
        int custNo = 0;
        Coupon coupon = null;

        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            custNo = cust.getCustNo();

            log.info("==============찍어보자" + custNo);

            coupon = couponService.getTodaymycoupon(custNo);

//            String couponIsdateStr = new SimpleDateFormat("yyyy-MM-dd").format(coupon.getCouponIsdate());
//            String couponExdateStr = new SimpleDateFormat("yyyy-MM-dd").format(coupon.getCouponIsdate());

//            coupon.setCouponIsdate(couponIsdateStr);
//            coupon.setCouponExdate(couponExdateStr);

            model.addAttribute("couponOpen", coupon);
            model.addAttribute("center", dir + "received");
            return "index";
        }

        return "redirect:/loginplz"; // 로그인 후 이용해주세요 !!!!!
    }

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

        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("mycoupon", list1); // 내가 참여한 조인정보 보기
        model.addAttribute("myusedcoupon", list2); // 내가 만든 조인정보 보기
        model.addAttribute("center", dir + "my_coupon");
        return "index"; // 로그인 후 "my_applyjoin" 페이지로 이동
    }
}
