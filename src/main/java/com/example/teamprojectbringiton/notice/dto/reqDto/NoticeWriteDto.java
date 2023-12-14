package com.example.teamprojectbringiton.notice.dto.reqDto;

import com.example.teamprojectbringiton._core.utils.TimeStampUtil;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
public class NoticeWriteDto {
    private String noticeTitle;
    private String noticeContent;
    private Integer categoryId;

}
