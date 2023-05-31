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
        Gym gym = null;

        log.info("-------------------------------------");
        gym = gymService.get(gymNo);
        gym.setGymImgname(gymService.selectImg(gymNo).getGymImgname());
        gym.setGymImgdetailCk(gymService.selectImg(gymNo).getGymImgdetailCk());

        model.addAttribute("gdetail", gym);
        model.addAttribute("center", dir + "ticket_detail");
        return "index";
    }


}
