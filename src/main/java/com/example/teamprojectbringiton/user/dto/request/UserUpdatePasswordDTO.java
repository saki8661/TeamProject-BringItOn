package com.example.teamprojectbringiton.user.dto.request;


import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
public class UserUpdatePasswordDTO {
    private String password;
    private String newPassword;
}
