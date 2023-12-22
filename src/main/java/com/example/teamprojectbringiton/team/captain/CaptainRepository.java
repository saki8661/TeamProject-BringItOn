package com.example.teamprojectbringiton.team.captain;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CaptainRepository {


    void insert(Integer teamId, Integer userId);
}
