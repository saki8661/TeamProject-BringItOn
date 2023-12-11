package com.example.teamprojectbringiton.answer;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Answer {
    private Integer id;
    private String answerContent;
    private Timestamp createdAt;
    private Integer inquireId;

    @Builder
    public Answer(Integer id, String answerContent, Timestamp createdAt, Integer inquireId) {
        this.id = id;
        this.answerContent = answerContent;
        this.createdAt = createdAt;
        this.inquireId = inquireId;
    }
}
