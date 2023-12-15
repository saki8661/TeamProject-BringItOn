package com.example.teamprojectbringiton.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PaymentController {

    @GetMapping("/kakao-payment")
    public String kakaoPay(){
        return "/cancelRequest";
    }
//    @PostMapping
}
