package com.example.teamprojectbringiton._core.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MyFilter1 implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 필터 초기화 코드
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        // 세션유저정보가 없거나 브라우저가 아니거나 Postman으로 유입하는 경우
//        if (req.getHeader("User-Agent").contains("XBox") || req.getHeader("User-Agent").contains("Postman")) {
//            resp.setHeader("Content-Type", "text/html; charset=utf-8");
//            PrintWriter out = resp.getWriter();
//
//            req.setAttribute("name", "불청객");
//            out.println("<h1>나가주세요" + req.getAttribute("name") + "</h1>");
//            return;
//        }

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // 필터 파괴(소멸) 코드
    }
}