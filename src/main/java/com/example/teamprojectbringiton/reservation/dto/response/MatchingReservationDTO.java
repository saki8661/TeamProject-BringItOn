package com.example.teamprojectbringiton.reservation.dto.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Time;

@Getter
@Setter
public class MatchingReservationDTO {
    private Integer id;
    private Integer userId;
    private boolean matching;
    private Integer personnel;
    private String status;
    private Date reservationDate;
    private Integer reservationTimeId;
    private Time startTime;
    private Time endTime;
    private Integer teamId;
    private String teamName;
    private String teamLocation;
    private Integer spaceId;
    private String spaceName;
    private String spaceLocation;
    private String spacePic;
    private String price;
    private Integer matchingId;
    private String matchingStatus;
}
