package com.example.teamprojectbringiton._core.handler;

import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton._core.utils.Define;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component // IoC대상 - 싱글톤 관리
public class AuthInterceptor implements HandlerInterceptor{


    // 컨트롤러에 들어오기 전에 동작
    // controller ---> true(들어감) , false(안들어감)
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        System.out.println("인터셉터 동작 확인");

        // 세션에 사용자 정보 확인
        HttpSession session = request.getSession();
        User principal = (User)session.getAttribute(Define.PRINCIPAL);
        if(principal == null) {
            // response.sendRedirect("/user/sign-in");
            throw new UnAuthorizedException("로그인 먼저 해주세요", HttpStatus.UNAUTHORIZED);
        }
        return true;
    }

    // 뷰가 렌더링 되기 전에 호출 되는 메서드
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        // TODO Auto-generated method stub
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }

    // 요청 처리가 완료된 후, 즉, 뷰 렌더링이 완료된 후에 호출 되는 메서드
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        // TODO Auto-generated method stub
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }


}

