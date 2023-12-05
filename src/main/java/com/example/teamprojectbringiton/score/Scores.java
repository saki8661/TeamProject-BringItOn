package com.example.teamprojectbringiton.score;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Scores {
    private Integer scoreId;
    private Integer teamId;
    private Integer leagueId;
    private Integer totalPoints;
    private Integer totalWins;
    private Integer totalLosses;
    private Integer totalDraws;
    private Integer goal_difference;
}
