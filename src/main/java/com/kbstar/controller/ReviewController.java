package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Review;
import com.kbstar.service.GymService;
import com.kbstar.service.ReviewService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/review")
public class ReviewController {

    String dir = "review/";

    @Autowired
    ReviewService reviewService;

    @Autowired
    GymService gymService;

    @RequestMapping("/list")
    public String list(Model model, Integer gymNo) throws Exception {

        List<Review> relist = null;
        Gym gym = null;
        Review review_avg = null;


        relist = reviewService.getGymreview(gymNo);
        gym = gymService.get(gymNo);
        review_avg = reviewService.getAvgrate(gymNo);


        model.addAttribute("relist", relist);
        model.addAttribute("regymName", gym.getGymName());
        model.addAttribute("regymNo", gymNo);
        model.addAttribute("review_avg", review_avg.getAverageRate());

        model.addAttribute("center", dir + "list");
        return "index";
    }

    @RequestMapping("/add")
    @ResponseBody
    public String add(Model model, Review review, HttpSession session) throws Exception{

        log.info("리뷰 insert 진입");

        Cust cust = null;
        int custNo = 0;

        if (session != null) {
            cust = (Cust) session.getAttribute("logincust");
            custNo = cust.getCustNo();
            review.setCustNo(custNo);
        }

        try {
            reviewService.register(review);
            return "success";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    @RequestMapping("/usersByrate")
    @ResponseBody
    public Object usersByrate(Integer gymNo) throws Exception {
        List<Review> review_users = null;
        JSONArray ja = new JSONArray();

        review_users = reviewService.usersByrate(gymNo);

        int totalUsers = 0; // 전체 유저
        int count = 0;

        if(review_users != null) {

            for (Review review : review_users) {
                totalUsers += review.getUsers();
                count ++;
            }

            log.info("카운트"+ count);

            for (Review review : review_users) {

                JSONObject jo = new JSONObject();
                jo.put("rate", review.getReviewRate());
                jo.put("users", review.getUsers());
                jo.put("totalUsers", totalUsers);

                // 백분율로 계산
                double percentage = (double) (review.getUsers()) / totalUsers * 100; // 수정된 부분

                // 소수점 2자리까지 반올림
                jo.put("percentage", Math.round(percentage * 100) / 100.0);
                ja.add(jo);
            }
        }
        return ja;
    }

}
