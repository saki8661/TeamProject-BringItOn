package com.example.teamprojectbringiton.user.dto.request;

import lombok.Data;

@Data
public class JoinDTO {
    private String username;
    private String password;
    private String userEmail;
    private String userPhoneNumber;
    private String userAddress;
    private String userDivision;

}
