package com.example.teamprojectbringiton.review;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Review {
    private Integer id;
    private Integer rating;
    private String comment;
    private Integer spaceId;
    private Integer userId;
    private Timestamp createdAt;

    @Builder
    public Review(Integer id, Integer rating, String comment, Integer spaceId, Integer userId, Timestamp createdAt) {
        this.id = id;
        this.rating = rating;
        this.comment = comment;
        this.spaceId = spaceId;
        this.userId = userId;
        this.createdAt = createdAt;
    }
}
