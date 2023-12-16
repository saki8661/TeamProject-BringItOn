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
    private Integer pricePerHour;
    private String bizStartTime;
    private String bizEndTime;
    private String spaceLocation;
    private String sector;
    private boolean isInside;
    private Integer regionId;
    private Timestamp createdAt;
    private Integer userId;
    private Integer sportId;

    @Builder
    public Space(Integer id, String spaceName, String description, Integer capacity, Integer pricePerHour, String bizStartTime, String bizEndTime, String spaceLocation, String sector, boolean isInside, Integer regionId, Timestamp createdAt, Integer userId, Integer sportId) {
        this.id = id;
        this.spaceName = spaceName;
        this.description = description;
        this.capacity = capacity;
        this.pricePerHour = pricePerHour;
        this.bizStartTime = bizStartTime;
        this.bizEndTime = bizEndTime;
        this.spaceLocation = spaceLocation;
        this.sector = sector;
        this.isInside = isInside;
        this.regionId = regionId;
        this.createdAt = createdAt;
        this.userId = userId;
        this.sportId = sportId;
    }
}

