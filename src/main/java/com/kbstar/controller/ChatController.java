package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Slf4j
public class ChatController {

    @Value("${adminserver}")
    String adminserver;


    @RequestMapping("/chat")
    public String chat(Model model, HttpSession session) throws Exception {

//        Cust cust = (Cust) session.getAttribute("logincust");
//
//        if (cust == null) {
//            return "redirect:/cust/login";
//        }
        //session.setAttribute("logincust", cust);
        model.addAttribute("adminserver", adminserver);
        model.addAttribute("center", "chat");
        return "index";
    }




}
