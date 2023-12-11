package com.example.teamprojectbringiton.result;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Result {
    private Integer id;
    private String resultName;

    @Builder
    public Result(Integer id, String resultName) {
        this.id = id;
        this.resultName = resultName;
    }
}
