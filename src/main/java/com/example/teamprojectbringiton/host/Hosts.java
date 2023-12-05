package com.example.teamprojectbringiton.host;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Time;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Hosts {
    private Integer hostId;
    private String hostName;
    private String companyName;
    private String password;
    private String hostEmail;
    private String hostPhoneNumber;
    private String introduce;
    private String hostPic;
    private String hostAddress;
    private Time bizStartTime;
    private Time bizEndTime;
    private String accoutPic;
    private Integer bankId;
    private String accountNumber;
    private String accountHolder;
}
