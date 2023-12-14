package com.example.teamprojectbringiton.inquire.dto.request;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class UpdateInquireDTO {
    private String inquireTitle;
    private String inquireContent;
    private Timestamp createdAt;
    private Integer userId;

    @Builder
    public UpdateInquireDTO(String inquireTitle, String inquireContent, Timestamp createdAt, Integer userId) {
        this.inquireTitle = inquireTitle;
        this.inquireContent = inquireContent;
        this.createdAt = createdAt;
        this.userId = userId;
    }
}
