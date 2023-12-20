package com.example.teamprojectbringiton.reservation.request;

import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

@Data
public class ReservationDTO {

    private Integer personnel;
    private String toHost;
    private Integer spaceId;
    private Integer userId;
    private boolean matching;
    private Timestamp createdAt;
}