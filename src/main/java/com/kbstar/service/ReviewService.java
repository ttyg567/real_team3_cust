package com.kbstar.service;


import com.kbstar.dto.Coupon;
import com.kbstar.dto.Review;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.CouponMapper;
import com.kbstar.mapper.ReviewMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j  //log
@Service
public class ReviewService implements KBService<Integer, Review> {

    @Autowired
    ReviewMapper mapper;

    @Override
    public void register(Review review) throws Exception {
        mapper.insert(review);
    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(Review review) throws Exception {

    }

    @Override
    public Review get(Integer integer) throws Exception {
        return null;
    }

    @Override
    public List<Review> get() throws Exception {
        return null;
    }

    public List<Review> getGymreview(Integer gymNo) throws Exception {
        return mapper.getGymreview(gymNo);
    }

    public Review getAvgrate(Integer gymNo) throws Exception{
        return mapper.getAvgrate(gymNo);
    }

    public List<Review> usersByrate(Integer gymNo) throws Exception{
        return mapper.usersByrate(gymNo);
    }
}
