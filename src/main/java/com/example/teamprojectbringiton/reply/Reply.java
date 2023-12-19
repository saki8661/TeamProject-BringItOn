package com.example.teamprojectbringiton.reply;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Reply {
    private Integer id;
    private String comment;
    private Timestamp createdAt;
    private Integer userId;
    private Integer boardId;

    @Builder
    public Reply(Integer id, String comment, Timestamp createdAt, Integer userId, Integer boardId){
        this.id = id;
        this.comment = comment;
        this.createdAt = createdAt;
        this.userId = userId;
        this.boardId = boardId;
    }
}
