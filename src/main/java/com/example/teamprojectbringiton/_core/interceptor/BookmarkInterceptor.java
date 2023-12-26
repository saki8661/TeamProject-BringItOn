package com.example.teamprojectbringiton._core.interceptor;


import java.io.PrintWriter;

import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.HandlerInterceptor;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.utils.Script;
import com.example.teamprojectbringiton.user.User;
import com.fasterxml.jackson.databind.ObjectMapper;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class BookmarkInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        User sessionUser = (User) session.getAttribute("sessionUser");

        if (!sessionUser.getUserDivision().equals("general")) {
            System.out.println("북마크인터셉터 : API 인증없음");
            response.setHeader("Content-Type", "text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            CustomRestfullException error = new CustomRestfullException("인증되지 않은 사용자 입니다.", HttpStatus.BAD_REQUEST);
            String responseBody = new ObjectMapper().writeValueAsString(error);
            out.println(responseBody);
            return false;
        }

        return true;
    }

}