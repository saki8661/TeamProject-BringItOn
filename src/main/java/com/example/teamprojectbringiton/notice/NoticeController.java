package com.example.teamprojectbringiton.notice;


import com.example.teamprojectbringiton.notice.dto.reqDto.NoticeUpdateDto;
import com.example.teamprojectbringiton.notice.dto.reqDto.NoticeWriteDto;
import com.example.teamprojectbringiton.notice.dto.respDto.NoticeListDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;


@Controller
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @Autowired
    private NoticeRepository noticeRepository;

    @GetMapping("/notice-main")
    public String noticePage(Model model) {
        List<NoticeListDto> notices = noticeService.noticeList();
        System.out.println("담김?" + notices.get(0).getNoticeTitle());
        model.addAttribute("notices", notices);
        return "customer/noticeMain";
    }

    @PostMapping("/notice-write")
    public String noticeWrite(NoticeWriteDto dto) {
        noticeService.noticeWrite(dto);
        return "redirect:/notice-main";
    }

    @PostMapping("/notice-update")
    public String noticeUpdate(NoticeUpdateDto dto) {
        noticeService.noticeUpdate(dto);
        return "redirect:/notice-main";

    }

    @GetMapping("/notice-delete/{id}")
    public String noticedelete(@PathVariable Integer id) {
        noticeService.deleteById(id);
        return "redirect:/notice-main";
    }

}
