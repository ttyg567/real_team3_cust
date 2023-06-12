package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class JinController {



    @RequestMapping("/ticket")
    public String main(Model model){
        model.addAttribute("center","ticket");
        return "index";
    }

    @RequestMapping("/notification")
    public String notification(Model model){
        model.addAttribute("center","notification");
        return "index";
    }
    @RequestMapping("/payment_method")
    public String payment_method(Model model){
        model.addAttribute("center","payment_method");
        return "index";
    }
    @RequestMapping("/chat")
    public String chat(Model model){
        model.addAttribute("center","chat");
        return "index";
    }

    @RequestMapping("/paySuccess")
    public String paySuccess(Model model){
        model.addAttribute("center","paySuccess");
        return "index";
    }
    @RequestMapping("/payFailed")
    public String payFailed(Model model){
        model.addAttribute("center","payFailed");
        return "index";
    }
    @RequestMapping("/pay")
    public String pay(String ticket_pay_option, Model model, String gymName) {
        model.addAttribute("ticket_pay_option", ticket_pay_option);
        model.addAttribute("gymName", gymName);
        log.info("---------------%%%%%%%%%%%%%----------------------------");
        log.info(gymName);
        model.addAttribute("center","pay");
        return "index";
    }
}

