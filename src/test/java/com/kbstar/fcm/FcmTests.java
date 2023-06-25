package com.kbstar.fcm;

import com.kbstar.util.PushNotificationUtil;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;
import java.net.URLEncoder;

@Slf4j
@SpringBootTest
class FcmTests {

    @Autowired
    private PushNotificationUtil pushNotificationUtil;

    @Test
    void contextLoads() throws IOException {

        String title = "오운완 이벤트 쿠폰";
        String message = "오늘도 수고 많으셨어요";

        String encodedTitle = URLEncoder.encode(title, "UTF-8");
        String encodedMessage = URLEncoder.encode(message, "UTF-8");


//        pushNotificationUtil.sendCommonMessage("SPRING", "SPRING", "/cust/register");
        pushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/coupon/show", "e9ofDL7CSTu7_TfF0p3DaR:APA91bHuXvnrpfJst1krSsaflIZy1-B--iyx06KmY4nCLnqhvehoIQVMZtp2JRXB9mz0Pb0r3Y6JE-nIfPU998bHer0l0Y7odg_mpxhf_TF7b8-AycCpv0fH0RpSFh9wD0Fo25zO-KUl");
//        pushNotificationUtil.sendCommonMessage(encodedTitle, encodedMessage, "/coupon/show", "e9ofDL7CSTu7_TfF0p3DaR:APA91bHuXvnrpfJst1krSsaflIZy1-B--iyx06KmY4nCLnqhvehoIQVMZtp2JRXB9mz0Pb0r3Y6JE-nIfPU998bHer0l0Y7odg_mpxhf_TF7b8-AycCpv0fH0RpSFh9wD0Fo25zO-KUl");
    }

}
