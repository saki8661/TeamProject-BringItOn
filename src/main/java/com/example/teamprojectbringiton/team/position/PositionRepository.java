package com.example.teamprojectbringiton.team.position;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PositionRepository {
    public List<Position> findAll();
}
