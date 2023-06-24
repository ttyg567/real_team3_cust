package com.kbstar.mapper;

import com.kbstar.dto.Coupon;
import com.kbstar.dto.Groupboard;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface CouponMapper extends KBMapper<Integer, Coupon> {

    // 오늘 받은 나의 쿠폰 조회
    public Coupon getTodaymycoupon(Integer custNo) throws Exception;
    
    // 운동완료한 사람 조회
    public List<Coupon> getCouponcust_completed() throws Exception;
    
    // 운동완료한 사람이 쿠폰을 받으면 쿠폰 내용을 업데이트
    public void getCouponcust_update(Coupon cp) throws Exception;
    
    // 조인완료한 사람이 쿠폰을 받으면 쿠폰 내용을 업데이트
    public void getCouponcust_update_discount(Groupboard cp) throws Exception;
    
    // 나의 사용 가능한 쿠폰 조회
    public List<Coupon> getMycoupon(Integer custNo) throws Exception;
    
    // 사용 불가한 쿠폰 조회
    public List<Coupon> getMyusedcoupon(Integer custNo) throws Exception;



}
