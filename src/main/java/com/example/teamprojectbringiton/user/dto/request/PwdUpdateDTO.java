package com.example.teamprojectbringiton.user.dto.request;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PwdUpdateDTO {
    private String newPassword;
    private String newPasswordCheck;

}
