package com.example.teamprojectbringiton.space.dto.reqDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SpaceRatingReviewDto {
    private Integer rating;
    private String comment;
    private Integer spaceId;
    private Integer userId;

}
