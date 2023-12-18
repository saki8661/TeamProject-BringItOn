package com.example.teamprojectbringiton.reservation;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Reservation {
    private Integer id;
    private Integer reservationNumber;
    private Date reservationDate;
    private Integer personnel;
    private Time startTime;
    private Time endTime;
    private String toHost;
    private String status;
    private boolean matching;
    private Timestamp createdAt;
    private Integer userId;
    private Integer spaceId;

    @Builder
    public Reservation(Integer id, Integer reservationNumber, Date reservationDate,Integer personnel, Time startTime, Time endTime, String toHost, String status, boolean matching, Timestamp createdAt, Integer userId, Integer spaceId) {

        this.id = id;
        this.reservationNumber = reservationNumber;
        this.reservationDate = reservationDate;
        this.personnel = personnel;
        this.startTime = startTime;
        this.endTime = endTime;
        this.toHost = toHost;
        this.status = status;
        this.matching = matching;
        this.createdAt = createdAt;
        this.userId = userId;
        this.spaceId = spaceId;
    }
}
