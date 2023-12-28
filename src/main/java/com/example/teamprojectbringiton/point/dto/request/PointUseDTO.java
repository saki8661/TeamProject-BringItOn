package com.example.teamprojectbringiton.point.dto.request;

import com.example.teamprojectbringiton.pointHistory.PointHistory;
import lombok.Data;

@Data
public class PointUseDTO {
    private Integer id;
    private Integer nowPoint; // 업데이트 연산 값
    private Integer chargePoint;
    private Integer price; // 결제 금액
    private Integer point; // 내 포인트
    private Integer reservationId;

    public PointHistory toEntity() {
        return PointHistory.builder()
                .pointAmount(point)
                .usePoint(price)
                .chargePoint(chargePoint)
                .userId(id)
                .build();
    }
}
