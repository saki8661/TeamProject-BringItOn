package com.example.teamprojectbringiton.notice.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeUpdateDTO {
    private Integer id;
    private String noticeTitle;
    private String noticeContent;
    private Integer noticeCategoryId;

}
