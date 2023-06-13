package com.kbstar.config;

import com.kbstar.dto.Role;
import com.kbstar.service.CustomOAuth2UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
@EnableWebSecurity
@RequiredArgsConstructor
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private final CustomOAuth2UserService customOAuth2UserService;

    @Bean
    public BCryptPasswordEncoder encodePWD() {
        return new BCryptPasswordEncoder();
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.addAllowedOrigin(CorsConfiguration.ALL);
        configuration.addAllowedMethod(CorsConfiguration.ALL);
        configuration.addAllowedHeader(CorsConfiguration.ALL);
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**, /ws", configuration);

        http.httpBasic()
                .and().authorizeRequests()
                .antMatchers("/api/v1/**").hasRole(Role.USER.name()) // 추가
                .anyRequest().permitAll()
                .and().cors().configurationSource(source)
                .and().csrf().disable()
                .oauth2Login().userInfoEndpoint().userService(customOAuth2UserService); // 추가

        //.antMatchers()는 .anyRequest() 뒤에 배치되어야 함!! 중요 ㅠㅠㅠㅠㅠㅠㅠㅠ 후

        // 소셜 관련 원 코드
//        http.csrf().disable().headers().frameOptions().disable() //h2-console 화면을 사용하기 위해 해당 옵션들 disable
//                .and() // URL별 설정 관리
//                .authorizeRequests().antMatchers("/","/css/**","/images/**","/js/**","/h2-console/**").permitAll()
//                .antMatchers("/api/v1/**").hasRole(Role.USER.name())
//                .anyRequest().authenticated()
//                .and()
//                .logout().logoutSuccessUrl("/")
//                .and()
//                .oauth2Login().userInfoEndpoint().userService(customOAuth2UserService);

            /*
            * oauth2Login(): OAuth2 로그인 기능에 대한 여러 설정의 진입점
            * userInfoEndpoint(): OAuth2 로그인 이후 사용자 정보를 가져올때의 설정을 담당
            * userService(customOAuth2UserService): 소셜로그인 성공시에 후속조치를 진행할 UserService 인터페이스의 구현체를 등록한다.
                                                    소셜 서비스에서 가져온 사용자정보를 이용해서 추가적인 기능을 수행한다.
             */
    }

}
