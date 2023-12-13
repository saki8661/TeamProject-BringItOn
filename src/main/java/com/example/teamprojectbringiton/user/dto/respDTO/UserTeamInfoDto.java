package com.example.teamprojectbringiton.user.dto.respDTO;

import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.sport.Sport;
import com.example.teamprojectbringiton.team.Team;
import com.example.teamprojectbringiton.user.User;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;



    @Getter
    @Setter
    public class UserTeamInfoDto {
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

