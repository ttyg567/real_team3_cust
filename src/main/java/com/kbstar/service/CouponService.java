package com.kbstar.service;


import com.kbstar.dto.Coupon;
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
}
