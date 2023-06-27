package com.kbstar.service;


import com.kbstar.dto.Groupboard;
import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.GBMemberMapper;
import com.kbstar.mapper.GroupboardMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class GroupboardService implements KBService<Integer, Groupboard> {

    @Autowired
    GroupboardMapper mapper;
    @Autowired
    private GBMemberMapper gbMemberMapper;
    @Override
    public void register(Groupboard groupboard) throws Exception {
        mapper.insert(groupboard);
    }

    @Override
    public void remove(Integer groupboardNo) throws Exception {
        mapper.delete(groupboardNo);
    }

    @Override
    public void modify(Groupboard groupboard) throws Exception {
        mapper.update(groupboard);
    }

    @Override
    public Groupboard get(Integer groupboardNo) throws Exception {
        return mapper.select(groupboardNo);
    }

    @Override
    public List<Groupboard> get() throws Exception {
        return mapper.selectall();
    }


    // 조인을 신청한 인원 가져오기
    public List<Groupboard> getWithMembers() {
        // GroupBoard 테이블과 GBMember 테이블을 조인하여 데이터를 가져옵니다.
        List<Groupboard> groupboardList = mapper.getWithMembers();

        for (Groupboard groupboard : groupboardList) {
            // GroupBoard의 groupboardNo를 기준으로 GBMember 테이블에서 해당 그룹의 신청 인원 수를 가져옵니다.
            int applicationMemberCount = gbMemberMapper.getApplicationMemberCount(groupboard.getGroupboardNo());
            // 가져온 신청 인원 수를 GroupBoard 객체에 설정합니다.
            groupboard.setApplicationMember(applicationMemberCount);
        }

        return groupboardList;
    }
    // 내가 참여한 조인 가져오기
    public List<Groupboard> getMyJoin(Integer custNo) throws Exception {
        return mapper.getMyJoin(custNo);
    }
    // 내가 개설한 조인 가져오기
    public List<Groupboard> getMyCreateJoin(Integer custNo) throws Exception {
        return mapper.getMyCreateJoin(custNo);
    }
    // 카테고리별로 일치하는 조인만 보여주기
    public List<Groupboard> getcategory(String categoryNo) throws Exception {
        return mapper.getcategory(categoryNo); // 카테고리번호와 일치하는 것만 보여주기
    }

    // 멤버가 신청할 때마다 신청인원 +1, 확정인원 +1 하고, 모집인원과 확정인원이 같으면 상태를 '5'로 바꿔준다.
    public void updateStatus(Integer groupboardNo) throws Exception {
        mapper.updateStatus(groupboardNo);
    }

    // 모집완료된 것 추출(멤버 포함)
    public List<Groupboard> selectGroupboardCompleted(Integer groupboardNo) throws Exception{
        return mapper.selectGroupboardCompleted(groupboardNo);
    }

    // 모집완료된 멤버 추출
    public List<Groupboard> selectJoincompletedmember(Integer groupboardNo) throws Exception {
        return mapper.selectJoincompletedmember(groupboardNo);
    }
    // 카테고리별로 일치하는 조인만 보여주기
    public List<Groupboard> selectMySport(String sportsType) throws Exception {
        return mapper.selectMySport(sportsType); // 카테고리번호와 일치하는 것만 보여주기
    }

}
