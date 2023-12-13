package com.example.teamprojectbringiton.review.reqDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.sql.Timestamp;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SpaceReviewDto {
    private Integer rating;
    private String comment;
    private String username;
    private Timestamp createdAt;
}
