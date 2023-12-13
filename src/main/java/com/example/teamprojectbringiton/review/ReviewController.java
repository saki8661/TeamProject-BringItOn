package com.example.teamprojectbringiton.review;

import com.example.teamprojectbringiton.space.dto.reqDTO.SpaceRatingReviewDto;
import com.example.teamprojectbringiton.user.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class ReviewController {


    @Autowired
    private ReviewService reviewService;

    @Autowired
    private HttpSession session;
    @PostMapping("/space-review")
    public String placeReviewProc(SpaceRatingReviewDto dto) {
        System.out.println("+++리뷰컨트롤러 진입");
        //spaceService.reviewSave(dto);
        System.out.println("+++dto잘담김"+dto);
        return "redirect:/space-detail/";
    }
}
