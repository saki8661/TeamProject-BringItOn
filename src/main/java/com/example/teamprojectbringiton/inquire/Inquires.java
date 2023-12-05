package com.example.teamprojectbringiton.inquire;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Inquires {
    private Integer inquireId;
    private String inquireTitle;
    private String inquireContent;
    private Integer userId;
}
