package com.example.teamprojectbringiton.inquire.dto.reqDto;

import lombok.*;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class WriteInquireDto {
    private String inquireTitle;
    private String inquireContent;
    private Timestamp createdAt;
    private Integer userId;

    @Builder
    public WriteInquireDto(String inquireTitle, String inquireContent, Timestamp createdAt, Integer userId) {
        this.inquireTitle = inquireTitle;
        this.inquireContent = inquireContent;
        this.createdAt = createdAt;
        this.userId = userId;
    }
}
