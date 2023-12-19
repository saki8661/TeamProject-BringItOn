package com.example.teamprojectbringiton.payment.response;

import lombok.Data;

@Data
public class PaymentDTO {
    private Integer id;
    private Integer amount;
    private Integer pointId;
    private Integer myPoint;
    private Integer userId;

}
