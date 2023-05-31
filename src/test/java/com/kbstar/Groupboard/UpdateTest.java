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
        Groupboard groupboard = new Groupboard(1, 2, 3001, "가치 오운완 할 분!\uD83D\uDE33", "개인 운동보단 같이하면 헬스이용권도 싸게 구매하고 독려하면서 끝까지 운동해보실 분 구해요~~", "join1.jpg", "null", "2", 2, 0, 0, "1", 1, null);
        try {
            service.modify(groupboard);
            service.get();
        } catch (Exception e) {
            log.info("오류");
        }

    }

}
