package com.example.teamprojectbringiton.review.dto.response;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class ReviewListDTO {
    private Integer id;
    private Integer rating;
    private String comment;
    private Integer spaceId;
    private Integer userId;
    private String username;
    private String nickname;
    private String userDivision;
    private String spaceName;
    private Timestamp reviewCreatedAt;
}
