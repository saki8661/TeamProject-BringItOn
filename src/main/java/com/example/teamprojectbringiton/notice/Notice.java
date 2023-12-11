package com.example.teamprojectbringiton.notice;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Notice {
    private Integer id;
    private Integer noticeCategoryId;
    private String noticeTitle;
    private String noticeContent;
    private Timestamp createdAt;

    @Builder
    public Notice(Integer id, Integer noticeCategoryId,String noticeTitle, String noticeContent, Timestamp createdAt) {
        this.id = id;
        this.noticeCategoryId = noticeCategoryId;
        this.noticeTitle = noticeTitle;
        this.noticeContent = noticeContent;
        this.createdAt = createdAt;
    }
}
