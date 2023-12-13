package com.example.teamprojectbringiton.sponsor;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Sponsor {
    private Integer id;
    private String sponsorName;

    @Builder
    public Sponsor(Integer id, String sponsorName) {
        this.id = id;
        this.sponsorName = sponsorName;
    }
}
