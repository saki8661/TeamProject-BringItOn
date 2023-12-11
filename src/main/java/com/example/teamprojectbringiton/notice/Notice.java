package com.example.teamprojectbringiton.notice;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Notice {
    private Integer id;
    private String noticeTitle;
    private String noticeContent;
    private Timestamp createdAt;

    @Builder
    public Notice(Integer id, String noticeTitle, String noticeContent, Timestamp createdAt) {
        this.id = id;
        this.noticeTitle = noticeTitle;
        this.noticeContent = noticeContent;
        this.createdAt = createdAt;
    }
}
