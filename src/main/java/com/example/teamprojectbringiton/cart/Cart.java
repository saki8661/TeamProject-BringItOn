package com.example.teamprojectbringiton.cart;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Getter
@NoArgsConstructor
public class Cart {
    private Integer id;
    private Integer quantity;
    private Integer productId;
    private Integer userId;
    private Integer cartTotalPrice;
    private Timestamp createdAt;

    @Builder
    public Cart(Integer id, Integer quantity, Integer productId, Integer userId, Integer cartTotalPrice, Timestamp createdAt) {
        this.id = id;
        this.quantity = quantity;
        this.productId = productId;
        this.userId = userId;
        this.cartTotalPrice = cartTotalPrice;
        this.createdAt = createdAt;
    }
}
