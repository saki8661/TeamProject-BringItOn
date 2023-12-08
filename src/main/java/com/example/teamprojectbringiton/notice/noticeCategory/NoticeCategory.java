package com.example.teamprojectbringiton.notice.noticeCategory;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class NoticeCategory {
    private Integer id;
    private String noticeCategory;

    @Builder
    public NoticeCategory(Integer id, String noticeCategory) {
        this.id = id;
        this.noticeCategory = noticeCategory;
    }
}
