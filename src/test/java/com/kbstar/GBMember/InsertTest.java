package com.kbstar.GBMember;


import com.kbstar.dto.GBMember;
import com.kbstar.dto.Groupboard;
import com.kbstar.service.GBMemberService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

// 5.31 게시글번호 1번 입력 성공
@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    GBMemberService service;
    @Test
    void contextLoads() {
        GBMember gbMember;
        gbMember = new GBMember(4, 3, "1" );
        try {
            service.register(gbMember);
            service.get();
        } catch (Exception e) {
            if(e instanceof DuplicateKeyException){
                log.info("ID가 중복 되었습니다.-------------------------------");
            }else{
                log.info("시스템 장애입니다.----------------------------------");
            }
        }
    }

}
