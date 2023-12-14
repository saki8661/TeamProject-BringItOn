package com.example.teamprojectbringiton.user.dto.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor

public class JoinDTO {
    private String username;
    private String password;
    private String userEmail;
    private String userPhoneNumber;
    private String userAddress;
    private String userDivision;

}
