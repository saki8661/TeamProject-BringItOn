package com.example.teamprojectbringiton.reservationTime;

import com.example.teamprojectbringiton.reservation.Reservation;
import com.example.teamprojectbringiton.reservationTime.dto.response.ReservationTimeDTO;
import com.example.teamprojectbringiton.space.Space;
import org.apache.ibatis.annotations.Mapper;

import java.sql.Date;
import java.util.List;


@Mapper
public interface ReservationTimeRepository {

    public List<ReservationTime> findBySpaceReservationTime(String startTime, String endTime);

}
