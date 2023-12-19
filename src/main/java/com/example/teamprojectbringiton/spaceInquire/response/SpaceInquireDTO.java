package com.example.teamprojectbringiton.spaceInquire.response;

import lombok.Data;
import java.sql.Timestamp;

@Data
public class SpaceInquireDTO {
    private String username;
    private String inquireContent;
    private String inquireAnswer;
    private Integer userId;
    private Integer spaceId;
    private Timestamp createdAt;

}
