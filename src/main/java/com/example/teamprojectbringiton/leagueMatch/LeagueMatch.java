package com.example.teamprojectbringiton.leagueMatch;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Time;

@Getter
@NoArgsConstructor

public class LeagueMatch {
    private Integer id;
    private Integer scoreHomeTeam;
    private Integer scoreAwayTeam;
    private Time leagueMatchTime;
    private Date leagueMatchDate;
    private Integer homeTeamId;
    private Integer awayTeamId;
    private Integer leagueId;
    private Integer winnerId;

    @Builder
    public LeagueMatch(Integer id, Integer scoreHomeTeam, Integer scoreAwayTeam, Time leagueMatchTime, Date leagueMatchDate, Integer homeTeamId, Integer awayTeamId, Integer leagueId, Integer winnerId) {
        this.id = id;
        this.scoreHomeTeam = scoreHomeTeam;
        this.scoreAwayTeam = scoreAwayTeam;
        this.leagueMatchTime = leagueMatchTime;
        this.leagueMatchDate = leagueMatchDate;
        this.homeTeamId = homeTeamId;
        this.awayTeamId = awayTeamId;
        this.leagueId = leagueId;
        this.winnerId = winnerId;
    }
}
