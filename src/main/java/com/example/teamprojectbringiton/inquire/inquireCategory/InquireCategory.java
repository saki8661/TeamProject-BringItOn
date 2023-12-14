package com.example.teamprojectbringiton.inquire.inquireCategory;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class InquireCategory {
    private Integer id;
    private String inquireCategory;

    @Builder
    public InquireCategory(Integer id, String inquireCategory) {
        this.id = id;
        this.inquireCategory = inquireCategory;
    }
}
