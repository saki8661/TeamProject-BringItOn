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
    private String availableHours;
    private String sector;
    private boolean isInside;
    private String regionName;
    private Timestamp createdAt;
    private Integer userId;
    private Integer optionId;
    private Integer sportId;

    @Builder
    public Space(Integer id, String spaceName, String description, Integer capacity, Integer pricePerHour, String availableHours, String sector, boolean isInside, String regionName, Timestamp createdAt, Integer userId, Integer optionId, Integer sportId) {
        this.id = id;
        this.spaceName = spaceName;
        this.description = description;
        this.capacity = capacity;
        this.pricePerHour = pricePerHour;
        this.availableHours = availableHours;
        this.sector = sector;
        this.isInside = isInside;
        this.regionName = regionName;
        this.createdAt = createdAt;
        this.userId = userId;
        this.optionId = optionId;
        this.sportId = sportId;
    }
}

