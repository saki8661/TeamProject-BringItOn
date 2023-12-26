package com.example.teamprojectbringiton._core.config;


import com.example.teamprojectbringiton._core.handler.AuthInterceptor;
import com.example.teamprojectbringiton._core.interceptor.LoginInterceptor;
import com.example.teamprojectbringiton._core.interceptor.ReservationInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.PathResourceResolver;

import java.util.Properties;

@Configuration // Ioc 등록 --> 2개 이상 Ioc 등록 처리
public class WebMvcConfig implements WebMvcConfigurer {

    @Autowired
    private AuthInterceptor authInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/user/**")
                .addPathPatterns("/space/**")
                .addPathPatterns("/host/**");


        registry.addInterceptor(new ReservationInterceptor())
                // addPathPatterns( "해당 주소로 갈때" )
                .addPathPatterns("/reservation/**");
        // .excludePathPatterns ( "해당주소로 갈때는 예외적 허용" )
        // .excludePathPatterns("/board/{id:[0-9]+}");


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

    @Bean
    public JavaMailSender javaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);
        mailSender.setUsername("djsdir0106@gmail.com");
        mailSender.setPassword("cyac atqf xodc gwra");
        mailSender.setDefaultEncoding("UTF-8");

        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.transport.protocol", "smtp");//프로토콜로 smtp 사용
        javaMailProperties.put("mail.smtp.auth", "true");//smtp 서버에 인증이 필요
        javaMailProperties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");//SSL 소켓 팩토리 클래스 사용
        javaMailProperties.put("mail.smtp.starttls.enable", "true");//STARTTLS(TLS를 시작하는 명령)를 사용하여 암호화된 통신을 활성화
        javaMailProperties.put("mail.debug", "true");//디버깅 정보 출력
        javaMailProperties.put("mail.smtp.ssl.trust", "smtp.google.com");//smtp 서버의 ssl 인증서를 신뢰
        javaMailProperties.put("mail.smtp.ssl.protocols", "TLSv1.2");//사용할 ssl 프로토콜 버젼

        mailSender.setJavaMailProperties(javaMailProperties);//mailSender에 우리가 만든 properties 넣고

        return mailSender;//빈으로 등록한다.

    }

}

