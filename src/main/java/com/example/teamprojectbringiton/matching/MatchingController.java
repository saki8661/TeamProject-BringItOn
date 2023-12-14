package com.example.teamprojectbringiton.matching;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MatchingController {

    @GetMapping("/matching-page")
    public String matchingPage() {
        return "matching/matchingPage";
    }
}
