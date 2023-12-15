package com.example.teamprojectbringiton.user.dto.response;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class UserPointDTO {
    private Integer id;
    private String username;
    private String nickName;
    private String userEmail;
    private String userAddress;
    private String userPhoneNumber;
    private String userPicUrl;
    private Integer pointId;
    private Integer myPoint;
}
