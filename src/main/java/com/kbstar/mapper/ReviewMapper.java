package com.kbstar.mapper;

import com.kbstar.dto.Coupon;
import com.kbstar.dto.Review;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ReviewMapper extends KBMapper<Integer, Review> {

    // 전체 사용자 리뷰
    List<Review> getGymreview(Integer gymNo) throws Exception;

    // 리뷰 평균
    Review getAvgrate(Integer gymNo) throws Exception;
    
    // 리뷰 점수별 사용자 수
    List<Review> usersByrate(Integer gymNo) throws Exception;

}
