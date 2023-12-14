package com.example.teamprojectbringiton.space;


import com.example.teamprojectbringiton.space.dto.respDto.SpaceDetailDto;
import com.example.teamprojectbringiton.space.dto.respDto.SpaceDto;
import com.example.teamprojectbringiton.space.dto.respDto.SpaceListDto;
import com.example.teamprojectbringiton.space.dto.respDto.SpaceReviewDto;
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

    public List<SpaceDto> findAllPaged(int pageSize, int currentPage) {
        System.out.println("페이징 서비스 진입 : " + pageSize);
        System.out.println("페이징 서비스 진입 : " + currentPage);
        int offset = currentPage * pageSize - pageSize;
        return spaceRepository.findAllJoinSportAndRegion(pageSize, offset);
    }

    public int getTotalItemCount() {
        return spaceRepository.findAllCount();
    }

}
