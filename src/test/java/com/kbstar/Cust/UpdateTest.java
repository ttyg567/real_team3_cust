package com.kbstar.Cust;

import com.kbstar.dto.Cust;
import com.kbstar.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {
    @Autowired
    CustService service;
    @Test
    void contextLoads() {
//        Cust cust = new Cust("mung", "이망치","010-1234-1111",1992,"1");
        try {
//            service.modify(cust);
            service.get();
        } catch (Exception e) {
            log.info("오류");
        }

    }

}
