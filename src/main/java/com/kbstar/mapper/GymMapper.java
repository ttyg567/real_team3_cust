package com.kbstar.mapper;


import com.kbstar.dto.Gym;
import com.kbstar.dto.gymSearch;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface GymMapper extends KBMapper<Integer, Gym> {
    List<Gym> selectByTypeNo(Integer i);

    public List<Gym> selectimg(Integer i);

    public List<Gym> selectListImg();

    public List<Gym> selectMarketing();
    // 인보. 조인개설 시 센터 검색해서 가져오는 기능
    public List<Gym> search(gymSearch gs);
    List<Gym> selectTicketsWithDiscount();
}