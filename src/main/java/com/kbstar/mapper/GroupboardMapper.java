package com.kbstar.mapper;

import com.github.pagehelper.Page;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Groupboard;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface GroupboardMapper extends KBMapper<Integer, Groupboard> {
    public List<Groupboard> getWithMembers(); // 신청인원 가져오기
    public List<Groupboard> selectMySport(String sportsType); // 고객의 관심운동종목과 같은 조인만 보여주기
    public List<Groupboard> getMyJoin(Integer custNo); // 내가 참여한 조인 가져오기
    public List<Groupboard> getMyCreateJoin(Integer custNo); // 내가 개설한 조인 가져오기
    public List<Groupboard> getcategory(String categoryNo) throws Exception; // 카테고리별로 일치하는 조인만 보여주기

    // 멤버가 신청할 때마다 신청인원 +1, 확정인원 +1 하고, 모집인원과 확정인원이 같으면 상태를 '5'로 바꿔준다.
    public void updateStatus(Integer groupboardNo) throws Exception;

    // 모집완료된 것 추출(멤버 포함)
    public List<Groupboard> selectGroupboardCompleted(Integer groupboardNo) throws Exception;

    // 모집완료된 멤버 추출
    public List<Groupboard> selectJoincompletedmember(Integer groupboardNo) throws Exception;


}