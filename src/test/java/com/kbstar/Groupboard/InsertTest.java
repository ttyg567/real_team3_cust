package com.kbstar.Groupboard;


import com.kbstar.dto.Groupboard;
import com.kbstar.service.GroupboardService;
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
    GroupboardService service;
    @Test
    void contextLoads() {
        Groupboard groupboard;
        groupboard = new Groupboard( 1, 1, "헬스이용권공동", "공동구매멤버 구함", "null", "null", "1", 2, 0, 0, "1", 1,  null);
        try {
            service.register(groupboard);
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
