package com.example.teamprojectbringiton;

import com.example.teamprojectbringiton.space.SpaceService;
import com.example.teamprojectbringiton.space.dto.respDTO.SpaceDto;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    private HttpSession session;

    @Autowired
    private SpaceService spaceService;

    @GetMapping({"/","/home"})
    public String mainPage(Model model) {
        List<SpaceDto> spaces = spaceService.findAll();
        model.addAttribute("spaces", spaces);
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
