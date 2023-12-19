package com.example.teamprojectbringiton.region;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RegionRepository {

    public List<Region> findAll();
}
