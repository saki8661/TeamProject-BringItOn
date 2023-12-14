package com.example.teamprojectbringiton.space.dto.respDto;

import lombok.Data;

@Data
public class SpaceListDto {
    private Integer id;
    private String spaceName;
    private String sector;
    private boolean isInside;
    private String pricePerHour;
    private Integer regionId;
    private String regionName;
    private Integer sportId;
    private String sportName;


}
