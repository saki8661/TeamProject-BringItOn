package com.example.teamprojectbringiton.standing;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Standings {

    private Integer standingId;
    private Integer teamId;
    private Integer leagueId;
    private Integer rank;
    private Integer points;
    private Integer goalDifference;
}
