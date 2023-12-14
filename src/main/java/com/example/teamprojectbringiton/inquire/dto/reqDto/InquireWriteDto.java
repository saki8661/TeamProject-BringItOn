package com.example.teamprojectbringiton.inquire.dto.reqDto;

import lombok.*;

import java.sql.Timestamp;

@Getter
@Setter
public class InquireWriteDto {
    private String inquireTitle;
    private String inquireContent;
    private Integer inquireCategoryId;
}
