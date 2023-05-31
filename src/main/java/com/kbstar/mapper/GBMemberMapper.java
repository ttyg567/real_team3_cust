package com.kbstar.mapper;

import com.kbstar.dto.GBMember;
import com.kbstar.dto.Groupboard;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface GBMemberMapper extends KBMapper<Integer, GBMember> {
    // 그룹보드 번호가 같은 것 끼리 신청회원의 명수 세서 그룹보드와 조인하기
    public int getApplicationMemberCount(int groupboardNo);
}
