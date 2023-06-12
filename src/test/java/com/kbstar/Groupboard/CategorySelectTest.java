package com.kbstar.Groupboard;

import com.kbstar.service.GroupboardService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

// 5.30 게시글번호 2번으로 조회 성공
@Slf4j
@SpringBootTest
class CategorySelectTest {
    @Autowired
    GroupboardService service;
    @Test
    void contextLoads() {
        try {
            log.info("=================================");
            service.getcategory("1");
            log.info("=================================");
        } catch (Exception e) {
            log.info("오류");
        }
    }

}
