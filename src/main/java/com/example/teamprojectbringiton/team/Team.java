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
    private String teamIntroduce;
    private String level;
    private Integer regionId;
    private Integer sportId;

    @Builder
    public Team(Integer id, String teamName,String teamCapacity, String teamPicUrl, String teamIntroduce, String level, Integer regionId, Integer sportId) {
        this.id = id;
        this.teamName = teamName;
        this.teamCapacity = teamCapacity;
        this.teamPicUrl = teamPicUrl;
        this.teamIntroduce = teamIntroduce;
        this.level = level;
        this.regionId = regionId;
        this.sportId = sportId;
    }
}
