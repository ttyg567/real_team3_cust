package com.kbstar.controller;

import com.kbstar.dto.GBMember;
import com.kbstar.dto.Groupboard;
import com.kbstar.service.GBMemberService;
import com.kbstar.service.GroupboardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/groupboard")
public class InboController {
    @Autowired
    GroupboardService groupboardService;
    @Autowired
    GBMemberService gbMemberService;
    String dir = "groupboard/";
    // 4-1 조인 메인페이지
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
    // 4-4 개설된 조인 보기
    @RequestMapping("/groupboard_list")
    public String groupboard_list(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.get(); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 전체조회 중 오류가 발생했습니다.");
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 전체 조회페이지로 전환
        model.addAttribute("center", dir + "list");
        return "index";
    }
    // 4-6 조인 신청 성공
    @RequestMapping("/success_apply")
    public String success_apply(Model model, GBMember gbMember) throws Exception {
        // 조인 신청회원으로 등록해주기
        gbMemberService.register(gbMember);
        
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
