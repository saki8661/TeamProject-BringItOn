package com.example.teamprojectbringiton.repository.entity;

import lombok.*;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class User {

    private Integer id;
    private String username;
    private String password;
}