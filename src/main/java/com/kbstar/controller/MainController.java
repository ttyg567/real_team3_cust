package com.kbstar.controller;

import com.kbstar.dto.Groupboard;
import com.kbstar.dto.Gym;
import com.kbstar.service.GroupboardService;
import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@Controller
public class MainController {
    @Autowired
    GymService gymService;
    @Autowired
    GroupboardService groupboardService;
    // 투데이 페이지 : 헬쓱 메인 페이지로, 광고배너 노출 + 카테고리별 운동센터 조회 +
    // 운동이용권을 결제한 회원의 경우 -> 나의 운동센터 혼잡도 보여주기
    @RequestMapping("/")
    public String main(Model model, Gym gym) throws Exception {

        List<Gym> list = null;
        try {
            list = gymService.get();

        }
        catch (Exception e){
            throw new Exception("error");
        }
        model.addAttribute("allGym",list);
        return "index";
    }
    // 베스트 페이지 : 특정 기준으로(아직 미정) 베스트에 선정된 센터들을 보여주기.
    @RequestMapping("/best")
    public String best(Model model, Gym gym) throws Exception {
        List<Gym> list = null;

        try {
            list = gymService.selectDiscount(); // 현재는, 이용권을 할인하는 센터 가져오기(이용권 정보랑 이미지 모두 있음)
            //list = gymService.selectWithMarketing(); // 마케팅가능여부 1인 센터 가져오기(이용권 정보는 X)
        }
        catch (Exception e){
            throw new Exception("error");
        }
        model.addAttribute("allGym",list);
        model.addAttribute("center", "best");
        return "index";
    }
    // 회원맞춤 페이지 : 할인하고 있는 이용권 정보 + 할인받을 수 있는 조인 정보 보여주기
    @RequestMapping("/discount")
    public String discount(Model model, Gym gym) throws Exception {
        List<Gym> list = null;

        List<Groupboard> list2 = null;

        try {
            list = gymService.selectDiscount(); // 할인중인 이용권을 가지고 있는 센터정보 가져오기.
            list2 = groupboardService.get(); // 개설된 조인 전체 가져오기.
        }
        catch (Exception e){
            throw new Exception("error");
        }

        model.addAttribute("allGym",list);

        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list2);
        model.addAttribute("center", "discount");
        return "index";
    }
}
