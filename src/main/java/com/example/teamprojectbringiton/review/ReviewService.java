package com.example.teamprojectbringiton.review;

import com.example.teamprojectbringiton.space.dto.reqDTO.SpaceRatingReviewDto;
import org.springframework.stereotype.Service;

@Service
public class ReviewService {
    public void reviewSave(SpaceRatingReviewDto dto){
        Review review = Review.builder()
                .rating(dto.getRating())
                .comment(dto.getComment())
                .spaceId(1)
                .userId(1)
                .build();
        System.out.println("insert해따요");
       // return spaceRepository.saveReview(review);

    }
}
