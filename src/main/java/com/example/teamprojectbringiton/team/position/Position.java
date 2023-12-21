package com.example.teamprojectbringiton.team.position;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Position {
    private Integer id;
    private String position;

    public Position(Integer id, String position) {
        this.id = id;
        this.position = position;
    }
}
