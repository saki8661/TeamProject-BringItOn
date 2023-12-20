package com.example.teamprojectbringiton.user.dto.response;

import lombok.Data;

@Data
public class UserUpdateDTO {
    private String username;
    private String nickName;
    private String userEmail;
    private String userAddress;
    private String userPhoneNumber;
    private String userPicUrl;
    private String userDivision;
    private String accountNumber;
    private String accountName;
    private String gender;
    private String age;
    private Boolean kakaoLogin;
}
