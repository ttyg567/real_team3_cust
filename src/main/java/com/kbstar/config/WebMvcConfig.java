package com.kbstar.config;

import com.kbstar.CustomInterceptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Value("${imgdir}") // application.properties 안에 지정함
    String imgdir;
    @Value("${logdir}") // application.properties 안에 지정함
    String logdir;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // c 경로로 되어 있는 것도 127.0.0.1/logs 하면 접속이 되게끔 한다.
        registry.addResourceHandler("/uimg/**").addResourceLocations(imgdir);
        registry.addResourceHandler("/logs/**").addResourceLocations(logdir);

    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new CustomInterceptor())
                .addPathPatterns("/cust/register_social") // 해당 경로에 대해 인터셉터를 적용합니다.
                .order(1); // 인터셉터 우선순위를 지정합니다. (옵션)
    }

}