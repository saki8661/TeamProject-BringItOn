package com.example.teamprojectbringiton.user;


import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

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
    private String companyName;
    private String AccountNumber;
    private String AccountName;
    private Integer teamId;
    private Integer bookmarkId;

    @Builder
    public User(Integer id, String username, String nickName, String password, String userEmail, String userAddress, String userPhoneNumber, String userPicUrl, String userDivision, String companyName, String accountNumber, String accountName, Integer teamId, Integer bookmarkId) {
        this.id = id;
        this.username = username;
        this.nickName = nickName;
        this.password = password;
        this.userEmail = userEmail;
        this.userAddress = userAddress;
        this.userPhoneNumber = userPhoneNumber;
        this.userPicUrl = userPicUrl;
        this.userDivision = userDivision;
        this.companyName = companyName;
        this.AccountNumber = accountNumber;
        this.AccountName = accountName;
        this.teamId = teamId;
        this.bookmarkId = bookmarkId;
    }
}