package com.kbstar.Cart;

import com.kbstar.dto.Cust;
import com.kbstar.dto.GBMember;

import com.kbstar.dto.Like1;
import com.kbstar.service.LikeService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

@SpringBootTest
@Slf4j
public class InsertTest {
    @Autowired
    LikeService service;
    @Test
    void contextLoads() throws Exception {
        Like1 like = new Like1(9,3001);
        try {
            service.register(like);
            service.get();
        } catch (Exception e) {
                log.info("시스템 장애입니다.----------------------------------");
                e.printStackTrace();
            }
        }
    }


