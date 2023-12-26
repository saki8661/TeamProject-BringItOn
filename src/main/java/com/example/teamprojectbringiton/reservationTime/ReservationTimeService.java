package com.example.teamprojectbringiton.reservationTime;

import com.example.teamprojectbringiton.space.Space;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationTimeService {
    @Autowired
    private ReservationTimeRepository reservationTimeRepository;

    public List<ReservationTime> spaceReservationTimeFind(Space space) {
        List<ReservationTime> response = reservationTimeRepository.findBySpaceReservationTime(space.getBizStartTime(), space.getBizEndTime());
        System.out.println("서비스 지나감");
        return response;
    }


}
