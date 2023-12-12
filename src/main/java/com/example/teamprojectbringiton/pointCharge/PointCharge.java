package com.example.teamprojectbringiton.pointCharge;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class PointCharge {

    private Integer id;
    private Integer paymentPoint;
    private Integer presentPoint;
    private boolean refund;
    private Timestamp refundDate;
    private Timestamp createdAt;
    private Integer userId;

    @Builder
    public PointCharge(Integer id, Integer paymentPoint, Integer presentPoint, boolean refund, Timestamp refundDate, Timestamp createdAt, Integer userId) {
        this.id = id;
        this.paymentPoint = paymentPoint;
        this.presentPoint = presentPoint;
        this.refund = refund;
        this.refundDate = refundDate;
        this.createdAt = createdAt;
        this.userId = userId;
    }
}
