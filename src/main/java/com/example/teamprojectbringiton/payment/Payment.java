package com.example.teamprojectbringiton.payment;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Payment {
    private Integer id;
    private Integer price;
    private Timestamp createdAt;
    private Integer userId;

    @Builder
    public Payment(Integer id, Integer price, Timestamp createdAt, Integer userId) {
        this.id = id;
        this.price = price;
        this.createdAt = createdAt;
        this.userId = userId;
    }
}
