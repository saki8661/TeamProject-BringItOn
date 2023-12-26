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
    private String reservationNumber;
    private Date reservationDate;
    private Integer personnel;
    private String toHost;
    private String status;
    private boolean matching;
    private Timestamp createdAt;
    private Integer userId;
    private Integer spaceId;
    private Integer matchingId;
    private Integer reservationTimeId;

    @Builder
    public Reservation(Integer id, String reservationNumber, Date reservationDate, Integer personnel, String toHost, String status, boolean matching, Timestamp createdAt, Integer userId, Integer spaceId, Integer matchingId, Integer reservationTimeId) {
        this.id = id;
        this.reservationNumber = reservationNumber;
        this.reservationDate = reservationDate;
        this.personnel = personnel;
        this.toHost = toHost;
        this.status = status;
        this.matching = matching;
        this.createdAt = createdAt;
        this.userId = userId;
        this.spaceId = spaceId;
        this.matchingId = matchingId;
        this.reservationTimeId = reservationTimeId;
    }
}
