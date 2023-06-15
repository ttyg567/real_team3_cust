package com.kbstar.service;


import com.kbstar.dto.Class;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Purchase;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.PurchaseMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class PurchaseService implements KBService<Integer, Purchase>{

    @Autowired
    PurchaseMapper mapper;


    @Override
    public Purchase get(Integer integer) throws Exception {
        return mapper.select(integer);
    }

    @Override
    public List<Purchase> get() throws Exception {
        return mapper.selectall();
    }


    public List<Purchase> getvalid() throws Exception {
        return mapper.selectallvalid();
    }

    public List<Purchase> getinvalid() throws Exception {
        return mapper.selectallinvalid();
    }

    public List<Class> getcustclass(Integer integer) throws Exception {
        return mapper.selectcustclass(integer);
    }

    public List<Class> getdayclass(Cust cust) throws Exception {
        return mapper.selectdayclass(cust);
    }

    @Override
    public void register(Purchase purchase) throws Exception {
        mapper.pinsert(purchase);
    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(Purchase purchase) throws Exception {

    }



}
