package com.example.teamprojectbringiton.reply.dto.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
public class ReplyDTO {
    private Integer Id; // 댓글의 ID
    private String comment; // 댓글 내용
    private Timestamp createdAt; // 댓글 생성 일자
    private Integer userId;
    private String nickName;
}
