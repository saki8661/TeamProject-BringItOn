package com.example.teamprojectbringiton.user.dto.respDTO;

import com.example.teamprojectbringiton.region.Region;
import com.example.teamprojectbringiton.sport.Sport;
import com.example.teamprojectbringiton.team.Team;
import com.example.teamprojectbringiton.user.User;
import lombok.Data;

public class UserTeamDto {

    @Data
    public static class FindByIdJoinTeam{
        private Integer id;
        private TeamDTO teamDTO;
        private Region regionDTO;
        private Sport sportDTO;

        public FindByIdJoinTeam(User user) {
            this.id = user.getId();
            this.teamDTO = getTeamDTO();
            this.regionDTO = getRegionDTO();
            this.sportDTO = getSportDTO();
        }

        @Data
        public static class TeamDTO {
            private Integer teamId;
            private String teamName;
            private String teamPicUrl;
            private String teamCapacity;

            public TeamDTO(Team team) {
                this.teamId = team.getId();
                this.teamName = team.getTeamName();
                this.teamPicUrl = team.getTeamPicUrl();
                this.teamCapacity = team.getTeamCapacity();
            }
        }

        @Data
        public static class RegionDTO{
            private Integer regionId;
            private String regionName;

            public RegionDTO(Region region) {
                this.regionId = region.getId();
                this.regionName = region.getRegionName();
            }
        }

        @Data
        public static class SportDTO{
            private Integer sportId;
            private String sportName;

            public SportDTO(Sport sport) {
                this.sportId = sport.getId();
                this.sportName = sport.getSportName();
            }
        }
    }


}
