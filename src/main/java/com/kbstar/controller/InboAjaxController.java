package com.kbstar.controller;


import com.kbstar.dto.Gym;
import com.kbstar.dto.gymSearch;
import com.kbstar.service.GBMemberService;
import com.kbstar.service.GroupboardService;
import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController // ajax에서 요청이 들어오면 그 요청을 받고 전달하는 곳! @RestController
public class InboAjaxController {
    // imgdir 세팅하면, cust가 조인개설할 때 첨부한 이미지정보를
    // 애플리케이션 프로퍼티에 정해둔, uimg/ 폴더에 집어넣는다.
    @Value("${uploadimgdir}")
    String imgdir;
    @Autowired
    GroupboardService groupboardService;
    @Autowired
    GBMemberService gbMemberService;
    @Autowired
    GymService gymService;
    String dir = "groupboard/";

    // 4-2-2. 센터 검색
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public Object search(@RequestParam("gymName") String gymName, Integer gymNo,Model model) {

            gymSearch gs = new gymSearch();

            gs.setGymName(gymName); // 검색어 설정
            //gs.setGymNo(gymNo); // 검색어 설정

            List<Gym> gymlist = gymService.search(gs); // 상품 검색 수행

        if (gymlist != null) {

            JSONArray ja = new JSONArray();
            for(Gym obj : gymlist){
                JSONObject jo = new JSONObject();

                jo.put("gymName", obj.getGymName());
                jo.put("gymNo", obj.getGymNo());
                ja.add(jo);
            }
            return ja;
        }
        return "fail";



    }



}
