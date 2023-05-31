package com.kbstar.service;


import com.kbstar.dto.GBMember;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.GBMemberMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class GBMemberService implements KBService<Integer, GBMember> {

    @Autowired
    GBMemberMapper mapper;

    @Override
    public void register(GBMember gbMember) throws Exception {
        mapper.insert(gbMember);
    }

    @Override
    public void remove(Integer groupboardNo) throws Exception {
        mapper.delete(groupboardNo);
    }

    @Override
    public void modify(GBMember gbMember) throws Exception {
        mapper.update(gbMember);
    }

    @Override
    public GBMember get(Integer groupboardNo) throws Exception {
        return mapper.select(groupboardNo);
    }

    @Override
    public List<GBMember> get() throws Exception {
        return mapper.selectall();
    }
    public GBMember getApplicationMemberCount(Integer groupboardNo) throws Exception {
        return mapper.select(groupboardNo);
    }
}
