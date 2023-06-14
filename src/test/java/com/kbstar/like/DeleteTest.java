package com.kbstar.like;

import com.kbstar.dto.Like1;
import com.kbstar.service.CustService;
import com.kbstar.service.LikeService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class DeleteTest {
    @Autowired
    LikeService service;
    @Test
    void contextLoads() {

         try {
            service.remove(9);

        } catch (Exception e) {
             log.info("오류");
         }
    }

}
