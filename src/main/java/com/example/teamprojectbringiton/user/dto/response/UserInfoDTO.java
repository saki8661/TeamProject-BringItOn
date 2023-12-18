package com.example.teamprojectbringiton.user.dto.response;

import lombok.Data;

@Data
public class UserInfoDTO {
    private Integer id;
    private String nickname;
    private String userEmail;
    private String userDivision;
    private String userAddress;
    private Integer teamId;
    private String teamName;
    private String teamIntroduce;
    private String level;
    private String regionName;
    private String sportName;
    private String reservationDate;
    private String startTime;
    private String endTime;
    private String status;
    private Integer spaceId;
    private String spaceName;

}
