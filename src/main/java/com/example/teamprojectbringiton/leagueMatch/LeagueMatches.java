package com.example.teamprojectbringiton.leagueMatch;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Time;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class LeagueMatches {
    private Integer leagueMatchId;
    private Integer leagueId;
    private Date leagueMatchDate;
    private Time leagueMatchTime;
    private Integer homeTeamId;
    private Integer awayTeamId;
    private Integer scoreHomeTeam;
    private Integer scoreAwayTeam;
    private Integer winnerId;
}
