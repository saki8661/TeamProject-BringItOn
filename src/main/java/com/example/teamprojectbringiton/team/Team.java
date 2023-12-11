package com.example.teamprojectbringiton.team;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Team {
    private Integer id;
    private String teamName;
    private String teamCapacity;
    private String teamPicUrl;
    private String teamLevel;
    private String regionName;
    private Integer sportId;
    private Integer userId;

    @Builder
    public Team(Integer id, String teamName, String teamCapacity, String teamPicUrl, String teamLevel, String regionName, Integer sportId, Integer userId) {
        this.id = id;
        this.teamName = teamName;
        this.teamCapacity = teamCapacity;
        this.teamPicUrl = teamPicUrl;
        this.teamLevel = teamLevel;
        this.regionName = regionName;
        this.sportId = sportId;
        this.userId = userId;
    }
}
