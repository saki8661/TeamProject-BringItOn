package com.example.teamprojectbringiton.board.dto.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Timestamp;

@Getter
@Setter
public class BoardDetailDTO {
    private Integer id;
    private String boardTitle;
    private String boardContent;
    private Date createdAt;
    private Integer userId;
    private String comment;
    private Integer replyUserId;
    private Timestamp replyCreatedAt;
}
