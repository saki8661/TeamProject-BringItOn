package com.example.teamprojectbringiton.mail;

import com.example.teamprojectbringiton.mail.dto.request.EmailCheckDTO;
import com.example.teamprojectbringiton.mail.dto.request.EmailRequestDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MailController {

    @Autowired
    private MailService mailService;


    @PostMapping("/mailSend")
    public ResponseEntity<?> mailSend(@RequestBody EmailRequestDTO emailDto) {
        int emailCheck = mailService.emailCheck(emailDto.getEmail());
        System.out.println("체크 결과 : " + emailCheck);
        if (emailCheck == 1) {
            System.out.println("1이다 가보자");
            mailService.joinEmail(emailDto.getEmail());
            return ResponseEntity.ok("성공");
        } else {
            System.out.println("실패 반환 직전");
            // 실패할 경우 예외를 처리하고 클라이언트에게 실패 응답을 반환합니다.
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("사용중인 이메일입니다.");
        }


    }

    @PostMapping("/mailCheck")
    public ResponseEntity<?> mailCheck(@RequestBody EmailCheckDTO emailDto) {
        try {
            Boolean result = mailService.checkEmail(emailDto.getVerifyNumber());
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            // 실패할 경우 예외를 처리하고 클라이언트에게 실패 응답을 반환합니다.
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("인증번호 발송 실패");
        }
    }
}