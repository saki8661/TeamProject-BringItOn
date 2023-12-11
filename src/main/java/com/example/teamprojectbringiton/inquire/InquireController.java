package com.example.teamprojectbringiton.inquire;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InquireController {

    @Autowired
    private InquireRepository inquireRepository;

    @Autowired
    private InquireService inquireService;

//    @GetMapping("/notice-main")
//    public String notice() {
//        return "customer/noticeMain";
//    }

    @GetMapping("/inquire-main")
    public String inquire() {
        return "customer/inquireMain";
    }

}
