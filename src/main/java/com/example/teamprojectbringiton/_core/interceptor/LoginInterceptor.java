package com.example.teamprojectbringiton._core.interceptor;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.utils.ApiUtils;
import com.example.teamprojectbringiton._core.utils.Script;
import com.example.teamprojectbringiton.user.User;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.HandlerInterceptor;

import java.io.PrintWriter;

public class LoginInterceptor implements HandlerInterceptor {

//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        HttpSession session = request.getSession();
//        User sessionUser = (User) session.getAttribute("sessionUser");
//
//        String startEndPoint = request.getRequestURI().split("/")[1];
//
//        if (sessionUser == null) {
//            if (startEndPoint.equals("api")) {
//                response.setHeader("Content-Type", "application/json; charset=utf-8");
//                PrintWriter out = response.getWriter();
//                ApiUtils<String> apiUtil = new ApiUtils(false, "로그인 후 사용 가능합니다.");
//                String responseBody = new ObjectMapper().writeValueAsString(apiUtil);
//                out.println(responseBody);
//            } else {
//                response.setHeader("Content-Type", "text/html; charset=utf-8");
//                PrintWriter out = response.getWriter();
//                out.println(Script.href("/kakao-login", "로그인후 사용 가능합니다"));
//            }
//            return false;
//        }
//        return true;
//    }
}
