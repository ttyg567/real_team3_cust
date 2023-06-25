package com.kbstar.fcm;

import com.kbstar.util.PushNotificationUtil2;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

@Slf4j
@SpringBootTest
class FcmTests2 {

    @Autowired
    private PushNotificationUtil2 pushNotificationUtil;
    String userToken = "dAJGkzxUQbWyuKumSJn1G_:APA91bEoqYVd8t8ypcVUkBoZZ46rneBjwZbqAy61xXF4zvNHUyhbVqtSobDXU_60_Pa5wI3JWSghsC7T1Pucn06f40LuTjGLQRANxasrE2tCdXMOCd3bE3A3t9-Z2RStL2al-M9aZiPM";
    String imgUrl = "https://www.w3schools.com/css/img_5terre.jpg";
    @Test
    void contextLoads() throws IOException {

        pushNotificationUtil.sendCommonMessage("SPRING ", "hello", "/cust/login", imgUrl);
        //pushNotificationUtil.sendTargetMessage("SPRING title4tti", "hello", "/register", userToken);

    }

}