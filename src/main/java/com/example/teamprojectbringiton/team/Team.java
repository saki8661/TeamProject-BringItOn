package com.example.teamprojectbringiton.team;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Team {
    private Integer id;
    private String teamName;
    private Integer teamCapacity;
    private String teamPicUrl;
    private String teamIntroduce;
    private String teamLocation;
    private String level;
    private Integer ageId;
    private Integer genderId;
    private Integer positionId;
    private Integer sportId;
    private Timestamp createdAt;

    @Builder
    public Team(Integer id, String teamName, Integer teamCapacity, String teamPicUrl, String teamIntroduce, String teamLocation, String level, Integer ageId, Integer genderId, Integer positionId, Integer sportId, Timestamp createdAt) {
        this.id = id;
        this.teamName = teamName;
        this.teamCapacity = teamCapacity;
        this.teamPicUrl = teamPicUrl;
        this.teamIntroduce = teamIntroduce;
        this.teamLocation = teamLocation;
        this.level = level;
        this.ageId = ageId;
        this.genderId = genderId;
        this.positionId = positionId;
        this.sportId = sportId;
        this.createdAt = createdAt;
    }
}
