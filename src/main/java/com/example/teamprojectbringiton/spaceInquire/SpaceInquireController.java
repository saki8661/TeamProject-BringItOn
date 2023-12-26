package com.example.teamprojectbringiton.spaceInquire;

import com.example.teamprojectbringiton.spaceInquire.request.SpaceInquireDTO;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SpaceInquireController {


    @Autowired
    private SpaceInquireService spaceInquireService;

    @Autowired
    private HttpSession session;

    @PostMapping("/space-inquire")
    public String spaceInquireProc(SpaceInquireDTO dto, Model model ) {
        System.out.println("+++리뷰컨트롤러 진입inquire" + dto.getSpaceId());
        spaceInquireService.spaceInqSave(dto);
        User sessionUser = (User) session.getAttribute("sessionUser");
        model.addAttribute("sessionUser", sessionUser);
        System.out.println("+++dto잘담김inquire" + dto);
        return "redirect:/space-detail/" + dto.getSpaceId();
    }


}
