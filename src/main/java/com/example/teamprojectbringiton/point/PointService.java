package com.example.teamprojectbringiton.point;

import com.example.teamprojectbringiton.payment.request.UpdatePointDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PointService {

    @Autowired
    private PointRepository pointRepository;

    @Transactional
    public int pointUpdate(UpdatePointDTO updatePointDTO) {
       int pointUpdate = pointRepository.updateByUserId(updatePointDTO);
    return pointUpdate;
    }


}
