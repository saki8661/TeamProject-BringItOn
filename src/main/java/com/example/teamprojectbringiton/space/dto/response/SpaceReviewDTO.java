package com.example.teamprojectbringiton.space.dto.response;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class SpaceReviewDTO {
    private Integer id;
    private Integer rating;
    private String comment;
    private Timestamp createdAt;
    private String username;
}
