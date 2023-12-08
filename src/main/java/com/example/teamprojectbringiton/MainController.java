package com.example.teamprojectbringiton;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping({"/","/home"})
    public String test() {
        return "home";
    }

    @GetMapping("/matching-page")
    public String matchingPage() {
        return "matching/matchingPage";
    }

    @GetMapping("/matching-page-test")
    public String matchingPageTest() {
        return "matching/matchingPageTest";
    }
    
}
