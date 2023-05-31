package com.kbstar.Groupboard;

import com.kbstar.service.GroupboardService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
// 5.31 게시글 전체 조회 성공
@Slf4j
@SpringBootTest
class SelectAllTest {
    @Autowired
    GroupboardService service;
    @Test
    void contextLoads() {
        try {
            service.get();
        } catch (Exception e) {
            log.info("에러..");
            //e.printStackTrace();
        }
    }

}
