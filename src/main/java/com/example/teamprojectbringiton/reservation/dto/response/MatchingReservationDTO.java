package com.example.teamprojectbringiton.reservation.dto.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Time;

@Getter
@Setter
public class MatchingReservationDTO {
    private Integer id;
    private boolean matching;
    private Integer personnel;
    private String status;
    private Date reservationDate;
    private Time startTime;
    private Time endTime;
    private Integer teamId;
    private String teamName;
    private Integer spaceId;
    private String spaceName;
    private String spaceLocation;
    private String spacePic;
    private String pricePerHour;
    private Integer regionId;
    private String regionName;
}
