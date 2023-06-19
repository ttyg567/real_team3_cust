package com.kbstar.Cust;

import com.kbstar.dto.Cust;
import com.kbstar.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

@Slf4j
@SpringBootTest
class InsertcustimgTest {

    @Autowired
    CustService service;
    @Test
    void contextLoads() {
        Cust cust = new Cust();
        cust.setCustNo(2);
        cust.setCustImgName("ma.jpg");
        try {
            service.updateCustImgName(cust);
            service.get();
        } catch (Exception e) {
            if (e instanceof DuplicateKeyException) {
                log.info("ID가 중복 되었습니다.-------------------------------");
            } else {
                log.info("시스템 장애입니다.----------------------------------");
            }
        }
    }
}
