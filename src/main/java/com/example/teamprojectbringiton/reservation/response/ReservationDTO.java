package com.example.teamprojectbringiton.reservation.response;

import lombok.Data;

import java.sql.Time;
import java.sql.Timestamp;

@Data
public class ReservationDTO {
    private Integer personnel;
    private String comment;
    private Time startTime;
    private Integer spaceId;
    private Integer userId;
    private Timestamp createdAt;

}
