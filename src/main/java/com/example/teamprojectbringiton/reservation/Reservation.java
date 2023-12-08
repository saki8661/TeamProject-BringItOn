package com.example.teamprojectbringiton.reservation;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Reservation {
    private Integer id;
    private Date reservationDate;
    private String startTime;
    private String endTime;
    private String status;
    private boolean matching;
    private Timestamp createdAt;
    private Integer userId;
    private Integer spaceId;

    @Builder
    public Reservation(Integer id, Date reservationDate, String startTime, String endTime, String status, boolean matching, Timestamp createdAt, Integer userId, Integer spaceId) {
        this.id = id;
        this.reservationDate = reservationDate;
        this.startTime = startTime;
        this.endTime = endTime;
        this.status = status;
        this.matching = matching;
        this.createdAt = createdAt;
        this.userId = userId;
        this.spaceId = spaceId;
    }
}
