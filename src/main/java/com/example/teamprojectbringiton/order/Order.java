package com.example.teamprojectbringiton.order;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Order {

    private Integer id;
    private Integer quantity;
    private Integer productId;
    private Integer userId;
    private Integer orderTotalPrice;
    private Timestamp createdAt;

    @Builder
    public Order(Integer id, Integer quantity, Integer productId, Integer userId, Integer orderTotalPrice, Timestamp createdAt){
        this.id = id;
        this.quantity = quantity;
        this.productId = productId;
        this.userId = userId;
        this.orderTotalPrice = orderTotalPrice;
        this.createdAt = createdAt;
    }
}
