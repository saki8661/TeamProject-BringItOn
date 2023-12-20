package com.example.teamprojectbringiton.board.dto.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;


@Getter
@Setter
public class BoardDTO {
    private Integer id;
    private String boardTitle;
    private String boardContent;
    private Date createdAt;
    private Integer userId;
    private String nickName;
}
