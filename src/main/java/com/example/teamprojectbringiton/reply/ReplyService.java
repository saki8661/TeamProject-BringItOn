package com.example.teamprojectbringiton.reply;

import com.example.teamprojectbringiton._core.handler.exception.CustomRestfullException;
import com.example.teamprojectbringiton.reply.dto.request.ReplyWriteDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

@Service
public class ReplyService {

    @Autowired
    ReplyRepository replyRepository;

    public int replyWrite(ReplyWriteDTO dto) {
        System.out.println("@@@@@@@@@@@@@댓글작성 서비스 진입");
        int replyWrite = replyRepository.replyInsert(dto);
        return replyWrite;
    }

    public int deleteById(Integer id) {
        int replyDelete = replyRepository.deleteById(id);
        if (replyDelete != 1) {
            throw new CustomRestfullException("댓글 삭제 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return replyDelete;
    }
}
