package com.example.teamprojectbringiton.sport;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Sport {
    private Integer id;
    private String sportName;

    @Builder
    public Sport(Integer id, String sportName) {
        this.id = id;
        this.sportName = sportName;
    }
}
