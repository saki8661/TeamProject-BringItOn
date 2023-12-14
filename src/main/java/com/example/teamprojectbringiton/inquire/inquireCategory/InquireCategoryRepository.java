package com.example.teamprojectbringiton.inquire.inquireCategory;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InquireCategoryRepository {

    public List<InquireCategory> findAll();
}
