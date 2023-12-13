package com.example.teamprojectbringiton.space;

import com.example.teamprojectbringiton.review.Review;
import com.example.teamprojectbringiton.space.dto.reqDTO.SpaceRatingReviewDto;
import com.example.teamprojectbringiton.space.dto.respDTO.SpaceDetailDto;
import com.example.teamprojectbringiton.space.dto.respDTO.SpaceListDto;
import com.example.teamprojectbringiton.review.reqDTO.SpaceReviewDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpaceService {

    @Autowired
    private SpaceRepository spaceRepository;

    public List<SpaceListDto> findAll() {
        List<SpaceListDto> spaces = spaceRepository.findAllJoinSportAndRegion();
        System.out.println(spaces.get(1).isInside());

        return spaces;
    }

    public SpaceDetailDto spaceFindById(Integer id) {
        SpaceDetailDto spaceDetail = spaceRepository.findByIdJoinSpaceAndSpacePic(id);
        System.out.println("++++++");
        return spaceDetail;
    }

    public List<SpaceReviewDto> spaceReviewFindById(Integer id) {
        System.out.println("서비스 진입" + id);
        List<SpaceReviewDto> spaceReview = spaceRepository.findByIdSpaceReview(id);
        System.out.println("+++++++++++++++++레파지토리++++++++++++++");
        return spaceReview;

    }



}
