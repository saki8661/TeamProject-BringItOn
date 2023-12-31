package com.example.teamprojectbringiton.reservationTime;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Time;

@Getter
@NoArgsConstructor
public class ReservationTime {
    private Integer id;
    private Time startTime;
    private Time endTime;

    @Builder
    public ReservationTime(Integer id, Time startTime, Time endTime) {
        this.id = id;
        this.startTime = startTime;
        this.endTime = endTime;
    }
}
