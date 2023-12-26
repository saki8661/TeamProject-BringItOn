package com.example.teamprojectbringiton.space;


import com.example.teamprojectbringiton._core.utils.PageVO;
import com.example.teamprojectbringiton.review.ReviewService;
import com.example.teamprojectbringiton.space.dto.response.SpaceDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceDetailDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceReviewDTO;
import com.example.teamprojectbringiton.spaceInquire.SpaceInquireService;
import com.example.teamprojectbringiton.spaceInquire.response.SpaceInquireDTO;
import com.example.teamprojectbringiton.user.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SpaceController {

    @Autowired
    private SpaceService spaceService;

    @Autowired
    private SpaceInquireService spaceInquireService;

    @Autowired
    private HttpSession session;

    @Autowired
    private ReviewService reviewService;


    @GetMapping("/space-detail/{id}")
    public String placeDetailPage(@PathVariable Integer id, Model model) {
        System.out.println("컨트롤러 진입" + id);
        SpaceDetailDTO spaceDetail = spaceService.spaceFindById(id);
        model.addAttribute("spaceDetail", spaceDetail);
        List<SpaceReviewDTO> spaceReviewList = spaceService.spaceReviewFindById(id);
        model.addAttribute("spaceReviewList", spaceReviewList);
        List<SpaceInquireDTO> spaceInquireList = spaceInquireService.spaceInqFindById(id);
        model.addAttribute("spaceInquireList", spaceInquireList);
        System.out.println("모델에 담겼나마루치아라치");
        int commentCount = reviewService.addReviewAndCommentCount(id);
        model.addAttribute("commentCount", commentCount);
        return "/spaceRental/placeDetail";
    }

//    @GetMapping("/space-map")
//    public String placeMap() {
//        System.out.println("++++지도 컨트롤러 때리기++++");
//        return "/spaceRental/placeDetail";
//    }

    @GetMapping({"/", "home"})
    public String spaceMainPage(@RequestParam(name = "currentPage", defaultValue = "1") int currentPage,
                                @RequestParam(name = "pageSize", defaultValue = "8") int pageSize,
                                Model model) {

        List<SpaceDTO> spaces = spaceService.findAllPaged(pageSize, currentPage);
        int totalItems = spaceService.getTotalItemCount();

        // 추가: 페이징 정보 설정
        PageVO pageVO = new PageVO();
        pageVO.setCurrentPage(currentPage);
        pageVO.setCountPerPage(pageSize);
        pageVO.setLastPage((int) Math.ceil((double) totalItems / pageSize));
        pageVO.setFirstPage(1);
        pageVO.setPageSize(8); // 기본값 설정
        pageVO.setCountSize(5);

        model.addAttribute("spaces", spaces);
        model.addAttribute("pageVO", pageVO);
        // 페이징 정보를 모델에 추가

        return "/home";
    }

}
