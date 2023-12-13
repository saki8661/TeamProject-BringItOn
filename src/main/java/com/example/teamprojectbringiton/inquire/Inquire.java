package com.example.teamprojectbringiton.inquire;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor

public class Inquire {
    private Integer id;
    private String inquireTitle;
    private String inquireContent;
    private Timestamp createdAt;
    private Integer userId;
    private Integer inquireCategoryId;

    @Builder
    public Inquire(Integer id, String inquireTitle, String inquireContent, Timestamp createdAt, Integer userId, Integer inquireCategoryId) {
        this.id = id;
        this.inquireTitle = inquireTitle;
        this.inquireContent = inquireContent;
        this.createdAt = createdAt;
        this.userId = userId;
        this.inquireCategoryId = inquireCategoryId;
    }
}
