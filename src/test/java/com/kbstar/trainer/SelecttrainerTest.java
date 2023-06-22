package com.kbstar.trainer;

import com.kbstar.service.LikeService;
import com.kbstar.service.TrainerService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class SelecttrainerTest {
    @Autowired
    TrainerService service;
    @Test
    void contextLoads(){
        try {
            service.getAll(3);
            log.info("=========== 해당 센터의강사진 조회 완료============");
        } catch (Exception e) {
            log.info("에러...");
            e.printStackTrace();
        }
    }
}
