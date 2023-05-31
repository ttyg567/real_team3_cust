package com.kbstar.controller;

import com.kbstar.dto.Gym;
import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/ticket")
public class TicketController {
    String dir = "ticket/";
    @Autowired
    GymService gymService;


    @RequestMapping("/all")
    public String all(Model model) throws Exception {
        List<Gym> list =  null;
        try {
            list = gymService.get();
        } catch (Exception e) {
            throw new Exception("전체조회 중 오류가 발생했습니다.");
        }
        model.addAttribute("all", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/workout")
    public String workout(Model model) throws Exception {
        List<Gym> list = null;
        try {
            list = gymService.getByTypeNo(1);
        } catch (Exception e) {
            throw new Exception("헬스장조회 중 오류가 발생했습니다.");
        }
        model.addAttribute("workout", list);
        model.addAttribute("center", dir + "workout");
        return "index";
    }
    @RequestMapping("/pt")
    public String pt(Model model) throws Exception {
        List<Gym> list = null;
        try {
            list = gymService.getByTypeNo(2);
        } catch (Exception e) {
            throw new Exception("pt샵 조회 중 오류가 발생했습니다.");
        }
        model.addAttribute("pt", list);
        model.addAttribute("center", dir + "pt");
        return "index";
    }
    @RequestMapping("/crossfit")
    public String crossfit(Model model) throws Exception {
        List<Gym> list = null;
        try {
            list = gymService.getByTypeNo(3);
        } catch (Exception e) {
            throw new Exception("크로스핏 조회 중 오류가 발생했습니다.");
        }
        model.addAttribute("crossfit", list);
        model.addAttribute("center", dir + "crossfit");
        return "index";
    }
    @RequestMapping("/yoga")
    public String yoga(Model model) throws Exception {
        List<Gym> list = null;
        try {
            list = gymService.getByTypeNo(4);
        } catch (Exception e) {
            throw new Exception("요가 조회 중 오류가 발생했습니다.");
        }
        model.addAttribute("yoga", list);
        model.addAttribute("center", dir + "yoga");
        return "index";
    }
    @RequestMapping("/pilates")
    public String pilates(Model model) throws Exception {
        List<Gym> list = null;
        try {
            list = gymService.getByTypeNo(5);
        } catch (Exception e) {
            throw new Exception("필라테스 조회 중 오류가 발생했습니다.");
        }
        model.addAttribute("pilates", list);
        model.addAttribute("center", dir + "pilates");
        return "index";
    }

    @RequestMapping("/golf")
    public String golf(Model model) throws Exception {
        List<Gym> list = null;
        try {
            list = gymService.getByTypeNo(6);
        } catch (Exception e) {
            throw new Exception("골프 조회 중 오류가 발생했습니다.");
        }
        model.addAttribute("golf", list);
        model.addAttribute("center", dir + "golf");
        return "index";
    }

    @RequestMapping("/swimming")
    public String swimming(Model model) throws Exception {
        List<Gym> list = null;
        try {
            list = gymService.getByTypeNo(7);
        } catch (Exception e) {
            throw new Exception("골프 조회 중 오류가 발생했습니다.");
        }
        model.addAttribute("swimming", list);
        model.addAttribute("center", dir + "swimming");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model, @RequestParam("gymNo") int gymNo) throws Exception {
        log.info("-------------------------------------");
        log.info("디테일 화면 진입 전");
        Gym gym = null;
        gym = gymService.get(gymNo);


        // 이미지 추출
        List<Gym> gym_list = null;
        try {
            gym_list = gymService.selectImg(gymNo);
        } catch (Exception e){
            e.printStackTrace();
        }

        String[] gdetail_center_img = null; // 디테일에서 top에 위치한 센터 이미지
        String[] gdetail_detail_img = null; // 디테일 화면에서 디테일 이미지
        List<String> centerImages = new ArrayList<>(); // center 이미지를 저장할 리스트
        List<String> detailImages = new ArrayList<>(); // detail 이미지를 저장할 리스트
        for(Gym item : gym_list){
            // 디테일 이미지가 아니면
            if(item.getGymImgdetailCk().equals("0")){
                centerImages.add(item.getGymImgname()); // center 이미지를 리스트에 추가
            } else {  // 디테일 이미지 이면
                detailImages.add(item.getGymImgname()); // center 이미지를 리스트에 추가
            }
        }

        gdetail_center_img = centerImages.toArray(new String[0]); // 리스트를 배열로 변환
        gdetail_detail_img = detailImages.toArray(new String[0]); // 리스트를 배열로 변환

        log.info("센터 이미지 추출: " + Arrays.toString(gdetail_center_img));
        log.info("디테일 이미지 추출: " + Arrays.toString(gdetail_detail_img));

        model.addAttribute("gdetail", gym);
        model.addAttribute("gdetail_center_img", gdetail_center_img);
        model.addAttribute("gdetail_detail_img", gdetail_detail_img);
        model.addAttribute("center", dir + "ticket_detail");
        return "index";
    }
}
