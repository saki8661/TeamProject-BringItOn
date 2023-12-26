package com.example.teamprojectbringiton.reservation.dto.response;

import lombok.Data;

@Data

public class ReservationRespDTO {

    private Integer spaceId;
    private String spaceName;
    private String spaceLocation;
    private String spacePic;
    private Integer price;
    private String bizStartTime;
    private String bizEndTime;
    private Integer capacity;

}
