package com.example.teamprojectbringiton.league;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Getter
@NoArgsConstructor

public class League {
    private Integer id;
    private String leagueName;
    private Date applyStart;
    private Date applyEnd;
    private Date competitionStart;
    private Date competitionEnd;
    private Integer regionId;
    private Integer sponsorId;
    private Integer recruitment;
    private String recruitmentStatus;

    @Builder
    public League(Integer id, String leagueName, Date applyStart, Date applyEnd, Date competitionStart, Date competitionEnd, Integer regionId, Integer sponsorId, Integer recruitment, String recruitmentStatus) {
        this.id = id;
        this.leagueName = leagueName;
        this.applyStart = applyStart;
        this.applyEnd = applyEnd;
        this.competitionStart = competitionStart;
        this.competitionEnd = competitionEnd;
        this.regionId = regionId;
        this.sponsorId = sponsorId;
        this.recruitment = recruitment;
        this.recruitmentStatus = recruitmentStatus;
    }
}
