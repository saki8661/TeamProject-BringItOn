package com.example.teamprojectbringiton.pointHistory;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PointHistoryRepository {

    public void insert(PointHistory pointHistory);

}
