package com.example.teamprojectbringiton.review;

import com.example.teamprojectbringiton._core.utils.PageVO;
import com.example.teamprojectbringiton.review.dto.request.SpaceReviewDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    @Transactional
    public void reviewSave(SpaceReviewDTO dto) {
        Review review = Review.builder()
                .rating(dto.getRating())
                .comment(dto.getComment())
                .spaceId(dto.getSpaceId())
                .userId(1)
                .build();
        System.out.println("insert해따요");
        reviewRepository.insert(review);

    }

    public List<Review> findByUserId(Integer id, Integer currentPage, Integer pageSize) {
        int offset = currentPage * pageSize - pageSize;
        List<Review> reviewList =  reviewRepository.findByUserId(id, pageSize, offset);

        return reviewList;
    }

    public int findByUserIdCount(Integer id) {
        int reviewCount = reviewRepository.findByUserIdCount(id);
        System.out.println("reviewCount: "+reviewCount);
        return reviewCount;
    }
}
