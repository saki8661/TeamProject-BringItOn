package com.example.teamprojectbringiton.team.dto.response;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class TeamDetailDTO {
    private Integer id;
    private String teamName;
    private String teamCapacity;
    private String teamLocation;
    private String  teamPicUrl;
    private String  teamIntroduce;
    private String level;
    private String age;
    private String gender;
    private String position;
    private String sport;
    private Timestamp createdAt;
}
