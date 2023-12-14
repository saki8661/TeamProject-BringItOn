package com.example.teamprojectbringiton.space.dto.respDto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
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
