package com.kbstar.frame;

import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface KBService<K,V> {

    @Transactional
    public void register(V v) throws Exception;
    @Transactional
    public void remove(K k) throws Exception;
    @Transactional
    public void modify(V v) throws Exception;
    @Transactional(readOnly = true)
    public V get(K k) throws Exception;
    @Transactional(readOnly = true)
    public List<V> get() throws Exception;

}
