package com.example.teamprojectbringiton.admin.dto.response;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class UserSearchRespDTO {
    private Integer id;
    private String username;
    private String nickName;
    private String userEmail;
    private String userAddress;
    private String userPhoneNumber;
    private String userDivision;
    private Timestamp createdAt;
    private Integer myPoint;
}
