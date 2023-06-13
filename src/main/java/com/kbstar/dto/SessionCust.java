package com.kbstar.dto;

import lombok.Getter;

import java.io.Serializable;

// User를 세션에 저장하기위해 User를 직렬화하는 클래스
@Getter
public class SessionCust implements Serializable {

    private String name;
    private String email;
    private String picture;
    public SessionCust(Cust cust){
        this.name = cust.getCustName();
        this.email = cust.getCustEmail();
        this.picture = cust.getPicture();
    }
}