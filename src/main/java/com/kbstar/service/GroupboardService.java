package com.kbstar.service;


import com.kbstar.dto.Groupboard;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.CustMapper;
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
    //
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
}
