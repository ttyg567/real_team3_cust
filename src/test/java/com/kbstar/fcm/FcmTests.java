package com.kbstar.fcm;

import com.kbstar.util.PushNotificationUtil;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

@Slf4j
@SpringBootTest
class FcmTests {

    @Autowired
    private PushNotificationUtil pushNotificationUtil;

    @Test
    void contextLoads() throws IOException {

//        pushNotificationUtil.sendCommonMessage("SPRING", "SPRING", "/cust/register");
        pushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/coupon/show", "ffAHvA4qTLmfIVlLzzAf0H:APA91bGKsUKTlpgfSvSDo0szhMvI9heeGA21T0V-iyowKYFRUtymdVLmLROzqysLkly0Fr72OnK4YMZNz5XN9Uw_D_5cP8pH5qGalGTKnKRI_YaSH0rqhR-n90jk9HnPpdQp1CTCv-Iw");
    }

}
