package com.example.teamprojectbringiton.reservation.response;

import lombok.Data;

@Data
public class ReservationDTO {
    private Integer spaceId;
    private String spaceName;
    private String spaceLocation;
    private String spacePic;
    private Integer pricePerHour;

}
