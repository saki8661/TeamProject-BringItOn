package com.example.teamprojectbringiton.gender;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Gender {
    private Integer id;
    private String gender;

    @Builder
    public Gender(Integer id, String gender) {
        this.id = id;
        this.gender = gender;
    }
}

