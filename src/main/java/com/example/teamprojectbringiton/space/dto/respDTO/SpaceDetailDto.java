package com.example.teamprojectbringiton.space.dto.respDTO;

import lombok.Data;

@Data
public class SpaceDetailDto {
    private Integer id;
    private String spaceName;
    private String description;
    private String sector;
    private boolean isInside;
    private String pricePerHour;
    private Integer regionId;
    private String regionName;
    private Integer sportId;
    private String sportName;
    private String spacePic;
}
