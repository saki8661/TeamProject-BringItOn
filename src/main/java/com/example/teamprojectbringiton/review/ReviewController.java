package com.example.teamprojectbringiton.review;

import com.example.teamprojectbringiton.review.reqDTO.SpaceReviewDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ReviewController {


    @Autowired
    private ReviewService reviewService;

    @Autowired
    private HttpSession session;

    @PostMapping("/space-review")
    public String placeReviewProc(SpaceReviewDTO dto, Review review, Model model) {
        System.out.println("+++리뷰컨트롤러 진입" + dto.getSpaceId());
        reviewService.reviewSave(dto);
        int commentCount = reviewService.addReviewAndCommentCount(review);
        model.addAttribute("commentCount", commentCount);
        System.out.println("+++dto잘담김" + dto);
        return "redirect:/space-detail/" + dto.getSpaceId();
    }


}
