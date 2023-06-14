package com.kbstar.service;

import com.kbstar.dto.Cust;
import com.kbstar.dto.OAuthAttributes;
import com.kbstar.dto.Role;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Collections;

@Slf4j
@RequiredArgsConstructor
@Service
/* 소셜 로그인 이후 가져온 사용자의 정보를 기반으로 가입 및 정보 수정, 세션 저장 등의 추가적인 기능을 수행 */
public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {

    @Autowired
    private final CustService custService;

    @Autowired
    private final HttpSession session;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {

        OAuth2UserService<OAuth2UserRequest, OAuth2User> delegate = new DefaultOAuth2UserService();
        OAuth2User oAuth2User = delegate.loadUser(userRequest);

        // 현재 로그인 진행 중인 서비스를 구분한다(구글로그인? 카카오로그인?)
        String registrationId = userRequest.getClientRegistration().getRegistrationId();

        // OAuth2 로그인 진행시 키가되는 필드값(PK 개념, 네이버는 id, 구글은 sub)
        String userNameAttributeName = userRequest.getClientRegistration().getProviderDetails()
                .getUserInfoEndpoint().getUserNameAttributeName();

        // CustomOAuth2UserService를 통해 가져온 OAuth2User의 attribute를 담을 클래스
        OAuthAttributes attributes = OAuthAttributes.of(registrationId, userNameAttributeName, oAuth2User.getAttributes());

        // 두 줄 변경
        Cust cust = null;
        try {
            cust = saveOrUpdate(attributes);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return new DefaultOAuth2User(
//                Collections.singleton(new SimpleGrantedAuthority(cust.getRole().getKey()))
                Collections.singleton(new SimpleGrantedAuthority(Role.GUEST.getKey()))
                , attributes.getAttributes()
                , attributes.getNameAttributeKey());
    }

    private Cust saveOrUpdate(OAuthAttributes attributes) throws Exception {

        // 기존 유저라면 update, 신규 유저라면 User를 생성
        // 기존 유저가 소셜서비스에서 이름을 바꾸거나 사진을 바꾸면 이를 적용
        Cust cust = null;
        cust = custService.get(attributes.getEmail());
        if(cust==null){ // 신규 유저라면 cust 객체 생성
            cust = attributes.toEntity();
            custService.register_social(cust); // db에 저장
            session.setAttribute("logincust",cust); // 세션에 저장
            session.setMaxInactiveInterval(100000);

        } else {
            log.info("이미 있는 사용자. 이름 변경 ");
            cust.setCustName(attributes.getName());

            custService.update_social_name(cust);

            session.setAttribute("logincust",cust); // 세션에 저장
            session.setMaxInactiveInterval(100000);

        }

        return cust;
    }

}