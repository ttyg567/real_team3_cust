package com.kbstar.mapper;

import com.kbstar.dto.Cust;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
@Mapper
public interface CustMapper extends KBMapper<String, Cust> {

    Optional<Cust> findByEmail(String custEmail);

    public void insert_social(Cust c) throws Exception;

}
