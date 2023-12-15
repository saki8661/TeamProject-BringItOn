package com.example.teamprojectbringiton.reservation.dto.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Time;

@Getter
@Setter
public class MatchingReservationDTO {
    private boolean matching;
    private Date reservationDate;
    private Time startTime;
    private Time endTime;
    private Integer teamId;
    private String teamName;
    private Integer spaceId;
    private Integer spaceName;
    private Integer regionId;
    private Integer regionName;
}
