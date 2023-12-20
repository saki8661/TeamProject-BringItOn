package com.example.teamprojectbringiton.reply.dto.request;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
public class ReplyWriteDTO {
    private String comment;
    private Timestamp createdAt;
    private Integer boardId;
    private Integer userId;
}
