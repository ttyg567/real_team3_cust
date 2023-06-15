package com.kbstar.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

@ControllerAdvice
public class CustomErrorController implements ErrorController {
    @ExceptionHandler(Exception.class)
    public String except(Exception e, Model model){
        e.printStackTrace();
        model.addAttribute("msg",e.getMessage());
        model.addAttribute("center","error/error_page1");
        return "index";
    }

    @RequestMapping("/error")
    public String handleError(Exception e) {
        e.printStackTrace();
        // 에러 페이지로 이동하도록 설정
        return "error/error_page1"; // 에러 페이지의 뷰 이름
    }

    public String getErrorPath() {
        return "error/error_page1";
    }
}