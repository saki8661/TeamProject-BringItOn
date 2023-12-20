package com.example.teamprojectbringiton.user;


import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class User {
    private Integer id;
    private String username;
    private String nickName;
    private String password;
    private String userEmail;
    private String userAddress;
    private String userPhoneNumber;
    private String userPicUrl;
    private String userDivision;
    private String accountNumber;
    private String accountName;
    private Timestamp createdAt;
    private Integer teamId;
    private Integer bankId;
    private Integer genderId;
    private Integer ageId;
    private Boolean kakaoLogin;


    @Builder
    public User(Integer id, String username, String nickName, String password, String userEmail, String userAddress, String userPhoneNumber, String userPicUrl, String userDivision, String accountNumber, String accountName, Timestamp createdAt, Integer teamId, Integer bankId, Integer genderId, Integer ageId, Boolean kakaoLogin) {
        this.id = id;
        this.username = username;
        this.nickName = nickName;
        this.password = password;
        this.userEmail = userEmail;
        this.userAddress = userAddress;
        this.userPhoneNumber = userPhoneNumber;
        this.userPicUrl = userPicUrl;
        this.userDivision = userDivision;
        this.accountNumber = accountNumber;
        this.accountName = accountName;
        this.createdAt = createdAt;
        this.teamId = teamId;
        this.bankId = bankId;
        this.genderId = genderId;
        this.ageId = ageId;
        this.kakaoLogin = kakaoLogin;

    }

    public void updatePassword(String password) {
        this.password = password;
    }


    public void updateUserPicUrl(String userPicUrl) {
        this.userPicUrl = userPicUrl;
    }
}



