package com.example.teamprojectbringiton.point;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class PointHistory {

    private Integer id;
    private Integer pointAmount;
    private Integer chargePoint;
    private Integer usePoint;
    private Boolean refund;
    private Date refundDate;
    private Date createdAt;
    private Integer userId;

    @Builder
    public PointHistory(Integer id, Integer pointAmount, Integer chargePoint, Integer usePoint, Boolean refund, Date refundDate, Date createdAt, Integer userId) {
        this.id = id;
        this.pointAmount = pointAmount;
        this.chargePoint = chargePoint;
        this.pointAmount = pointAmount;
        this.usePoint = usePoint;
        this.refund = refund;
        this.refundDate = refundDate;
        this.createdAt = createdAt;
        this.userId = userId;
    }
}

