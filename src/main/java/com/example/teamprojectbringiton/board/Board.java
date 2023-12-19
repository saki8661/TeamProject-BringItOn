package com.example.teamprojectbringiton.board;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Date;

@Getter
@NoArgsConstructor
public class Board {
    private Integer id;
    private String boardTitle;
    private String boardContent;
    private Date createdAt;
    private Integer userId;

    @Builder
    public Board(Integer id, String boardTitle, String boardContent, Date createdAt, Integer userId){
        this.id = id;
        this.boardTitle = boardTitle;
        this.boardContent = boardContent;
        this.createdAt = createdAt;
        this.userId = userId;
    }
}
