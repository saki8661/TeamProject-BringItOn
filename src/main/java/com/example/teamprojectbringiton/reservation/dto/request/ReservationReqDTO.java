package com.example.teamprojectbringiton.reservation.dto.request;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;
import java.sql.Timestamp;

@Data
public class ReservationReqDTO {

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String reservationDate; // 예약할날짜
    private Integer personnel; // 인원수
    private String toHost; // 호스트에게 전할말
    private Integer spaceId; // 공간 Id
    private Integer userId; // 유저 Id
    private Boolean matching; // 매칭여부
    private Integer reservationTimeId; // 시간 id

}