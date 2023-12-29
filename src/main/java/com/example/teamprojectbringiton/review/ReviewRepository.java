package com.example.teamprojectbringiton.review;


import com.example.teamprojectbringiton.review.dto.response.ReviewListDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ReviewRepository {
    public void insert(Review review);



    public int getCommentCount(@Param("spaceId") Integer spaceId);


   public  double ratingAvg(@Param("spaceId") Integer spaceId);

    public List<ReviewListDTO> findByUserId(Integer id, @Param("pageSize") int pageSize, @Param("offset") int offset);

    int findByUserIdCount(Integer id);


    void deleteByReviewId(@Param("id") Integer id);


}
