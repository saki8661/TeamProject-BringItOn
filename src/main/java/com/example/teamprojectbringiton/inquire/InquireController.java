package com.example.teamprojectbringiton.inquire;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class InquireController {

    @GetMapping("/inquire-main")
    public String inquire(){
        return "inquire/inquireMain";
    }

    @GetMapping("/inquire-write")
    public String write(){
        return "inquire/inquireWrite";
    }

}
