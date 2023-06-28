package com.kbstar.controller;

import com.kbstar.dto.*;
import com.kbstar.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
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
    @Autowired
    TicketService ticketService;
    @Autowired
    LikeService likeService;
    @Autowired
    ReviewService reviewService;
    @Autowired
    TrainerService trainerService;
    @Value("${adminserver}")
    String adminserver;
    @RequestMapping("/all")
    public String all(Model model, Integer gymNo) throws Exception {
        List<Gym> list = null;

        try {
            list = gymService.selectlistimg();
        } catch (Exception e) {
            throw new Exception("전체조회 중 오류가 발생했습니다.");
        }

//        List<Integer> gymNoList = new ArrayList<>(); // gymNo를 저장할 리스트 생성
//        for (Gym gym : list) {
//            gymNoList.add(gym.getGymNo()); // 각 Gym 객체의 gymNo를 추출하여 리스트에 추가
//        }

//        Like1 likeCount = likeService.getgymlike(gymNo); // 리스트를 전달하여 좋아요 카운트를 받아옴

        model.addAttribute("all", list);
        model.addAttribute("center", dir + "all");
 //       model.addAttribute("likeCount", likeCount); // 모델에 좋아요 카운트를 추가

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
        model.addAttribute("all", list);
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
        model.addAttribute("all", list);
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
        model.addAttribute("all", list);
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
        model.addAttribute("all", list);
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
        model.addAttribute("all", list);
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
        model.addAttribute("all", list);
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
        model.addAttribute("all", list);
        model.addAttribute("center", dir + "swimming");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model, @RequestParam("gymNo") int gymNo) throws Exception {
        List<Review> relist = null;
        List<Trainer> trainer = null;
        Review review_avg = null;
        Gym gym = null;
        // 해당 gymNo에 해당하는 이용권 목록 가져오기
        List<Ticket> ticket_list = ticketService.getTicketsByGymNo(gymNo);
        gym = gymService.get(gymNo);

        //리뷰때문에 추가
        relist = reviewService.getGymreview(gymNo);
        gym = gymService.get(gymNo);
        review_avg = reviewService.getAvgrate(gymNo);
        //이제 트레이너
        trainer = trainerService.getAll(gymNo);

        // 이미지 추출
        List<Gym> gym_list = null;

        try {
            gym_list = gymService.selectImg(gymNo);

        } catch (Exception e) {
            e.printStackTrace();
        }
        String[] gdetail_center_img = null; // 디테일에서 top에 위치한 센터 이미지
        String[] gdetail_detail_img = null; // 디테일 화면에서 디테일 이미지
        List<String> centerImages = new ArrayList<>(); // center 이미지를 저장할 리스트
        List<String> detailImages = new ArrayList<>(); // detail 이미지를 저장할 리스트
        for (Gym item : gym_list) {
            // 디테일 이미지가 아니면
            if (item.getGymImgdetailCk().equals("0")) {
                centerImages.add(item.getGymImgname()); // center 이미지를 리스트에 추가
            } else {  // 디테일 이미지 이면
                detailImages.add(item.getGymImgname()); // center 이미지를 리스트에 추가
            }
        }

        gdetail_center_img = centerImages.toArray(new String[0]); // 리스트를 배열로 변환
        gdetail_detail_img = detailImages.toArray(new String[0]); // 리스트를 배열로 변환

        log.info("센터 이미지 추출: " + Arrays.toString(gdetail_center_img));
        log.info("디테일 이미지 추출: " + Arrays.toString(gdetail_detail_img));
//        model.addAttribute("ticket", ticket_list);
//        model.addAttribute("ticket", ticket_list);
        model.addAttribute("gdetail", gym);
        model.addAttribute("tickets", getMatchingTickets(gymNo, ticket_list));
        model.addAttribute("gdetail_center_img", gdetail_center_img);
        model.addAttribute("gdetail_detail_img", gdetail_detail_img);
        //리뷰때문에 추가
        log.info(relist.toString());
        log.info("relist");
        model.addAttribute("relist", relist);
        model.addAttribute("regymName", gym.getGymName());
        model.addAttribute("regymNo", gymNo);
        model.addAttribute("review_avg", review_avg.getAverageRate());
        model.addAttribute("center", dir + "ticket_detail");
        model.addAttribute("teacher", trainer);

        return "index";
    }




    private List<Ticket> getMatchingTickets(int gymNo, List<Ticket> ticketList) {
        List<Ticket> matchingTickets = new ArrayList<>();
        for (Ticket ticket : ticketList) {
            if (ticket.getGymNo() == gymNo) {
                matchingTickets.add(ticket); // gymNo와 일치하는 이용권 추가
            }
        }
        return matchingTickets;
    }

    // 1:1 채팅
    @RequestMapping("/chat")
    public String chat(Model model, HttpSession session, @RequestParam("gymNo") int gymNo) throws Exception {

        Gym gym = gymService.get(gymNo);

        //log.info(String.valueOf(gym));

        Cust cust = (Cust) session.getAttribute("logincust");

        if (cust == null) {
            return "redirect:/cust/login";
        }
        model.addAttribute("center", "chat");
        session.setAttribute("logincust", cust);
        model.addAttribute("targetGym", gym);
        model.addAttribute("adminserver", adminserver);
        return "index";
    }


}
