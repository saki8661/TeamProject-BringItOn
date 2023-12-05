package com.example.teamprojectbringiton.matching;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Matchings {
    private Integer matchingId;
    private Integer reservationId;
    private Integer matchUserId;
    private String matchingStatus;
}
