package com.example.teamprojectbringiton.option;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Option {
    private Integer id;
    private String optionName;

    @Builder
    public Option(Integer id, String optionName) {
        this.id = id;
        this.optionName = optionName;
    }
}
