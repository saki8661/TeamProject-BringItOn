package com.example.teamprojectbringiton.team.dto.response;

import lombok.Data;

@Data
public class TeamListDTO {
    private Integer id;
    private String teamName;
    private String teamPicUrl;
    private Integer teamCapacity;
    private Integer regionId;
    private String regionName;
    private Integer sportId;
    private String sportName;
}
