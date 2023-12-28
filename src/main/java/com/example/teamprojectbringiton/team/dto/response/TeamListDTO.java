package com.example.teamprojectbringiton.team.dto.response;

import lombok.Data;

@Data
public class TeamListDTO {
    private Integer id;
    private String teamName;
    private String teamPicUrl;
    private String teamLocation;
    private String teamIntroduce;
    private Integer teamCapacity;
    private Integer sportId;
    private String sportName;
    private Integer genderId;
    private String gender;
    private Integer ageId;
    private String age;
    private Integer positionId;
    private String position;

}
