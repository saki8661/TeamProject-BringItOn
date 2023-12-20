package com.example.teamprojectbringiton._core.handler;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice // IoC 대상 + AOP기반
public class MyRestfullExceptionHandler {

    @ExceptionHandler(Exception.class)
    public void exception(Exception e) {
        System.out.println("-----------------------");
        System.out.println(e.getClass().getName());
        System.out.println(e.getMessage());
        System.out.println("-----------------------");
    }

    // 사용자 정의 예외 클래스 활용
    @ExceptionHandler(CustomRestfullException.class)
    public String basicException(CustomRestfullException e) {
        StringBuffer sb = new StringBuffer();
        sb.append("<script>");
        sb.append("alert( `" + e.getMessage() + "`);");
        sb.append("history.back();");
        sb.append("</script>");
        System.out.println("핸들러에서 잡음");
        return sb.toString();
    }


    // 지켜보는 녀석
    @ExceptionHandler(UnAuthorizedException.class)
    public String unAuthorizedException(UnAuthorizedException e) {
        StringBuffer sb = new StringBuffer();
        sb.append("<script>");
        sb.append("alert( '" + e.getMessage() + "');");
        sb.append("location.href='/kakao-login';");
        sb.append("</script>");
        return sb.toString();
    }


}

