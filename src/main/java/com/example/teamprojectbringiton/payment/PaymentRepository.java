package com.example.teamprojectbringiton.payment;

import com.example.teamprojectbringiton.payment.response.PaymentDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PaymentRepository {

    public void insert(Payment payment);

    public List<PaymentDTO> findByUserIdJoinPoint(Integer id);

}
