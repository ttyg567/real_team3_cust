package com.kbstar.GBMember;

import com.kbstar.service.GBMemberService;
import com.kbstar.service.GroupboardService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

// 5.31 게시글번호 2번으로 삭제 성공
@Slf4j
@SpringBootTest
class DeleteTest {
    @Autowired
    GBMemberService service;
    @Test
    void contextLoads() {
         try {
            service.remove(1);
            service.get();
        } catch (Exception e) {
             log.info("오류");
         }
    }

}
