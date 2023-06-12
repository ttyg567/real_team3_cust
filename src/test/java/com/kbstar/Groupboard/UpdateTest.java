package com.kbstar.Groupboard;

import com.kbstar.dto.Groupboard;
import com.kbstar.service.GroupboardService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
// 5.31 게시글번호 2번 내용 수정 성공
@Slf4j
@SpringBootTest
class UpdateTest {
    @Autowired
    GroupboardService service;
    @Test
    void contextLoads() {


//        Groupboard groupboard = new Groupboard(2, 2, 4001, "라인 만들기 같이 막차타여\uD83D\uDE25", "룰루랄라 같이 운동해여", "join3.jpg", "null", "5", 2, 0, 0, "1", 1, null);
        try {
//            service.modify(groupboard);
            service.get();
        } catch (Exception e) {
            log.info("오류");
        }

    }

}
