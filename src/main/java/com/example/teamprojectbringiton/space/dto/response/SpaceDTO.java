package com.example.teamprojectbringiton.space.dto.response;

import lombok.Data;

@Data
public class SpaceDTO {
    private Integer id;
    private String spaceName;
    private String sector;
    private Boolean isInside;
    private String price;
    private String spaceLocation;
    private Integer sportId;
    private String sportName;
    private Integer spacePicId;
    private String spacePic;

}
