package com.example.teamprojectbringiton.review;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ReviewRepository {
    public void insert(Review review);
   public int getCommentCount(@Param("spaceId") Integer spaceId);
  //public  void updateCommentCount(@Param("spaceId") Integer spaceId, @Param("commentCount") Integer commentCount);


}
