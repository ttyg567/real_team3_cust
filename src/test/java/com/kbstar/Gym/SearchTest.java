package com.kbstar.Gym;

import com.kbstar.dto.gymSearch;
import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

// 인보. 6.1 센터이름 중 "성" 들어가는 내역 조회 성공
@SpringBootTest
@Slf4j
public class SearchTest {
    @Autowired
    GymService service;
    @Test
    void contextLoads(){
        gymSearch gs = new gymSearch("성");
        try {
                service.search(gs);
            log.info("=========== 판매 상품 검색 완료============");
        } catch (Exception e) {
            log.info("에러...");
            e.printStackTrace();
        }
    }
}
