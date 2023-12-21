package com.example.teamprojectbringiton.team.dto.request;

import lombok.Data;

@Data
public class TeamCreateDTO {
    private Integer id;
    private String teamName;
    private String teamLocation;
    private String teamIntroduce;
    private String teamCapacity;
    private Integer sportId;
    private Integer genderId;
    private Integer positionId;
    private Integer ageId;
}
