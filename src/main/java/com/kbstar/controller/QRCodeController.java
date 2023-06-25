package com.kbstar.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kbstar.dto.Coupon;
import com.kbstar.dto.Cust;
import com.kbstar.dto.MySchedule;
import com.kbstar.service.CouponService;
import com.kbstar.service.MyScheduleService;
import com.kbstar.util.PushNotificationUtil;
import com.kbstar.util.QRCodeUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.zxing.WriterException;

@Controller
@Slf4j
public class QRCodeController {

    @Autowired
    MyScheduleService myScheduleService;

    @Autowired
    CouponService couponService;

    @Autowired
    private PushNotificationUtil pushNotificationUtil; // 푸쉬알림

    @RequestMapping("/services/qrcode/text2qrcode.do")
    public void text2QRCode(@RequestParam("width") int width,
                            @RequestParam("height") int height,
                            @RequestParam("text") String text, HttpServletResponse response
                            , HttpSession session)
            throws IOException, WriterException {

        // custNo를 사용하여 수업 스케줄 조회
        Cust cust = null;
        int custNo = 0;
        MySchedule mySchedule = new MySchedule();

        // 세션에서 cust, custNo 가져오기
        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            custNo = cust.getCustNo();
            mySchedule.setCustNo(custNo);
            log.info("========== 세션의 custNo는 " + custNo + "============");

            // 이미지 처리 후에 운동 완료 처리
            try {
                myScheduleService.modify(mySchedule);
                // 운동완료 이벤트 대상이면 쿠폰을 발송한다!
                custCompletedUpdate(custNo);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        // 이미지로 변환하여 응답으로 전송
        ServletOutputStream sos = response.getOutputStream();
        QRCodeUtils.text2QRCode(text, width, height, sos);
        sos.flush();
        sos.close();
    }

    public void custCompletedUpdate(Integer custNo) throws Exception {

        log.info("알람 진입");

        Coupon target_list = null;
        Coupon cp = null;

        // 당일 운동 완료 내역 있으면 토큰을 걍 받아오자.
        target_list = couponService.getCouponcust_completed(custNo);

        log.info("==상태를 봐야겠음==" + target_list);

        String clientToken = target_list.getCustToken().replaceAll("\\s+", ""); // 토큰에서 공백 제거
        log.info("=== 쿠폰 대상 번호는 === " + target_list.getCustNo() + "=====");
        log.info("=== 쿠폰 대상 이름은 === " + target_list.getCustName() + "=====");
        log.info("=== 쿠폰 대상 토큰은 === " + clientToken + "=====");

        couponService.getCouponcust_update(target_list); // 쿠폰 발행으로 업데이트
        cp = couponService.getTodaymycoupon(target_list.getCustNo()); // 현재 시간 기준으로 직전에 보낸 쿠폰을 추출

        pushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/coupon/show?couponNo="+cp.getCouponNo(), clientToken);

    }
}
