package com.example.teamprojectbringiton.notice;


import com.example.teamprojectbringiton.notice.dto.request.NoticeUpdateDTO;
import com.example.teamprojectbringiton.notice.dto.request.NoticeWriteDTO;
import com.example.teamprojectbringiton.notice.dto.response.NoticeListDto;
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
    public String noticeWrite(NoticeWriteDTO dto){
        noticeService.noticeWrite(dto);
        return "redirect:/notice-main";
    }

    @PostMapping("/notice-update")
    public String noticeUpdate(NoticeUpdateDTO dto) {
        noticeService.noticeUpdate(dto);
        return "redirect:/notice-main";

    }

    @GetMapping("/notice-delete/{id}")
    public String noticeDelete(@PathVariable Integer id){
        noticeService.deleteById(id);
        System.out.println("@@@@@@@@@@@@@컨트롤러 호출됨");
        return "redirect:/notice-main";
    }

}
