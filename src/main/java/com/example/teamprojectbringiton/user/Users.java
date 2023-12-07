package com.example.teamprojectbringiton.user;

import lombok.*;
@Getter
@NoArgsConstructor

public class Users {

    private Integer userId;
    private Integer teamId;
    private String username;
    private String password;
    private String userEmail;
    private String userAddress;
    private String userPhoneNumber;
    private boolean isAdmin;
    private Integer bookmarkId;


    @Builder
    public Users(Integer userId, Integer teamId, String username, String password, String userEmail, String userAddress, String userPhoneNumber,boolean isAdmin, Integer bookmarkId) {
        this.userId = userId;
        this.teamId = teamId;
        this.username = username;
        this.password = password;
        this.userEmail = userEmail;
        this.userAddress = userAddress;
        this.userPhoneNumber = userPhoneNumber;
        this.isAdmin = isAdmin;
        this.bookmarkId = bookmarkId;
    }

}