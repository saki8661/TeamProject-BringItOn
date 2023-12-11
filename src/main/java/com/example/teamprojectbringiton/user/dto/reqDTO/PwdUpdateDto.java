package com.example.teamprojectbringiton.user.dto.reqDTO;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PwdUpdateDto {
    private String newPassword;
    private String newPasswordCheck;

}
