package com.example.teamprojectbringiton.inquire.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InquireUpdateDTO {
    private Integer id;
    private String inquireTitle;
    private String inquireContent;
    private Integer inquireCategoryId;
    private Integer userId;

}
