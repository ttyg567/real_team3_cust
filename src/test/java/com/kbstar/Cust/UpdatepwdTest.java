package com.kbstar.Cust;

import com.kbstar.dto.Cust;
import com.kbstar.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdatepwdTest {
    @Autowired
    CustService service;
    @Test
    void contextLoads() {
//        Cust cust = new Cust("mung", "이망치","010-1234-1111",1992,"1");
        Cust cust =new Cust();
        cust.setCustEmail("test3@naver.com");
        cust.setCustPwd("5678");
        try {
            service.updatePwd(cust);
            service.get();
        } catch (Exception e) {
            log.info("오류");
        }

    }

}
