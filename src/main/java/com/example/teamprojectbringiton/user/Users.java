package com.example.teamprojectbringiton.user;

import lombok.*;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Users {

    private Integer userId;
    private Integer teamId;
    private String username;
    private String password;
    private String userEmail;
    private String userAddress;
    private String userPhoneNumber;
    private Integer bookmarkId;


}