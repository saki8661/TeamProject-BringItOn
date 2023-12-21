package com.example.teamprojectbringiton.gender;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface GenderRepository {

    public List<Gender> findAll();       // 사용자 전체 조회

}
