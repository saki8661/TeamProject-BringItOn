package com.example.teamprojectbringiton.point;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Point {
    private Integer id;
    private Integer myPoint;
    private Timestamp createdAt;
    private Integer userId;

    @Builder
    public Point(Integer id, Integer myPoint, Timestamp createdAt, Integer userId) {
        this.id = id;
        this.myPoint = myPoint;
        this.createdAt = createdAt;
        this.userId = userId;
    }
}
