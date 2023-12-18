package com.example.teamprojectbringiton.matching.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MatchingListDTO {

    private Integer id;
    private String matchingStatus;
    private Integer reservationId;
    private Integer matchUserId;
}
