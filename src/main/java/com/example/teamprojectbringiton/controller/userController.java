package com.example.teamprojectbringiton.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class userController {
    @GetMapping("/kakako-login")
    public  String kakaoLogin(){
        return "user/kakaoLoginPage";
    }

    @GetMapping("/join")
    public  String join(){
        return "/user/joinPage";
    }

    @GetMapping("/login")
    public  String login(){
        return "/user/loginPage";
    }
}
