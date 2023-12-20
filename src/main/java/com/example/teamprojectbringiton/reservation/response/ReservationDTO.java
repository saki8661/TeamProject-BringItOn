package com.example.teamprojectbringiton.reservation.response;

import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

@Data
public class ReservationDTO {

    private Integer spaceId;
    private String spaceName;
    private String spaceLocation;
    private String spacePic;
    private Integer pricePerHour;

}
