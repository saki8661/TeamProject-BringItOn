package com.example.teamprojectbringiton.review;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Reviews {
    private Integer reviewId;
    private Integer reservationId;
    private Integer userId;
    private Integer rating;
    private String comment;
}
