package com.example.teamprojectbringiton.team;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeamRepository {

    public List<Team> findAll();
}
