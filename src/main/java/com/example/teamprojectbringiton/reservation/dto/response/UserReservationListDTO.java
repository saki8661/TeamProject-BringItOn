package com.example.teamprojectbringiton.reservation.dto.response;

import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

@Data
public class UserReservationListDTO {
    private Integer id;
    private Integer reservationNumber;
    private Date reservationDate;
    private String startTime;
    private String endTime;
    private String status;
    private String spaceName;
    private Integer pricePerHour;
    private String spaceLocation;
    private Integer spacePic;
    private String sector;

}
