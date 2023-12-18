package com.example.teamprojectbringiton._core.config;


import com.example.teamprojectbringiton._core.handler.AuthInterceptor;
import com.example.teamprojectbringiton._core.interceptor.LoginInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.PathResourceResolver;

@Configuration // Ioc 등록 --> 2개 이상 Ioc 등록 처리
public class WebMvcConfig implements WebMvcConfigurer {

    @Autowired
    private AuthInterceptor authInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/user/**");

    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        WebMvcConfigurer.super.addResourceHandlers(registry); // 기존에 하는 일 (지우면 안됨)
        registry.addResourceHandler("/img/**") // 누군가 /images//**(머든지) 요청을 하면
                .addResourceLocations("file:" + "./img/") // ./images/ 로 가서 **칸에 들어가는 값을 찾아준다.
                .setCachePeriod(10) // 10 (초) (초단위)
                .resourceChain(true) // 안중요함 생각없이 걸면됨
                .addResolver(new PathResourceResolver());
    }

    @Bean // Ioc 관리 대상 처리 - 싱글톤
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


}

