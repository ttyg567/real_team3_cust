package com.kbstar.controller;

import com.kbstar.dto.*;
import com.kbstar.service.GroupboardService;
import com.kbstar.service.GymMachineService;
import com.kbstar.service.GymService;
import com.kbstar.service.MyMachineService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
public class MainController {
    @Autowired
    GymService gymService;
    @Autowired
    GymMachineService gymMachineService;
    @Autowired
    GroupboardService groupboardService;
    @Autowired
    MyMachineService myMachineService;
    // 투데이 페이지 : 헬쓱 메인 페이지로, 광고배너 노출 + 카테고리별 운동센터 조회 +
    // 운동이용권을 결제한 회원의 경우 -> 나의 운동센터 혼잡도 보여주기
    @RequestMapping("/")
    public String main(Model model, Gym gym, Integer gymNo) throws Exception {
        List<Gym> list = null;
        List<GymMachine> list2 = null;

        model.addAttribute("searchType", list); //jsp파일에서 뿌릴 이름 정하기
        try {
            list = gymService.get();
            list2 = gymMachineService.get();

           // list2 = gymMachineService.selectGymMachine(gymNo); // 센터가 보유한 기계 가져오기
        }
        catch (Exception e){
            throw new Exception("error");
        }
        model.addAttribute("allGym",list);
        model.addAttribute("gymAllMachine",list2); //센터의 기계들
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

    // 운동센터 혼잡도 : 운동기구 검색하면 다시 뿌려주는 기능
    @RequestMapping("/selectExerciseType")
    public String selectExerciseType(Model model, MachineSearch ms) throws Exception {
        List<GymMachine> list = null;
        try {
            list = gymMachineService.selectExerciseType(ms); // 할인중인 이용권을 가지고 있는 센터정보 가져오기.
        }
        catch (Exception e){
            throw new Exception("error");
        }
        model.addAttribute("ms", ms); // ms를 다시 보내서 이용
        log.info("ms$$$$$$$$$$$$$$$$$$$$$$$$");
        log.info(String.valueOf(ms));
        model.addAttribute("gymAllMachine",list); // 검색결과를 다시 화면에 뿌릴 이름.

        model.addAttribute("center", "center");
        return "index";
    }

}
