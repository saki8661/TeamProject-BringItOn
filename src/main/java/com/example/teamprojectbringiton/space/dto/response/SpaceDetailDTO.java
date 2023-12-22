package com.example.teamprojectbringiton.space.dto.response;


import lombok.Data;

@Data
public class SpaceDetailDTO {
    private Integer id;
    private String spaceName;
    private String description;
    private String spaceLocation;
    private String sector;
    private boolean isInside;
    private String pricePerHour;
    private Integer regionId;
    private String regionName;
    private Integer sportId;
    private String sportName;
    private String spacePic;

}
