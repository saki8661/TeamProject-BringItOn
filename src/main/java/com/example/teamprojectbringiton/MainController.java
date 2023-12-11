package com.example.teamprojectbringiton;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @Autowired
    private HttpSession session;

    @GetMapping({"/","/home"})
    public String mainPage(Model model) {
        model.addAttribute("session", session);
        System.out.println("session : "+ session);
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
