package com.example.teamprojectbringiton.space.dto.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SpaceRatingReviewDTO {
    private Integer rating;
    private String comment;


}
