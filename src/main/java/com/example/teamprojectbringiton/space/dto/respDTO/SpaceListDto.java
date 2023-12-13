package com.example.teamprojectbringiton.space.dto.respDTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
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
