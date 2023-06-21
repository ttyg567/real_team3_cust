package com.kbstar.Cust;

import com.kbstar.dto.Cust;
import com.kbstar.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateInfoTest {
    @Autowired
    CustService service;
    @Test
    void contextLoads() {
        Cust cust = new Cust("010-1234-5679", "1", "1","1","1");
       cust.setCustEmail("test1@naver.com");
        try {
            try {
                // SQL 문 실행
                service.updateInfo(cust);
                service.get();
            } catch (Exception e) {
                log.info("오류");
            }

        } catch (Exception e) {
            log.info("오류");
        }

    }

}
