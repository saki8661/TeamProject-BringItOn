package com.example.teamprojectbringiton.reservationTime;

import com.example.teamprojectbringiton.reservation.Reservation;
import com.example.teamprojectbringiton.reservation.ReservationRepository;
import com.example.teamprojectbringiton.reservationTime.dto.response.ReservationTimeDTO;
import com.example.teamprojectbringiton.space.Space;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class ReservationTimeService {
    @Autowired
    private ReservationTimeRepository reservationTimeRepository;

    @Autowired
    private ReservationRepository reservationRepository;

    public ReservationTimeDTO spaceReservationTimeFind(Space space, String date) {
        // date 타입으로 변환
        LocalDate localDate = LocalDate.parse(date, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        Date reservationDate = Date.valueOf(localDate);

        List<Reservation> reservationList = reservationRepository.findByspaceIdAndreservationDate(space.getId(), reservationDate);
        List<ReservationTime> reservationTime = reservationTimeRepository.findBySpaceReservationTime(space.getBizStartTime(), space.getBizEndTime());

        System.out.println("서비스 지나감");
        return new ReservationTimeDTO(reservationList, reservationTime);
    }

}
