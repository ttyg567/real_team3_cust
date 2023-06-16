package com.kbstar.service;


import com.kbstar.dto.Like1;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.LikeMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@Slf4j
public class LikeService implements KBService<Integer, Like1> {
    @Autowired
    LikeMapper mapper;
    @Override
    public void register(Like1 like1) throws Exception {
        mapper.insert(like1);
    }

    @Override
    public void remove(Integer like1) throws Exception {
        mapper.delete(like1);
    }


    @Override
    public void modify(Like1 like1) throws Exception {
        mapper.update(like1);
    }

    @Override
    public Like1 get(Integer integer) throws Exception {
        return mapper.select(integer);
    }

    @Override
    public List<Like1> get() throws Exception {
        return mapper.selectall();
    }
    public List<Like1> getmylike(Integer custNo) throws Exception {
        return mapper.getmylike(custNo);
        // 전체회원의 장바구니 조회 아니고, loginuser의 장바구니만 조회하기.( = uid)
    }

    public Like1 getgymlike(int integer) throws Exception {
       return mapper.getGymLike(integer);
    }
}
