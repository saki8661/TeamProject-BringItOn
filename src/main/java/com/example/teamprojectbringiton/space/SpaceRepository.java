package com.example.teamprojectbringiton.space;


import com.example.teamprojectbringiton.space.dto.response.*;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SpaceRepository {

    public int insert(Space space);        // 시설 등록

    public List<Space> findAll();       // 사용자 전체 조회

    public List<SpaceListDTO> findAllJoinSportAndRegion();
    // 사용자 전체 조회

    public SpaceDetailDTO findByIdJoinSpaceAndSpacePic(@Param("id") Integer id);
    //공간 대여 , 공간 사진 전체 조회

    public List<SpaceReviewDTO> findByIdSpaceReview(@Param("id") Integer id);
    //공간 대여 후기


    public int updateById(Space space);    // 시설 수정

    public int deleteById(Integer id);  // 시설 삭제

    public Space findById(Integer id);// 시설 상세보기

    public List<SpaceDTO> findAllJoinSportAndRegion(@Param("pageSize") int pageSize, @Param("offset") int offset);

    public int findAllCount();

    public List<Space> findAllByUserId(Integer id);

    public List<SpaceUserIdPicJoinDTO> findAllJoinUserIdAndSpacePicId(Integer id);

    public List<MySpaceReservationListDTO> findAllUserIdJoinReservationId(Integer id);
}
