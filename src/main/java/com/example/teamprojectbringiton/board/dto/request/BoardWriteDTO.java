package com.example.teamprojectbringiton.board.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardWriteDTO {
    private Integer userId;
    private String boardTitle;
    private String boardContent;
}
