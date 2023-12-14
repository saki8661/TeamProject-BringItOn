package com.example.teamprojectbringiton.space;


import com.example.teamprojectbringiton.space.dto.response.SpaceDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceDetailDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceListDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceReviewDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpaceService {

    @Autowired
    private SpaceRepository spaceRepository;

    public List<SpaceListDTO> findAll() {
        List<SpaceListDTO> spaces = spaceRepository.findAllJoinSportAndRegion();
        System.out.println(spaces.get(1).isInside());

        return spaces;
    }

    public SpaceDetailDTO spaceFindById(Integer id) {
        SpaceDetailDTO spaceDetail = spaceRepository.findByIdJoinSpaceAndSpacePic(id);
        System.out.println("++++++");
        return spaceDetail;
    }

    public List<SpaceReviewDTO> spaceReviewFindById(Integer id) {
        System.out.println("서비스 진입" + id);
        List<SpaceReviewDTO> spaceReview = spaceRepository.findByIdSpaceReview(id);
        System.out.println("+++++++++++++++++레파지토리++++++++++++++");
        return spaceReview;

    }

    public List<SpaceDTO> findAllPaged(int pageSize, int currentPage) {
        System.out.println("페이징 서비스 진입 : " + pageSize);
        System.out.println("페이징 서비스 진입 : " + currentPage);
        int offset = currentPage * pageSize - pageSize;
        return spaceRepository.findAllJoinSportAndRegion(pageSize, offset);
    }

    public int getTotalItemCount() {
        return spaceRepository.findAllCount();
    }

}
