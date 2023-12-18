package com.example.teamprojectbringiton.user.dto.response;

import lombok.Builder;
import lombok.Data;

@Data
public class CheckPasswordDTO {
    private Integer userId;
    private Boolean success;

    @Builder
    public CheckPasswordDTO(Integer userId, Boolean success) {
        this.userId = userId;
        this.success = success;
    }
}

