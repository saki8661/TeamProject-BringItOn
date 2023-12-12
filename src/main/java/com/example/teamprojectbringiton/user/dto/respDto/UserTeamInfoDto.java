package com.example.teamprojectbringiton.user.dto.respDto;

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

