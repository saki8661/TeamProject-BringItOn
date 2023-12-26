package com.example.teamprojectbringiton.review;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ReviewRepository {
    public void insert(Review review);

    List<Review> findByUserId(Integer id, @Param("pageSize") int pageSize, @Param("offset") int offset);

    int findByUserIdCount(Integer id);

   public int getCommentCount(@Param("spaceId") Integer spaceId);



}
