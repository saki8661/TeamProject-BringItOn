package com.example.teamprojectbringiton.reservation.response;

import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

@Data
public class ReservationDTO {
    private Integer reservationNumber;
    private Date reservationDate;
    private Integer personnel;
    private String comment;
    private Time startTime;
    private Time endTime;
    private String toHost;
    private Integer spaceId;
    private Integer userId;
    private boolean matching;
    private Timestamp createdAt;
}
