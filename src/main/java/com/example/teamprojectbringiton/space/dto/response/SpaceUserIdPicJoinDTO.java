package com.example.teamprojectbringiton.space.dto.response;

import lombok.Data;
import lombok.Getter;

import java.sql.Timestamp;

@Data
public class SpaceUserIdPicJoinDTO {
    private Integer id;
    private String spaceName;
    private String description;
    private Integer capacity;
    private Integer price;
    private String bizStartTime;
    private String bizEndTime;
    private String spaceLocation;
    private String spacePhoneNumber;
    private String sector;
    private Boolean isInside;
    private Timestamp createdAt;
    private String spacePic;
    private Integer sportId;
}
