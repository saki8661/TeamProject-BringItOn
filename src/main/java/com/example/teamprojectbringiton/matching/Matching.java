package com.example.teamprojectbringiton.matching;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Matching {
    private Integer id;
    private Integer userId;
    private String matchingStatus;
    private Integer reservationId;
    private Integer matchUserId;

    @Builder
    public Matching(Integer id, Integer userId, String matchingStatus, Integer reservationId, Integer matchUserId) {
        this.id = id;
        this.userId = userId;
        this.matchingStatus = matchingStatus;
        this.reservationId = reservationId;
        this.matchUserId = matchUserId;
    }
}
