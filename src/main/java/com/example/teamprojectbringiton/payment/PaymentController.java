package com.example.teamprojectbringiton.payment;

import com.example.teamprojectbringiton.user.User;
import com.example.teamprojectbringiton.user.dto.response.UserPointDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    @Autowired
    private HttpSession session;

//
    @GetMapping("/test")
    public String paymentWrite(){

        UserPointDTO userPoint = (UserPointDTO) session.getAttribute("userPoint");
        System.out.println(">>>>>>>>>>>>>>>>>>"+userPoint.getId());

        return "HELLO";
    }
}
