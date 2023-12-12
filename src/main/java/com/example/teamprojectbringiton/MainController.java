package com.example.teamprojectbringiton;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {


    @GetMapping({"/", "/home"})
    public String mainPage() {
        return "home";
    }

    @GetMapping("/checkbox-test")
    public String checkboxTest() {
        return "checkboxtest";
    }


}
