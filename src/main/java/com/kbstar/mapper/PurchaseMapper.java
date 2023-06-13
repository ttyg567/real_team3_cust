package com.kbstar.mapper;



import com.kbstar.dto.Gym;
import com.kbstar.dto.Purchase;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface PurchaseMapper extends KBMapper<Integer, Purchase> {
    public List<Purchase> selectallvalid();

    public List<Purchase> selectallinvalid();
}
