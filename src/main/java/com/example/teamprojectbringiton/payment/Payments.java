package com.example.teamprojectbringiton.payment;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Payments {
    private Integer paymentId;
    private Integer chargeId;
    private Integer price;
    private Date createdAt;
    private boolean refund;
    private Date refundDate;
    private Integer userId;
}
