package com.example.teamprojectbringiton.inquire;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton._core.utils.Define;
import com.example.teamprojectbringiton.inquire.dto.reqDto.WriteInquireDto;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class InquireController {

    @Autowired
    private InquireRepository inquireRepository;

    @Autowired
    private InquireService inquireService;

    @Autowired
    private HttpSession session;

    @GetMapping("/inquire-main")
    public String inquire() {
        return "customer/inquireMain";
    }

    @PostMapping("/inquire-write")
    public String saveProc(WriteInquireDto dto) {

        // 1. 인증검사
        User principal = (User) session.getAttribute(Define.PRINCIPAL);
        if (principal == null) {
            throw new UnAuthorizedException("로그인 먼저 해주세요",
                    HttpStatus.UNAUTHORIZED);
        }

        // 2. 유효성 검사
        if (dto.getInquireTitle() == null || dto.getInquireTitle().isEmpty()) {
            throw new CustomRestfullException("문의 제목을 입력하시오",
                    HttpStatus.BAD_REQUEST);
        }

        if (dto.getInquireContent() == null || dto.getInquireContent().isEmpty()) {
            throw new CustomRestfullException("문의 내용을 입력하시오",
                    HttpStatus.BAD_REQUEST);
        }

        inquireService.inquireWrite(dto, principal.getId());

        return "customer/inquireMain";
    }
}
