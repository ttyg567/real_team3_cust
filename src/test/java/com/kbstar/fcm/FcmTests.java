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
//        pushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/coupon/show?couponNo="+24, "fRWwsGIRRw2U-tuhPYwng4:APA91bHsla7S9VBvhhVdU_SGGrMPMiTw47hQ6Fd77eGQz6XyyAsXVjndxJMjdcIHk-ayeb8k-8P8RDY5PTo7_t5QwhRNk6llDK2envljb7JFbdMqbmsXenJR5vGaWZNvLfd0G-d9afXj");
//        pushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/coupon/show?couponNo="+25,  "eLTC8rfpQqeWLE1DDs8dY1:APA91bFdqm7IK3qc22AKpiemV5f1lOQ30NCcbgXDNY7uuZ9Y1vtzgTvThPngOKhxlKoYFSl4JhjT_FfAjVF3PQPLut90aWHYxl8YcFAW6D4xtCyoaVvqKY-oIRvjlWwsT9lWst4ys4OQ");
        pushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/cust/login",  "d6gzDxsqQM2HvQqm-Obvfr:APA91bGkDuxJaNKOlVNkUQYud6Q2t7-gXHz7s1SZSnQ5Dfvsr0NYB2Z2oyHABeUngcqYL5kq_ubPfvv3EPhp-g-hsqJ1My56naCoUDnyfTYPhJ4jYrAx5p3DS4EnkeeZ4QBX_34Oft5o");
    }

    // https://115.85.183.166/coupon/received?couponNo=25

}
