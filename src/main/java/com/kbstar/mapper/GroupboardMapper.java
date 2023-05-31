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

    public List<Groupboard> getMyJoin(Integer custNo); // 내가 참여한 조인 가져오기
    public List<Groupboard> getMyCreateJoin(Integer custNo); // 내가 개설한 조인 가져오기
}