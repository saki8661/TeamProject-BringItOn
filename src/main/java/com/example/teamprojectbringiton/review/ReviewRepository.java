package com.example.teamprojectbringiton.review;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReviewRepository {
    public void insert(Review review);
    //void
}
