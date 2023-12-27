package com.example.teamprojectbringiton.reservation.dto.response;

import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

@Data
public class UserReservationListDTO {
    private Integer id;
    private String reservationNumber;
    private Date reservationDate;
    private Time startTime;
    private Time endTime;
    private String status;
    private String spaceName;
    private Integer price;
    private String spaceLocation;
    private String spacePic;
    private String sector;
}
