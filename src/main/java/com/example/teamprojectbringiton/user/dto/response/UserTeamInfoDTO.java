package com.example.teamprojectbringiton.user.dto.response;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class UserTeamInfoDTO {
    private Integer id;
    private Integer teamId;
    private String teamName;
    private String teamPicUrl;
    private String teamCapacity;
    private String teamIntroduce;
    private Integer regionId;
    private String regionName;
    private Integer sportId;
    private String sportName;
}

