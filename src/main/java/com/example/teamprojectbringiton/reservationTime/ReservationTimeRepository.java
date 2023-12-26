package com.example.teamprojectbringiton.reservationTime;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface ReservationTimeRepository {

    public List<ReservationTime> findBySpaceReservationTime(String startTime, String endTime);
}
