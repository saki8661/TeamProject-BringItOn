package com.example.teamprojectbringiton.age;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;


@Getter
@NoArgsConstructor
public class Age {
    private Integer id;
    private String age;

    @Builder
    public Age(Integer id, String age) {
        this.id = id;
        this.age = age;
    }
}
