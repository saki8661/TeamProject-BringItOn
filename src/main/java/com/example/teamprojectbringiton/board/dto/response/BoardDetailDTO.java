package com.example.teamprojectbringiton.board.dto.response;

import com.example.teamprojectbringiton.reply.dto.response.ReplyDTO;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.util.Collections;
import java.util.List;

@Getter
@Setter
public class BoardDetailDTO {
    private Integer id;
    private String boardTitle;
    private String boardContent;
    private Date createdAt;
    private Integer userId;
    private String nickName;
    private List<ReplyDTO> replies; // 추가

    public List<ReplyDTO> getReplies() {
        // replies가 null이면 빈 리스트를 반환하도록 수정
        return replies != null ? replies : Collections.emptyList();
    }

}
