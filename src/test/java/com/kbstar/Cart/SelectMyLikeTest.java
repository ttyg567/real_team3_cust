package com.kbstar.Cart;

import com.kbstar.service.LikeService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class SelectMyLikeTest {
    @Autowired
    LikeService service;
    @Test
    void contextLoads(){
        try {
            service.getmylike(2); // uid 란? 로그인한 고객
            log.info("=========== 고객이 like한 상품 조회 완료============");
        } catch (Exception e) {
            log.info("에러...");
            e.printStackTrace();
        }
    }
}
