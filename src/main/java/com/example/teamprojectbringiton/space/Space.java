package com.example.teamprojectbringiton.space;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Space {
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
    private Integer userId;
    private Integer sportId;

    @Builder
    public Space(Integer id, String spaceName, String description, Integer capacity, Integer price, String bizStartTime, String bizEndTime, String spaceLocation, String sector, Boolean isInside, Timestamp createdAt, Integer userId, Integer sportId, String spacePhoneNumber) {
        this.id = id;
        this.spaceName = spaceName;
        this.description = description;
        this.capacity = capacity;
        this.price = price;
        this.bizStartTime = bizStartTime;
        this.bizEndTime = bizEndTime;
        this.spaceLocation = spaceLocation;
        this.sector = sector;
        this.isInside = isInside;
        this.createdAt = createdAt;
        this.userId = userId;
        this.sportId = sportId;
        this.spacePhoneNumber = spacePhoneNumber;
    }

    public void updateSportId(Integer sportId) {
        this.sportId = sportId;
    }

}

