package com.example.teamprojectbringiton.inquire.dto.respDto;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
public class InquireListDto {
    private Integer id;
    private String inquireTitle;
    private String inquireContent;
    private Timestamp createdAt;
    private Integer userId;
    private Integer inquireCategoryId;
    private String inquireCategory;
}
