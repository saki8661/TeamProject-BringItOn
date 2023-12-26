package com.example.teamprojectbringiton.review.dto.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.sql.Timestamp;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SpaceReviewDTO {
    private Integer rating;
    private String comment;
    private String username;
    private Integer spaceId;
    private Integer userId;
    private Timestamp createdAt;
}
