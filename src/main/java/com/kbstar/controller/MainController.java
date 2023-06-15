package com.kbstar.controller;

import com.kbstar.dto.Gym;
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
    @RequestMapping("/")
    public String main(Model model, Gym gym) throws Exception {
        List<Gym> list = null;
        List<Gym> listGym = null;
        try {
            list = gymService.selectWithMarketing();
            listGym = gymService.selectDiscount();
        }
        catch (Exception e){
            throw new Exception("error");
        }
        model.addAttribute("all",list);
        model.addAttribute("allGym",listGym);
        return "index";
    }
    @RequestMapping("/best")
    public String best(Model model, Gym gym) throws Exception {
        List<Gym> list = null;
        List<Gym> listGym = null;
        try {
            list = gymService.selectWithMarketing();
            listGym = gymService.selectDiscount();
        }
        catch (Exception e){
            throw new Exception("error");
        }
        model.addAttribute("all",list);
        model.addAttribute("allGym",listGym);
        model.addAttribute("center", "best");
        return "index";
    }
    @RequestMapping("/discount")
    public String discount(Model model, Gym gym) throws Exception {
        List<Gym> list = null;
        List<Gym> listGym = null;
        try {
            list = gymService.selectWithMarketing();
            listGym = gymService.selectDiscount();
        }
        catch (Exception e){
            throw new Exception("error");
        }
        model.addAttribute("all",list);
        model.addAttribute("allGym",listGym);
        model.addAttribute("center", "discount");
        return "index";
    }
}
