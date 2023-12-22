package com.example.teamprojectbringiton.space.spacePic;


import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.space.dto.response.SpaceDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceDetailDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceListDTO;
import com.example.teamprojectbringiton.space.dto.response.SpaceReviewDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SpacePicRepository {

    public int insert(SpacePic spacePic);        // 시설 등록

    public List<SpacePic> findAll();       // 사용자 전체 조회

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

}
