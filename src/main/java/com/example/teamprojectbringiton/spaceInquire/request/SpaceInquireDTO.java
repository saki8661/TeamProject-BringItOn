package com.example.teamprojectbringiton.spaceInquire.request;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class SpaceInquireDTO {
    private String inquireType;
    private String inquireContent;
    private Timestamp createdAt;
    private Integer userId;
    private Integer spaceId;
}
