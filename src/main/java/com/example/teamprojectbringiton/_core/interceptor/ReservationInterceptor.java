package com.example.teamprojectbringiton._core.interceptor;

import com.example.teamprojectbringiton._core.utils.Script;
import com.example.teamprojectbringiton.user.User;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;

import java.io.PrintWriter;

public class ReservationInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        User sessionUser = (User) session.getAttribute("sessionUser");

        if (!sessionUser.getUserDivision().equals("general")) {
            System.out.println("어드민인터셉터 : 웹 권한없음");
            response.setHeader("Content-Type", "text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println(Script.back("로그인을 먼저 해주세요."));
            return false;
        }
        return true;
    }
}
