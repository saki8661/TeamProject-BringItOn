package com.example.teamprojectbringiton.space;

import com.example.teamprojectbringiton.space.dto.respDTO.SpaceDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class SpaceController {

    @Autowired
    private SpaceService spaceService;

    @GetMapping("/space-main")
    public String spaceMainPage(Model model){
        List<SpaceDto> spaces = spaceService.findAll();
        model.addAttribute("spaces", spaces);
        return "/home";
    }

}
