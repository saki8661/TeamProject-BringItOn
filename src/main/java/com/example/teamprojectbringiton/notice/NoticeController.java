package com.example.teamprojectbringiton.notice;


import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton.notice.dto.request.NoticeUpdateDTO;
import com.example.teamprojectbringiton.notice.dto.request.NoticeWriteDTO;
import com.example.teamprojectbringiton.notice.dto.response.NoticeListDTO;
import com.example.teamprojectbringiton.notice.noticeCategory.NoticeCategory;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class NoticeController {

    @Autowired
    HttpSession session;

    @Autowired
    private NoticeService noticeService;

    @Autowired
    private NoticeRepository noticeRepository;

    @GetMapping("/notice-main")
    public String noticePage(Model model) {
        List<NoticeListDTO> notices = noticeService.noticeList();
        List<NoticeCategory> noticeCategories = noticeService.noticeCategoryList();
        System.out.println("담김?" + notices.get(0).getNoticeTitle());
        model.addAttribute("notices", notices);
        model.addAttribute("noticeCategories", noticeCategories);
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
        noticeService.noticeWrite(dto, sessionUser.getId());
        System.out.println(dto.getNoticeContent()+"공지글@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(dto.getNoticeTitle()+"공지제목@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(dto.getNoticeCategoryId()+"공지카테고리@@@@@@@@@@@@@@@@@@@@@@@@@@");
        System.out.println(sessionUser.getId()+"작성아이디@@@@@@@@@@@@@@@@@@@@@@@@@@");
        return "redirect:/notice-main";
    }

    @PostMapping("/notice-update/{id}")
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
        // HTML 태그 제거
        String plainText = Jsoup.clean(dto.getNoticeContent(), Whitelist.none());
        dto.setNoticeContent(plainText);
        noticeService.noticeUpdate(dto, sessionUser.getId());
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

    @RequestMapping("/getNoticeCategories")
    @ResponseBody
    public List<NoticeCategory> noticeWrite() {
        List<NoticeCategory> noticeCategories = noticeService.noticeCategoryList();
        return noticeCategories;
    }

    @GetMapping("/getNoticeList")
    @ResponseBody
    public List<NoticeListDTO> getNoticeList() {
        return noticeService.noticeList();
    }

}
