package com.example.teamprojectbringiton.inquire;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton._core.utils.Define;
import com.example.teamprojectbringiton.inquire.dto.reqDto.InquireWriteDto;
import com.example.teamprojectbringiton.inquire.dto.respDto.InquireListDto;
import com.example.teamprojectbringiton.inquire.inquireCategory.InquireCategory;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class InquireController {

    @Autowired
    private InquireRepository inquireRepository;

    @Autowired
    private InquireService inquireService;

    @Autowired
    private HttpSession session;

    @GetMapping("/inquire-main")
    public String inquirePage(Model model) {
        List<InquireListDto> inquires = inquireService.inquireList();
        List<InquireCategory> inquireCategories = inquireService.inquireCategoryList();
        System.out.println("담김??" + inquires.get(0).getInquireTitle());
        System.out.println("담김??" + inquires.get(0).getInquireContent());
        model.addAttribute("inquires", inquires);
        model.addAttribute("inquireCategories", inquireCategories);
        return "customer/inquireMain";
    }


    @Transactional
    @PostMapping("/inquire-write")
    public String inquireWriteProc(InquireWriteDto dto) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        System.out.println("1111@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+sessionUser.getId());
        inquireService.inquireWrite(dto, sessionUser.getId());
        System.out.println("2222@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+sessionUser.getId());
        return "redirect:/inquire-main";
    }

    @GetMapping("/inquire-delete/{id}")
    public String inquireDelete(@PathVariable Integer id){
        inquireService.deleteById(id);
        System.out.println("@@@@@@@@@@@@@컨트롤러 호출됨");
        return "redirect:/inquire-main";
    }

}
