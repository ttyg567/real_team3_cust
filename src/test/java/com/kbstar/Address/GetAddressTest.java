package com.kbstar.Address;

import com.kbstar.util.AddressUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.junit.jupiter.api.Test;

@Slf4j
public class GetAddressTest {
    @Test
    void contextLoads() throws Exception {

        String[] arr = {"서울", "경기", "인천광역시", "강원도", "충청북도", "충청남도", "대전광역시", "경상북도", "경상남도", "울산광역시",
                "대구광역시", "부산광역시", "전라북도", "전라남도", "광주", "제주특별자치도"};

        /******************************************************************/
        // 서울 : 25구
        // 경기 : 22시 -> 28시 3군 (너무 많아서 다 안나오는 듯....)
        // 인천광역시 : 8구 2군
        // 강원도 : 200 데이터 없음 --> 7시 11군 (api 에러로 하드코딩 - register.jsp)
        // 충청북도 : 3시 3군 -> 3시 8군 (진천군, 음성군, 증평군, 단양군, 영동군 없음)
        // 충청남도 : 6시 1군 -> 8시 7군 (봐야댐..)
        // 대전광역시 : 5구
        // 경상북도 : 7시 --> 10시 13군 (봐야댐..)
        // 경상남도 : 7시 2군 --> 8시 10군 (봐야댐..)
        // 울산광역시 : 4구 1군
        // 대구광역시 : 7구 1군
        // 부산광역시 : 15구 1군
        // 전라북도 : 6시 2군 --> 6시 8군
        // 전라남도 : 5시 4군 --> 5시 17군
        // 제주특별자치도 : 2시

        JSONArray result = null;
//        for (String item : arr) {
            result = (JSONArray) AddressUtil.getAddress("강릉시"); /* 강원도 안나옴 */ /* 이상 : 대전, 대구에 해운대? 순천시? 부산에 오산시?
            광주에 광주시...? */
//        }
        log.info(String.valueOf(result));
    }
}