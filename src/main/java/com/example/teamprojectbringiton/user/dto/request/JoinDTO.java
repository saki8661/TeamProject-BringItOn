package com.example.teamprojectbringiton.user.dto.request;

import com.example.teamprojectbringiton.user.User;
import lombok.Data;

@Data
public class JoinDTO {
    private String username;
    private String password;
    private String email;
    private String userPhoneNumber;
    private String userAddress;
    private String userDivision;
    private String nickName;
    private Integer genderId;
    private Integer ageId;

    public User toEntity() {
        return User.builder()
                .username(username)
                .password(password)
                .userEmail(email)
                .userPhoneNumber(userPhoneNumber)
                .userAddress(userAddress)
                .userDivision(userDivision)
                .nickName(nickName)
                .userPicUrl("default_profile.jpg")
                .ageId(ageId)
                .genderId(genderId)
                .kakaoLogin(false)
                .build();
    }
}
