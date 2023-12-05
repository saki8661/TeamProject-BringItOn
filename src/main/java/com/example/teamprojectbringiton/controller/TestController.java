package com.example.teamprojectbringiton.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @GetMapping("/home")
    public String test(){
        return "home";
    }


    @GetMapping("/user-update")
    public String userUpdate(){
        return "user/userUpdate";
    }
    @GetMapping("/user-team")
    public String userTeamManagement(){
        return "user/userTeamManagement";
    }


}
