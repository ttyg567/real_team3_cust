package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/groupboard")
public class InboController {

    String dir = "groupboard/";

    @RequestMapping("")
    public String main(Model model){
        // webapp > groupboard > center 페이지로 변경
        model.addAttribute("center", dir + "center");
        return "index";
    }
    // 4-2 조인 만들기
    @RequestMapping("/makejoin")
    public String makejoin(Model model){
        // webapp > groupboard > makejoin 페이지로 전체 교체(center만 교체되는 것 아님)
        model.addAttribute("center", dir + "makejoin");
        return "index";
    }
    // 4-3 조인 만들기 성공
    @RequestMapping("/success_create")
    public String success_create(Model model){
        // webapp > groupboard > create 페이지로 전체 교체(center만 교체되는 것 아님)
        return dir + "create";
    }
    // 4-6 조인 신청 성공
    @RequestMapping("/success_apply")
    public String success_apply(Model model){
        // webapp > groupboard > apply 페이지로 전체 교체(center만 교체되는 것 아님)
       return dir + "apply";
    }
    // 4-7 나의 조인 보기
    @RequestMapping("/myjoin")
    public String myjoin(Model model){
        model.addAttribute("center", dir + "myjoin");
        return "index";
    }
}
