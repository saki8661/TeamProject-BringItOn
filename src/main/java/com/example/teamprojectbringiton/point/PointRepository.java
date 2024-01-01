package com.example.teamprojectbringiton.point;

import com.example.teamprojectbringiton.payment.request.UpdatePointDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PointRepository {

    public int updateByUserId(UpdatePointDTO updatePointDTO);

    void insert(Point point);

    public Point findByUserId(Integer userId);
}
