package com.example.teamprojectbringiton.reservationTime.dto.response;

import com.example.teamprojectbringiton.reservation.Reservation;
import com.example.teamprojectbringiton.reservationTime.ReservationTime;
import com.example.teamprojectbringiton.space.Space;
import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.util.List;
import java.util.stream.Collectors;

@Data
public class ReservationTimeDTO {
    private List<TimeDTO> timeDTOList;

    public ReservationTimeDTO(List<Reservation> timeList, List<ReservationTime> reservationTimeList) {
        this.timeDTOList = reservationTimeList.stream()
                .filter(time -> timeList.stream()
                        .noneMatch(reservation -> time.getId().equals(reservation.getReservationTimeId())))
                .map(TimeDTO::new)
                .collect(Collectors.toList());
    }

    @Data
    public static class TimeDTO {
        private Integer id;
        private Time startTime;
        private Time endTime;

        public TimeDTO(ReservationTime reservationTime) {
            this.id = reservationTime.getId();
            this.startTime = reservationTime.getStartTime();
            this.endTime = reservationTime.getEndTime();
        }
    }
}