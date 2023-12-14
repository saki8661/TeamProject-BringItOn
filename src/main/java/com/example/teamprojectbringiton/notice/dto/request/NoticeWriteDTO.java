package com.example.teamprojectbringiton.notice.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeWriteDTO {
    private String noticeTitle;
    private String noticeContent;
    private Integer categoryId;

}
