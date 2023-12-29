package com.example.teamprojectbringiton.space;


import com.example.teamprojectbringiton._core.utils.Function;
import com.example.teamprojectbringiton.space.dto.request.SaveDTO;
import com.example.teamprojectbringiton.space.dto.request.UpdateDTO;
import com.example.teamprojectbringiton.space.dto.response.*;
import com.example.teamprojectbringiton.space.spacePic.SpacePic;
import com.example.teamprojectbringiton.space.spacePic.SpacePicRepository;
import com.example.teamprojectbringiton.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpaceService {

    @Autowired
    private SpaceRepository spaceRepository;

    @Autowired
    private Function function;

    @Autowired
    private SpacePicRepository spacePicRepository;


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

    public void save(Space space, String pic) {

        // 공간 등록

        spaceRepository.insert(space);

        // 이미지 등록
        System.out.println("id 가져오나? " + space.getId());

        SpacePic spacePic = SpacePic.builder()
                .spaceId(space.getId())
                .spacePic(pic)
                .build();
        spacePicRepository.insert(spacePic);

    }

    public void update(UpdateDTO updateDTO, String pic) {
        spaceRepository.updateById(updateDTO.toEntity());
        SpacePic spacePic = spacePicRepository.findBySpaceId(updateDTO.getId());
        spacePic.UpdateSpacePic(pic);
    }

    // 공간 정보 조회
    public Space findById(Integer id) {
        return spaceRepository.findById(id);
    }

    public List<SpaceUserIdPicJoinDTO> findAllJoinUserIdAndSpacePicId(Integer id) {
        System.out.println("서비스 진입해서 조회함 : " + spaceRepository.findAllJoinUserIdAndSpacePicId(id).get(0).getSpaceName());
        System.out.println("서비스 진입해서 조회함 : " + spaceRepository.findAllJoinUserIdAndSpacePicId(id).get(0).getSpacePic());
        System.out.println("서비스 진입해서 조회함 : " + spaceRepository.findAllJoinUserIdAndSpacePicId(id).get(0).getSpaceLocation());
        return spaceRepository.findAllJoinUserIdAndSpacePicId(id);

    }

    public void deleteById(Integer id) {
        System.out.println("서비스 왔따 : " + id);
        spaceRepository.deleteById(id);
    }

    public List<MySpaceReservationListDTO> findAllUserIdJoinReservationId(Integer userId) {
        return spaceRepository.findAllUserIdJoinReservationId(userId);
    }

    public List<SpaceListDTO> insideSpace(int pageSize, int currentPage) {
        int offset = currentPage * pageSize - pageSize;
        System.out.println("offset:"+offset);
        List<SpaceListDTO> spaceList = spaceRepository.findByInsideSpace(pageSize, offset);


        return spaceList;
    }

    public List<SpaceListDTO> outsideSpace(int pageSize, int currentPage) {
        int offset = currentPage * pageSize - pageSize;
        System.out.println("offset:"+offset);
        List<SpaceListDTO> spaceList = spaceRepository.findByOutsideSpace(pageSize, offset);


        return spaceList;
    }
}
