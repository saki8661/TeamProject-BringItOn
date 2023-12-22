package com.example.teamprojectbringiton.FCM.dto;

import lombok.Builder;
import lombok.Data;

@Data
public class NotificationDTO {
    private String title;
    private String message;
    private String token;

    @Builder
    public NotificationDTO(String title, String message, String token) {
        this.title = title;
        this.message = message;
        this.token = token;
    }
}
