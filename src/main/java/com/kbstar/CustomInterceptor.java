package com.kbstar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class CustomInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // preHandle 메서드는 요청이 처리되기 전에 실행됩니다.
        // 여기서 필요한 로직을 구현합니다.
        return true; // true를 반환하여 요청 처리를 계속 진행합니다.
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        // postHandle 메서드는 요청 처리 후, 뷰가 렌더링되기 전에 실행됩니다.
        // 여기서 필요한 로직을 구현합니다.
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
                                Exception ex) throws Exception {
        // afterCompletion 메서드는 뷰가 렌더링된 후에 실행됩니다.
        // 여기서 필요한 로직을 구현합니다.
    }
}