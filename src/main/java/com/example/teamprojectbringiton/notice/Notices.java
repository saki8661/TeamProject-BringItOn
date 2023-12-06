package com.example.teamprojectbringiton.notice;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Notices {
    private Integer noticeId;
    private String noticeTitle;
    private String noticeContent;
    private Date createdAt;
}
