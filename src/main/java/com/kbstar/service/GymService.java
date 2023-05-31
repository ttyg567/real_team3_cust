//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package com.kbstar.service;

import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.GymMapper;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GymService implements KBService<Integer, Gym> {
    private static final Logger log = LoggerFactory.getLogger(GymService.class);
    @Autowired
    GymMapper mapper;

    public GymService() {
    }

    public void register(Gym gym) throws Exception {
        this.mapper.insert(gym);
    }

    public void remove(Integer i) throws Exception {
        this.mapper.delete(i);
    }

    public void modify(Gym gym) throws Exception {
        this.mapper.update(gym);
    }

    public Gym get(Integer i) throws Exception {
        return (Gym)this.mapper.select(i);
    }

    public List<Gym> get() throws Exception {
        return this.mapper.selectall();
    }

    public List<Gym> getByTypeNo(Integer typeNo) throws Exception {
        return this.mapper.selectByTypeNo(typeNo);
    }

    public Ticket selectwitDiscount(Ticket ticket) {
        return null;
    }

    public Ticket selectwitDiscount(Integer i) {
        return null;
    }

    public List<Gym> selectImg(Integer i) {
        return this.mapper.selectimg(i);
    } // 추가

    public Gym selectwithMarketing(Integer i) {
        return this.mapper.selectwithmarketing(i);
    }
}