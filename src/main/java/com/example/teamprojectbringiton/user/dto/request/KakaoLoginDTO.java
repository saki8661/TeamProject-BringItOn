package com.example.teamprojectbringiton.user.dto.request;

import lombok.Data;

@Data
public class KakaoLoginDTO {
    private Integer id;
    private String email;
    private String userPhoneNumber;
    private String userAddress;
    private String userDivision;
    private Integer genderId;
    private Integer ageId;
}
