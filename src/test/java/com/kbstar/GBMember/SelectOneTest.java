package com.kbstar.GBMember;

import com.kbstar.service.GBMemberService;
import com.kbstar.service.GroupboardService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

// 5.31
@Slf4j
@SpringBootTest
class SelectOneTest {
    @Autowired
    GBMemberService service;
    @Test
    void contextLoads() {
        try {
            log.info("=================================");
            service.getApplicationMemberCount(1);
            log.info("=================================");
        } catch (Exception e) {
            log.info("오류");
        }
    }

}
