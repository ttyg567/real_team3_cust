package com.kbstar.controller;

import com.kbstar.dto.Coupon;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.service.CouponService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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

        return "redirect:/"; // 다른 페이지를 개설 할 것! 로그인 후 이용해주세요 !!!!!
    }
}
