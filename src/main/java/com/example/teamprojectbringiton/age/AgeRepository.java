package com.example.teamprojectbringiton.age;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AgeRepository {

    public List<Age> findAll();       // 사용자 전체 조회
}
