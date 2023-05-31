package com.kbstar.mapper;

import com.kbstar.dto.Groupboard;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface GroupboardMapper extends KBMapper<Integer, Groupboard> {
    public List<Groupboard> getWithMembers(); // 신청인원 가져오기
}