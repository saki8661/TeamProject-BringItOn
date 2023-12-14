package com.example.teamprojectbringiton.user.dto.response;

import lombok.Data;

@Data
public class CheckPasswordDTO {
    private Integer userId;
    private Boolean success;
}

