package com.example.teamprojectbringiton.spaceInquire;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class SpaceInquire {


    private Integer id;
    private String inquireType;
    private String inquireContent;
    private Integer inquireAnswer;
    private Timestamp createdAt;
    private Integer userId;
    private Integer sportId;

    @Builder
    public SpaceInquire(Integer id, String inquireType, String inquireContent, Integer inquireAnswer, Timestamp createdAt, Integer userId, Integer sportId) {
        this.id = id;
        this.inquireType = inquireType;
        this.inquireContent = inquireContent;
        this.inquireAnswer = inquireAnswer;
        this.createdAt = createdAt;
        this.userId = userId;
        this.sportId = sportId;

    }
}

