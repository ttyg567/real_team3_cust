package com.kbstar.controller;

import java.io.IOException;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kbstar.dto.Cust;
import com.kbstar.dto.MySchedule;
import com.kbstar.service.MyScheduleService;
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

    @RequestMapping("/modifyCompleted")
    public void modifyCompleted(Model model, HttpSession session) throws Exception {

    }

//    @RequestMapping("/modifyCompleted")
//    public void modifyCompleted(Model model, HttpSession session) throws Exception {
//
//        // custNo를 사용하여 수업 스케줄 조회
//        Cust cust = null;
//        int custNo = 0;
//        MySchedule mySchedule = new MySchedule();
//
//        // 세션에서 cust, custNo 가져오기
//        if (session != null) {
//            cust = (Cust) session.getAttribute("logincust");
//            custNo = cust.getCustNo();
//            mySchedule.setCustNo(custNo);
//            log.info("========== 세션의 custNo는 " + custNo + "============");
//
//            // 이미지 처리 후에 운동 완료 처리
//            myScheduleService.modify(mySchedule);
//        }
//    }
}
