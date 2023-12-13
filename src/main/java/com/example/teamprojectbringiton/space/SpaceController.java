package com.example.teamprojectbringiton.space;

import com.example.teamprojectbringiton.space.dto.respDTO.SpaceDetailDto;
import com.example.teamprojectbringiton.space.dto.respDTO.SpaceListDto;
import com.example.teamprojectbringiton.review.reqDTO.SpaceReviewDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class SpaceController {

    @Autowired
    private SpaceService spaceService;

    @GetMapping("/space-main")
    public String spaceMainPage(Model model) {
        List<SpaceListDto> spaces = spaceService.findAll();
        model.addAttribute("spaces", spaces);
        return "/home";
    }

    @GetMapping("/space-detail/{id}")
    public String placeDetailPage(@PathVariable Integer id, Model model) {
        System.out.println("컨트롤러 진입" + id);
        SpaceDetailDto spaceDetail = spaceService.spaceFindById(id);
        model.addAttribute("spaceDetail", spaceDetail);
        List<SpaceReviewDto> spaceReviewList = spaceService.spaceReviewFindById(id);
        model.addAttribute("spaceReviewList", spaceReviewList);
        System.out.println("모델에 담겼나마루치아라치");
        return "/spaceRental/placeDetail";
    }




}
