package com.example.teamprojectbringiton.point;

import com.example.teamprojectbringiton.payment.request.UpdatePointDTO;
import com.example.teamprojectbringiton.user.dto.request.JoinDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PointService {

    @Autowired
    private PointRepository pointRepository;

    @Transactional
    public void pointUpdate(UpdatePointDTO updatePointDTO) {
         pointRepository.updateByUserId(updatePointDTO);
    }

    public Point findByUserId(Integer userId){
        return pointRepository.findByUserId(userId);
    }


    public void insert(Integer id) {
        Point point = Point.builder()
                .myPoint(0)
                .userId(id)
                .build();
        pointRepository.insert(point);
    }
}
