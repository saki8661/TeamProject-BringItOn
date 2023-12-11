package com.example.teamprojectbringiton.pointUse;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class PointUse {
    private Integer id;
    private Integer paymentId;
    private Integer userId;

    @Builder
    public PointUse(Integer id, Integer paymentId, Integer userId) {
        this.id = id;
        this.paymentId = paymentId;
        this.userId = userId;
    }
}
