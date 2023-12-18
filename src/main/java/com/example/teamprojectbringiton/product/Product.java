package com.example.teamprojectbringiton.product;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class Product {
    private Integer id;
    private String productName;
    private String productPic;
    private Integer productPrice;
    private Integer productCategoryId;
    private Integer createdAt;

    @Builder
    public Product(Integer id, String productName, String productPic, Integer productPrice, Integer productCategoryId, Integer createdAt) {
        this.id = id;
        this.productName = productName;
        this.productPic = productPic;
        this.productPrice = productPrice;
        this.productCategoryId = productCategoryId;
        this.createdAt = createdAt;
    }

}
