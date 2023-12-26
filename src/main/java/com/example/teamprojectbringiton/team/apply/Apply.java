package com.example.teamprojectbringiton.team.apply;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Apply {
    private Integer id;
    private Integer teamId;
    private Integer captainUserId;
    private Integer personalUserId;

    @Builder
    public Apply(Integer id, Integer teamId, Integer captainUserId, Integer personalUserId) {
        this.id = id;
        this.teamId = teamId;
        this.captainUserId = captainUserId;
        this.personalUserId = personalUserId;
    }
}
