package com.example.teamprojectbringiton.team.captain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Captain {

    private Integer id;
    private Integer userId;
    private Integer teamId;

    @Builder
    public Captain(Integer id, Integer userId, Integer teamId) {
        this.id = id;
        this.userId = userId;
        this.teamId = teamId;
    }
}
