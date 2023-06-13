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

        String[] arr = {"서울특별시", "경기도", "인천광역시", "강원도", "충청북도", "충청남도", "대전광역시", "경상북도", "경상남도", "울산광역시",
                "대구광역시", "부산광역시", "전라북도", "전라남도", "광주광역시", "제주특별자치도"};

        JSONArray result = null;
//        for (String item : arr) {
            result = (JSONArray) AddressUtil.getAddress("인천광역시");
//        }
        log.info(String.valueOf(result));
    }
}
