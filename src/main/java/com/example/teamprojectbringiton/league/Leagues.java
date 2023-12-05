package com.example.teamprojectbringiton.league;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Leagues {
    private Integer leagueId;
    private String leagueName;
    private Date applyPeriod;
    private Date competitionPeriod;
    private Integer regionId;
    private String sponsor;
    private Integer recruitment;
    private String recruitmentStatus;
}
