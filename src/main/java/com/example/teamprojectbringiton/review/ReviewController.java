package com.example.teamprojectbringiton.review;

import com.example.teamprojectbringiton._core.utils.PageVO;
import com.example.teamprojectbringiton.review.dto.request.SpaceReviewDTO;
import com.example.teamprojectbringiton.review.dto.response.ReviewListDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

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
        return "redirect:/space-detail/" + dto.getSpaceId();
    }


    @GetMapping("/user/review/{id}")
    public String userReviewPage(@RequestParam(name = "currentPage", defaultValue = "1") int currentPage,
                                 @RequestParam(name = "pageSize", defaultValue = "5") int pageSize,
                                 @PathVariable Integer id, Model model){
        List<ReviewListDTO> reviewList = reviewService.findByUserId(id, currentPage, pageSize);
        int totalItems = reviewService.findByUserIdCount(id);
        System.out.println("totalItems: " + totalItems);

        PageVO pageVO = new PageVO();
        pageVO.setCurrentPage(currentPage);
        pageVO.setCountPerPage(pageSize);
        pageVO.setLastPage((int) Math.ceil((double) totalItems / pageSize));
        pageVO.setFirstPage(1);
        pageVO.setPageSize(8); // 기본값 설정
        pageVO.setCountSize(5);
        model.addAttribute("reviewList", reviewList);
        model.addAttribute("pageVO", pageVO);
        return "user/userReview";
    }

}
