package com.example.teamprojectbringiton.pointHistory;

import com.example.teamprojectbringiton.payment.request.UpdatePointDTO;
import com.example.teamprojectbringiton.point.PointRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PointHistoryService {

    @Autowired
    private PointRepository pointRepository;

    @Autowired
    private PointHistoryRepository pointHistoryRepository;

    @Transactional
    public int pointUpdate(UpdatePointDTO updatePointDTO) {
        int pointUpdate = pointRepository.updateByUserId(updatePointDTO);
        return pointUpdate;
    }

    public void insert(PointHistory pointHistory) {
        pointHistoryRepository.insert(pointHistory);
    }
}
