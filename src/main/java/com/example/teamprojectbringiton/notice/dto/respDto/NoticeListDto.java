package com.example.teamprojectbringiton.notice.dto.respDto;

import com.example.teamprojectbringiton._core.utils.TimeStampUtil;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
public class NoticeListDto {
    private Integer id;
    private String noticeTitle;
    private String noticeContent;
    private Timestamp createdAt;
    private Integer noticeCategoryId;
    private String noticeCategory;

    public String formatCreatedAt() {

        return TimeStampUtil.timestampToString(createdAt);
    }
}
