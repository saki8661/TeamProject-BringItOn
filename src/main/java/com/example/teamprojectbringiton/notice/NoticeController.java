package com.example.teamprojectbringiton.notice;


import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton.notice.dto.request.NoticeUpdateDTO;
import com.example.teamprojectbringiton.notice.dto.request.NoticeWriteDTO;
import com.example.teamprojectbringiton.notice.dto.response.NoticeListDTO;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;


@Controller
public class NoticeController {

    @Autowired
    HttpSession session;

    @Autowired
    private NoticeService noticeService;

    @GetMapping("/notice-main")
    public String noticePage(Model model) {
        List<NoticeListDTO> notices = noticeService.noticeList();
        System.out.println("담김?" + notices.get(0).getNoticeTitle());
        model.addAttribute("notices", notices);
        return "customer/noticeMain";
    }

    @PostMapping("/notice-write")
    public String noticeWrite(NoticeWriteDTO dto){
        User sessionUser = (User) session.getAttribute("sessionUser");
        if (sessionUser == null) {
            throw new UnAuthorizedException("로그인 해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        if (dto.getNoticeTitle() == null || dto.getNoticeTitle().isEmpty()) {
            throw new CustomRestfullException("제목을 입력해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        if (dto.getNoticeContent() == null || dto.getNoticeContent().isEmpty()) {
            throw new CustomRestfullException("내용을 입력해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        noticeService.noticeWrite(dto);
        return "redirect:/notice-main";
    }

    @PostMapping("/notice-update")
    public String noticeUpdate(NoticeUpdateDTO dto) {
        User sessionUser = (User) session.getAttribute("sessionUser");
        if (sessionUser == null) {
            throw new UnAuthorizedException("로그인 해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        if (dto.getNoticeTitle() == null || dto.getNoticeTitle().isEmpty()) {
            throw new CustomRestfullException("제목을 입력해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        if (dto.getNoticeContent() == null || dto.getNoticeContent().isEmpty()) {
            throw new CustomRestfullException("내용을 입력해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        noticeService.noticeUpdate(dto);
        return "redirect:/notice-main";

    }

    @GetMapping("/notice-delete/{id}")
    public String noticeDelete(@PathVariable Integer id){
        User sessionUser = (User) session.getAttribute("sessionUser");
        if (sessionUser == null) {
            throw new UnAuthorizedException("로그인 해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        noticeService.deleteById(id);
        System.out.println("@@@@@@@@@@@@@컨트롤러 호출됨");
        return "redirect:/notice-main";
    }

}
