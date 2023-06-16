package com.kbstar.mapper;

import com.kbstar.dto.Cust;

import com.kbstar.dto.Like1;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface LikeMapper extends KBMapper<Integer, Like1> {
    public List<Like1> getmylike(Integer custNo); // DB에서 user의 id 가져오기

    boolean getLikeAndCust(int custNo);
    public void delete(Like1 like1);
}
