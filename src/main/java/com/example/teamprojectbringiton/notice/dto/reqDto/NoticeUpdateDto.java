package com.example.teamprojectbringiton.notice.dto.reqDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeUpdateDto {
    private Integer id;
    private String noticeTitle;
    private String noticeContent;
    private Integer noticeCategoryId;

}
