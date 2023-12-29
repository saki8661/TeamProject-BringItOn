package com.example.teamprojectbringiton.spaceInquire.request;

import lombok.Data;

@Data
public class SpaceInqUpdateDTO {
    private Integer spaceId;
    private Integer userId;
    private String newAnswer;
}
