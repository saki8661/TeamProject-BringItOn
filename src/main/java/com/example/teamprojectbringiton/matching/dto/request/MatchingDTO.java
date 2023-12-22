package com.example.teamprojectbringiton.matching.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MatchingDTO {
    private Integer id;
    private Integer userId;
    private Integer matchUserId;
    private Integer reservationId;
    private String matchingStatus;
}
