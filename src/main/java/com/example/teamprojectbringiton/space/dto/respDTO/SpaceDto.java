package com.example.teamprojectbringiton.space.dto.respDTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SpaceDto {
    private Integer id;
    private String spaceName;
    private String sector;
    private boolean isInside;
    private String pricePerHour;
    private Integer regionId;
    private String regionName;
    private Integer sportId;
    private String sportName;
    private Integer spacePicId;
    private String spacePic;

}
