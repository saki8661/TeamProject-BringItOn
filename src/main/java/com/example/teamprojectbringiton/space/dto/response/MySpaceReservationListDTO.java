package com.example.teamprojectbringiton.space.dto.response;

import lombok.Data;

import java.sql.Date;
import java.sql.Time;

@Data
public class MySpaceReservationListDTO {
    private String spaceName;
    private Integer price;
    private Date reservationDate;
    private Integer personnel;
    private String toHost;
    private String status;
    private boolean matching;
    private Integer userId;
    private String nickName;
    private String userPhoneNumber;
    private Integer spaceId;
    private Time startTime;
    private Time endTime;
}
