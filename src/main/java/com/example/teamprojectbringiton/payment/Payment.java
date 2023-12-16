package com.example.teamprojectbringiton.payment;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Payment {
    private Integer id;
    private Integer amount;
    private String paymentNumber;
    private Boolean isCharge;
    private Timestamp createdAt;
    private Integer userId;

    @Builder
    public Payment(Integer id, Integer amount, String paymentNumber, Boolean isCharge, Timestamp createdAt, Integer userId) {
        this.id = id;
        this.amount = amount;
        this.paymentNumber = paymentNumber;
        this.isCharge = isCharge;
        this.createdAt = createdAt;
        this.userId = userId;
    }
}
