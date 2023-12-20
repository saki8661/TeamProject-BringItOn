package com.example.teamprojectbringiton.board.dto.request;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@Getter
@Setter
public class BoardUpdateDTO {
    private Integer id;
    private Integer userId;
    private String boardTitle;
    private String boardContent;
    private Date createdAt;

    public Integer getId() {
        if (id == null) {
            throw new IllegalStateException("ID cannot be null for board update.");
        }
        return id;
    }
}
