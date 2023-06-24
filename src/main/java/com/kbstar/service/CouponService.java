package com.kbstar.service;


import com.kbstar.dto.Coupon;
import com.kbstar.dto.Groupboard;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.CouponMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j  //log
@Service
public class CouponService implements KBService<Integer, Coupon> {

    @Autowired
    CouponMapper mapper;

    @Override
    public void register(Coupon coupon) throws Exception {
        mapper.insert(coupon);

    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(Coupon coupon) throws Exception {

    }

    @Override
    public Coupon get(Integer integer) throws Exception {
        return mapper.select(integer);
    }

    @Override
    public List<Coupon> get() throws Exception {
        return mapper.selectall();
    }


    public Coupon getTodaymycoupon(Integer custNo) throws Exception {
        return mapper.getTodaymycoupon(custNo);
    }

    // 운동완료한 사람 조회
    public List<Coupon> getCouponcust_completed() throws Exception {
        return mapper.getCouponcust_completed();
    }


    // 운동완료한 사람이 쿠폰을 받으면 쿠폰 내용을 업데이트
    public void getCouponcust_update(Coupon cp) throws Exception {
        mapper.getCouponcust_update(cp);
    }


    // 조인완료한 사람이 쿠폰을 받으면 쿠폰 내용을 업데이트
    public void getCouponcust_update_discount(Groupboard cp) throws Exception {
        mapper.getCouponcust_update_discount(cp);
    }

    // 나의 사용 가능한 쿠폰 조회
    public List<Coupon> getMycoupon(Integer custNo) throws Exception {
        return mapper.getMycoupon(custNo);
    }

    // 사용 불가한 쿠폰 조회
    public List<Coupon> getMyusedcoupon(Integer custNo) throws Exception{
        return mapper.getMyusedcoupon(custNo);
    }
}
