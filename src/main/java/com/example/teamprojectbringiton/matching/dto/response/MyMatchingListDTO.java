package com.example.teamprojectbringiton.matching.dto.response;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Time;

@Getter
@Setter
public class MyMatchingListDTO {
    private Integer id; // 매칭테이블의 아이디
    private Integer userId; // 나의 유저Id
    private Integer matchUserId; // 상대 유저Id
    private String matchingStatus; // 매칭 상태
    private String nickName;
    private Integer reservationId;
    private Date reservationDate;
    private Time startTime;
    private Time endTime;
}
