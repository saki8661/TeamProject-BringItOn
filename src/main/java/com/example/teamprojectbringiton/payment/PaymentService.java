package com.example.teamprojectbringiton.payment;

import com.example.teamprojectbringiton.payment.response.PaymentDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PaymentService {

    @Autowired
    private PaymentRepository paymentRepository;

    @Transactional
    public void paymentWrite(Payment payment) {
        paymentRepository.insert(payment);
    }

    public List<PaymentDTO> findByUserIdJoinPoint(Integer id) {
        return paymentRepository.findByUserIdJoinPoint(id);
    }
}
