package com.example.teamprojectbringiton.spaceInquire;

import com.example.teamprojectbringiton.review.Review;
import com.example.teamprojectbringiton.space.Space;
import com.example.teamprojectbringiton.spaceInquire.request.SpaceInqUpdateDTO;
import com.example.teamprojectbringiton.spaceInquire.response.SpaceInquireDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SpaceInquireRepository {
    public List<SpaceInquireDTO> spaceInqFindById(@Param("id") Integer id);
    public void spaceInqInsert(SpaceInquire spaceInquire);

    public int getInquireCount(@Param("spaceId") Integer spaceId);
    int getHostAnswerCount(@Param("spaceId") int spaceId, @Param("userId") int userId);

    int updateSpaceInquireAnswer(SpaceInqUpdateDTO spaceInqUpdateDTO);



}
