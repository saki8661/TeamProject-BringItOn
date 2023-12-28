package com.example.teamprojectbringiton.reservation.dto.response;

import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

@Data
public class UserReservationListDTO {
    private Integer id;
    private String reservationNumber; // 예약 번호
    private Integer personnel; // 인원수
    private Date reservationDate; // 예약일
    private Time startTime; // 시작 시간
    private Time endTime; // 끝나는 시간
    private String status; // 예약 상태
    private String spaceName; // 공간 이름
    private Integer price; // 가격
    private String spaceLocation; // 공간 위치
    private String spacePic; // 공간 사진
    private String sector; // 부제목
}
