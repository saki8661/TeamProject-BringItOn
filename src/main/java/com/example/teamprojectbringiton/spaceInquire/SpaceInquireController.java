package com.example.teamprojectbringiton.spaceInquire;

import com.example.teamprojectbringiton.spaceInquire.request.SpaceInquireDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SpaceInquireController {


    @Autowired
    private SpaceInquireService spaceInquireService;

    @Autowired
    private HttpSession session;

    @PostMapping("/space-inquire")
    public String spaceInquireProc(SpaceInquireDTO dto) {
        System.out.println("+++리뷰컨트롤러 진입inquire" + dto.getSpaceId());
        spaceInquireService.spaceInqSave(dto);
        System.out.println("+++dto잘담김inquire" + dto);
        return "redirect:/space-detail/" + dto.getSpaceId();
    }


}
