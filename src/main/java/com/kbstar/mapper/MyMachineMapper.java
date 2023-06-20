package com.kbstar.mapper;

import com.kbstar.dto.Like1;
import com.kbstar.dto.MyMachine;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface MyMachineMapper extends KBMapper<Integer, MyMachine> {
    public List<MyMachine> getmymachine(Integer custNo); // 회원의 즐겨찾기 가져오기
}