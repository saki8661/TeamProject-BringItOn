package com.example.teamprojectbringiton.user.dto.response;

import lombok.Data;

@Data
public class UserApplyListDTO {
    private Integer id;
    private String nickName;
    private String userEmail;
    private String userAddress;
    private String userPicUrl;
    private Integer applyId;
    private Integer applyTeamId;
    private Integer captainUserId;
    private Integer personalUserId;
    private Integer ageId;
    private String age;
    private Integer genderId;
    private String gender;
}
