package com.example.teamprojectbringiton.reservation;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Reservations {
    private Integer reservationId;
    private Integer spaceId;
    private Integer userId;
    private Date reservationDate;
    private String startTime;
    private String endTime;
    private String status;
    private boolean matching;
}
