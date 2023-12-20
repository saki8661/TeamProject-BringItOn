package com.example.teamprojectbringiton.reply;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton._core.handler.exception.UnAuthorizedException;
import com.example.teamprojectbringiton.reply.dto.request.ReplyWriteDTO;
import com.example.teamprojectbringiton.reply.dto.response.ReplyDTO;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ReplyController {

    @Autowired
    HttpSession session;

    @Autowired
    ReplyService replyService;

    @Autowired
    ReplyRepository replyRepository;

    @PostMapping("/reply-write")
    public String replyWrite(ReplyWriteDTO dto) {
        User sessionUser = (User) session.getAttribute("sessionUser");

        if (sessionUser == null) {
            throw new UnAuthorizedException("로그인 해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        dto.setUserId(sessionUser.getId());
        dto.setBoardId(dto.getBoardId());
        System.out.println("!@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getBoardId());
        System.out.println("컨트롤러 들어왔나요!@@@@@@@@@@@@@@@@@@@@@@@@@");
        if (dto.getComment() == null || dto.getComment().isEmpty()) {
            throw new CustomRestfullException("댓글을 입력해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        replyService.replyWrite(dto);
        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@컨트롤러 나옴?");
        return "redirect:/board-detail/" + dto.getBoardId();

    }

    @GetMapping("/reply-delete/{id}")
    public String replyDelete(@PathVariable Integer id){
        User sessionUser = (User) session.getAttribute("sessionUser");
        if (sessionUser == null) {
            throw new UnAuthorizedException("로그인 해주세요",
                    HttpStatus.BAD_REQUEST);
        }
        ReplyDTO replyDTO = replyRepository.findById(id);
        System.out.println("세션유저 아이디"+sessionUser.getId());
        System.out.println("댓글 유저 아이디"+replyDTO.getUserId());
        if (!replyDTO.getUserId().equals(sessionUser.getId())) {
            throw new CustomRestfullException("권한이 없습니다",
                    HttpStatus.BAD_REQUEST);
        }
        replyService.deleteById(id);
        return "redirect:/board-detail/" + replyDTO.getBoardId();
    }

}
